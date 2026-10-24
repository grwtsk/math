# comap_ker_eq_sup_of_ker_eq_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1c67e5e7f4f33b70dbe4a6266d06d422adf7d3a4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 63,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a1/a170332c0228f2de4d82e968cf32b8f3c4768d94cc7fb0a7d23b25c8616eb600.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f112cd7f-ecdd-e981-4c96-098086813330",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:37348c2b-06df-8b25-a8aa-2b8a78fa9f05",
  "kind": "lemma",
  "lexical_name": "comap_ker_eq_sup_of_ker_eq_map",
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
  "slug": "comap-ker-eq-sup-of-ker-eq-map--4eb866a33eb73d991af6536e",
  "source": {
    "blob": "1c67e5e7f4f33b70dbe4a6266d06d422adf7d3a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 63,
    "path": "GRWTSK/Algebra/LinearAlgebra/Quotient/Varianta170332c0228f2de4d82e968cf32b8f3c4768d94cc7fb0a7d23b25c8616eb600.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4eb866a33eb73d991af6536e405a9eb79cf6e81da1c1d199732d629369e13d34",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Quotient/Varianta170332c0228f2de4d82e968cf32b8f3c4768d94cc7fb0a7d23b25c8616eb600.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37348c2b-06df-8b25-a8aa-2b8a78fa9f05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma comap_ker_eq_sup_of_ker_eq_map (surjRS : Function.Surjective (algebraMap R S))
    (eqmap : RingHom.ker (algebraMap S S') = (RingHom.ker (algebraMap R R')).map (algebraMap R S)) :
    (RingHom.ker (algebraMap R' S')).comap (algebraMap R R') =
      RingHom.ker (algebraMap R R') ⊔ RingHom.ker (algebraMap R S) := by
  rw [RingHom.comap_ker, ← IsScalarTower.algebraMap_eq, IsScalarTower.algebraMap_eq _ S,
      ← RingHom.comap_ker]
  simp [eqmap, Ideal.comap_map_of_surjective' _ surjRS]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Quotient/Varianta170332c0228f2de4d82e968cf32b8f3c4768d94cc7fb0a7d23b25c8616eb600.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Quotient/Varianta170332c0228f2de4d82e968cf32b8f3c4768d94cc7fb0a7d23b25c8616eb600.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c67e5e7f4f33b70dbe4a6266d06d422adf7d3a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
