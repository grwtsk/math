# not_ker_le_map_C_of_surjective_of_quasiFiniteAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "683af8f6adf09d36ea9b7680a2d6aa662c88291a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 90,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/13669c5cae328b0278446b817c8d2900ec09fa59e6d0daa55afbb0db9de0696c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e6c8e949-2993-2102-122b-5136af311fe1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ef3d9050-05ce-4cd2-d2fe-f83afe3e92ed",
  "kind": "lemma",
  "lexical_name": "not_ker_le_map_C_of_surjective_of_quasiFiniteAt",
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
  "slug": "not-ker-le-map-c-of-surjective-of-quasifiniteat--72750ea70355575477426990",
  "source": {
    "blob": "683af8f6adf09d36ea9b7680a2d6aa662c88291a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 90,
    "path": "GRWTSK/Algebra/Polynomial/Variant13669c5cae328b0278446b817c8d2900ec09fa59e6d0daa55afbb0db9de0696c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72750ea703555754774269909abda3c5f8db3f5dbe4b1c45422cfa8fd1847abd",
  "verification": {
    "reference": "docs/verification/Algebra/Polynomial/Variant13669c5cae328b0278446b817c8d2900ec09fa59e6d0daa55afbb0db9de0696c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef3d9050-05ce-4cd2-d2fe-f83afe3e92ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma not_ker_le_map_C_of_surjective_of_quasiFiniteAt
    (f : R[X] →ₐ[R] S) (hf : Function.Surjective f)
    (P : Ideal S) [P.IsPrime] [Algebra.QuasiFiniteAt R P] :
    ¬ RingHom.ker f ≤ (P.under R).map C :=
  not_ker_le_map_C_of_surjective_of_weaklyQuasiFiniteAt f hf P

end Polynomial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Polynomial/Variant13669c5cae328b0278446b817c8d2900ec09fa59e6d0daa55afbb0db9de0696c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Polynomial/Variant13669c5cae328b0278446b817c8d2900ec09fa59e6d0daa55afbb0db9de0696c.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `683af8f6adf09d36ea9b7680a2d6aa662c88291a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
