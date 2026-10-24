# piCongrRight_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "edc234877d46215795be0c391286cefce684913f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 579,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/88/884d07a454e2b4efcb8e347a0a8295f7a62a4be1e25cfc641f61940f8bfd10e0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:70d9c0c3-5cbb-eff8-b149-71b5b5f8055d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:06736287-8cf9-27c7-2e90-43b0d6cec4fc",
  "kind": "theorem",
  "lexical_name": "piCongrRight_symm",
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
  "slug": "picongrright-symm--4fc2e6d986f52ff7bab869af",
  "source": {
    "blob": "edc234877d46215795be0c391286cefce684913f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 586,
    "line": 579,
    "path": "GRWTSK/Topology/GeneralTopology/Homeomorph/Variant884d07a454e2b4efcb8e347a0a8295f7a62a4be1e25cfc641f61940f8bfd10e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4fc2e6d986f52ff7bab869af09f011fd81664337a1bfa5ab680ad8ca213a4230",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Homeomorph/Variant884d07a454e2b4efcb8e347a0a8295f7a62a4be1e25cfc641f61940f8bfd10e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06736287-8cf9-27c7-2e90-43b0d6cec4fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 579–586.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem piCongrRight_symm {ι : Type*} {β₁ β₂ : ι → Type*} [∀ i, TopologicalSpace (β₁ i)]
    [∀ i, TopologicalSpace (β₂ i)] (F : ∀ i, β₁ i ≃ₜ β₂ i) :
    (piCongrRight F).symm = piCongrRight fun i => (F i).symm :=
  rfl
#align homeomorph.Pi_congr_right_symm Homeomorph.piCongrRight_symm

-- porting note: TODO: align the order of universes with `Equiv.ulift`
/-- `ULift α` is homeomorphic to `α`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Homeomorph/Variant884d07a454e2b4efcb8e347a0a8295f7a62a4be1e25cfc641f61940f8bfd10e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Homeomorph/Variant884d07a454e2b4efcb8e347a0a8295f7a62a4be1e25cfc641f61940f8bfd10e0.lean#L579).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edc234877d46215795be0c391286cefce684913f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
