# derive_previous_producer_correspondence

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
      "line": 663,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/systems/taxonomy/integration/formal/lean/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CertificateOrchestration/Basic.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d683943f-c29a-7065-e741-40619d646b85",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1b29546c-eb0f-64ac-6c0c-ce1a8c0d385a",
  "kind": "theorem",
  "lexical_name": "derive_previous_producer_correspondence",
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
  "slug": "derive-previous-producer-correspondence--fbf9d7b309244e7b3a7eb7a2",
  "source": {
    "blob": "1c4dae22b6821a3596b1370d4c27741bafcf6b36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 685,
    "line": 663,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variant9b1a88f8bbb366310ed08fcca90de468a26b21f45a29666959f1142eea881da8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbf9d7b309244e7b3a7eb7a2005dcfc1f4a37557759daee91279d6a3cdd606e1",
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

Occurrence: `result:1b29546c-eb0f-64ac-6c0c-ce1a8c0d385a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 663–685.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem derive_previous_producer_correspondence {planLabel : String} {objects : List Bytes}
    {sets : List ReadSet} {raw : List RawRoute} {prepared : List Binding} {placeholders : List String}
    {empty : Nat} {ordered : List (TargetKey × Nat)} {certificate : Certificate}
    (produced : derive planLabel objects sets raw prepared placeholders empty ordered = some certificate) :
    ∃ previous,
      produce objects sets raw prepared placeholders empty = some previous ∧
      previous.occurrences = certificate.result.occurrences ∧
      (∀ row, row ∈ previous.outputs ↔ row ∈ certificate.result.outputs) := by
  obtain ⟨gate, _, _, result, _, _, _, _, rendered, same⟩ := (derive_spec _ _ _ _ _ _ _ _ _).mp produced
  have occurrences := derive_exact_occurrences produced
  obtain ⟨merged, step, _, inventory⟩ := derive_merge_correspondence produced
  have renderedCurrent : (renderOutputs objects certificate.result.outputs).isSome = true := by
    simpa [same] using rendered
  obtain ⟨currentRendered, exactRendered⟩ := Option.isSome_iff_exists.mp renderedCurrent
  obtain ⟨previousRendered, exactPrevious⟩ := renderOutputs_total objects merged (by
    intro row member
    exact renderOutputs_member_literal exactRendered row ((inventory row).mpr member))
  refine ⟨⟨certificate.result.occurrences, merged⟩, ?_, rfl, ?_⟩
  · apply (produce_spec _ _ _ _ _ _ _).mpr
    exact ⟨gate, occurrences, step, by simp [exactPrevious]⟩
  · intro row
    exact (inventory row).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variant9b1a88f8bbb366310ed08fcca90de468a26b21f45a29666959f1142eea881da8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variant9b1a88f8bbb366310ed08fcca90de468a26b21f45a29666959f1142eea881da8.lean#L663).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c4dae22b6821a3596b1370d4c27741bafcf6b36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
