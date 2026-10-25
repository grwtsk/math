# insert_preserves_typed_alignment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1c4dae22b6821a3596b1370d4c27741bafcf6b36",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 155,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/systems/taxonomy/integration/formal/lean/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CertificateOrchestration/Basic.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:10042565-7c4d-c582-a5bd-8315b196c57b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fa529d32-f2b4-fd5d-7e11-234e2a12eadd",
  "kind": "theorem",
  "lexical_name": "insert_preserves_typed_alignment",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "insert-preserves-typed-alignment--7eaeb26ee43f9f48a4dcedb7",
  "source": {
    "blob": "1c4dae22b6821a3596b1370d4c27741bafcf6b36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 155,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variant9b1a88f8bbb366310ed08fcca90de468a26b21f45a29666959f1142eea881da8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7eaeb26ee43f9f48a4dcedb7032c89efa78ad48ee03e9785dd5d4e725c3aa756",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variant9b1a88f8bbb366310ed08fcca90de468a26b21f45a29666959f1142eea881da8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa529d32-f2b4-fd5d-7e11-234e2a12eadd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem insert_preserves_typed_alignment {state next : Outputs} {key : TargetKey} {object : Nat}
    {metadata : Option Occurrence} (aligned : TypedAligned state)
    (step : insert state key object metadata = some next) : TypedAligned next := by
  obtain ⟨matching, targets, slot, changed, rfl⟩ := (insert_spec _ _ _ _ _).mp step
  have oldRows : state.lowered.routes.Forall₂ (TypedRow targets) state.lowered.metadata := by
    apply List.Forall₂.imp _ aligned
    intro route entry valid
    cases entry with
    | none => trivial
    | some value =>
        exact ⟨valid.1, targetInsert_stable_slots changed _ _ _ valid.2⟩
  have newRow : TypedRow targets ⟨slot, object, metadata.isSome⟩ metadata := by
    cases metadata with
    | none => trivial
    | some entry =>
        simp only [metadataMatches, decide_eq_true_eq] at matching
        constructor
        · exact matching.2.symm
        · simpa [matching.1, matching.2] using targetInsert_lookup changed
  change (state.lowered.routes ++ [(⟨slot, object, metadata.isSome⟩ : Route)]).Forall₂
    (TypedRow targets) (state.lowered.metadata ++ [metadata])
  have extend : ∀ {routes metadataRows}, routes.Forall₂ (TypedRow targets) metadataRows →
      (routes ++ [(⟨slot, object, metadata.isSome⟩ : Route)]).Forall₂ (TypedRow targets)
        (metadataRows ++ [metadata]) := by
    intro routes metadataRows before
    induction before with
    | nil => exact .cons newRow .nil
    | cons before rest ih => exact .cons before ih
  exact extend oldRows

/-- The adapter returns no replacement state on an error. A retained caller
state is therefore exactly its preimage, including both parallel vectors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variant9b1a88f8bbb366310ed08fcca90de468a26b21f45a29666959f1142eea881da8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variant9b1a88f8bbb366310ed08fcca90de468a26b21f45a29666959f1142eea881da8.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c4dae22b6821a3596b1370d4c27741bafcf6b36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
