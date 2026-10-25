# IsQF.realize_embedding

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
      "line": 378,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a0/a02b3d1ba7a53aa252a8eec29e9aa3c8f2afbb2cb80d569e0c31ab753a98f374.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:181dacd7-df04-b7c1-839b-8d3dcae21bfe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:801bf5ae-9874-68f6-651b-c4ad329e1c0b",
  "kind": "lemma",
  "lexical_name": "IsQF.realize_embedding",
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
  "slug": "isqf-realize-embedding--461996b56824a42c90deb933",
  "source": {
    "blob": "62f8eeaf73a9447e5bbad263e122674ff0708128",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 390,
    "line": 378,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Complexity/Varianta02b3d1ba7a53aa252a8eec29e9aa3c8f2afbb2cb80d569e0c31ab753a98f374.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:461996b56824a42c90deb9337304a12ad501a74d8321a5c1ddf5d0ed4627ff6d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Complexity/Varianta02b3d1ba7a53aa252a8eec29e9aa3c8f2afbb2cb80d569e0c31ab753a98f374.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:801bf5ae-9874-68f6-651b-c4ad329e1c0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 378–390.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsQF.realize_embedding {φ : L.BoundedFormula α n} (hQF : φ.IsQF)
    (f : F) {v : α → M} {xs : Fin n → M} :
    φ.Realize (f ∘ v) (f ∘ xs) ↔ φ.Realize v xs := by
  induction hQF with
  | falsum => rfl
  | of_isAtomic hA => induction hA with
    | equal t₁ t₂ => simp only [realize_bdEqual, ← Sum.comp_elim, HomClass.realize_term,
        (EmbeddingLike.injective f).eq_iff]
    | rel R ts =>
      simp only [realize_rel, ← Sum.comp_elim, HomClass.realize_term]
      exact StrongHomClass.map_rel f R (fun i => Term.realize (Sum.elim v xs) (ts i))
  | imp _ _ ihφ ihψ => simp only [realize_imp, ihφ, ihψ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Complexity/Varianta02b3d1ba7a53aa252a8eec29e9aa3c8f2afbb2cb80d569e0c31ab753a98f374.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Complexity/Varianta02b3d1ba7a53aa252a8eec29e9aa3c8f2afbb2cb80d569e0c31ab753a98f374.lean#L378).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62f8eeaf73a9447e5bbad263e122674ff0708128` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
