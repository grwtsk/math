# realize_toPrenex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "62f8eeaf73a9447e5bbad263e122674ff0708128",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 265,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a0/a02b3d1ba7a53aa252a8eec29e9aa3c8f2afbb2cb80d569e0c31ab753a98f374.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:09b091c7-51c7-c48d-ba39-29ce2e947fc4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:872f88c4-118e-7fba-dd00-ea054d88f16f",
  "kind": "theorem",
  "lexical_name": "realize_toPrenex",
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
  "slug": "realize-toprenex--77b50686bcf6c5dac4d535ec",
  "source": {
    "blob": "62f8eeaf73a9447e5bbad263e122674ff0708128",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 265,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Complexity/Varianta02b3d1ba7a53aa252a8eec29e9aa3c8f2afbb2cb80d569e0c31ab753a98f374.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77b50686bcf6c5dac4d535eca47828fc2ac4e0e6ebfb1c3b1797e8d6d50a595b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Complexity/Varianta02b3d1ba7a53aa252a8eec29e9aa3c8f2afbb2cb80d569e0c31ab753a98f374.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:872f88c4-118e-7fba-dd00-ea054d88f16f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem realize_toPrenex (φ : L.BoundedFormula α n) {v : α → M} :
    ∀ {xs : Fin n → M}, φ.toPrenex.Realize v xs ↔ φ.Realize v xs := by
  induction φ with
  | falsum => exact Iff.rfl
  | equal => exact Iff.rfl
  | rel => exact Iff.rfl
  | imp f1 f2 h1 h2 =>
    intros
    rw [toPrenex, realize_toPrenexImp f1.toPrenex_isPrenex f2.toPrenex_isPrenex, realize_imp,
      realize_imp, h1, h2]
  | all _ h =>
    intros
    rw [realize_all, toPrenex, realize_all]
    exact forall_congr' fun a => h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Complexity/Varianta02b3d1ba7a53aa252a8eec29e9aa3c8f2afbb2cb80d569e0c31ab753a98f374.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Complexity/Varianta02b3d1ba7a53aa252a8eec29e9aa3c8f2afbb2cb80d569e0c31ab753a98f374.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62f8eeaf73a9447e5bbad263e122674ff0708128` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
