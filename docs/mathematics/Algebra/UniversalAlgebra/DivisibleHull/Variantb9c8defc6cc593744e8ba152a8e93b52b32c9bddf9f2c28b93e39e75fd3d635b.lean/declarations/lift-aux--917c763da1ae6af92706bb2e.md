# lift_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:09307894-6010-4ca1-debf-079c26dc3ace",
  "kind": "theorem",
  "lexical_name": "lift_aux",
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
  "slug": "lift-aux--917c763da1ae6af92706bb2e",
  "source": {
    "blob": "d1a386df11ae7fb1a05eeff62d88845871384cf6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 262,
    "path": "GRWTSK/Algebra/UniversalAlgebra/DivisibleHull/Variantb9c8defc6cc593744e8ba152a8e93b52b32c9bddf9f2c28b93e39e75fd3d635b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:917c763da1ae6af92706bb2e45572df8f56b5d4456d3087ae646f393ba3cc0f2",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/DivisibleHull/Variantb9c8defc6cc593744e8ba152a8e93b52b32c9bddf9f2c28b93e39e75fd3d635b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09307894-6010-4ca1-debf-079c26dc3ace`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem lift_aux (m n m' n' : M) (s t s' t' : ℕ+)
    (h : mk m s = mk m' s') (h' : mk n t = mk n' t') :
    (t.val • m ≤ s.val • n) = (t'.val • m' ≤ s'.val • n') := by
  rw [mk_eq_mk_iff_smul_eq_smul] at h h'
  rw [propext_iff, ← nsmul_le_nsmul_iff_right (mul_ne_zero s'.ne_zero t'.ne_zero)]
  convert! (nsmul_le_nsmul_iff_right (M := M) (mul_ne_zero s.ne_zero t.ne_zero)) using 2
  · simp_rw [smul_smul, mul_rotate s'.val, ← smul_smul, h, smul_smul]
    ring_nf
  · simp_rw [smul_smul, ← mul_rotate s'.val, ← smul_smul, ← h', smul_smul]
    ring_nf

set_option backward.privateInPublic true in
set_option backward.privateInPublic.warn false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/DivisibleHull/Variantb9c8defc6cc593744e8ba152a8e93b52b32c9bddf9f2c28b93e39e75fd3d635b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/DivisibleHull/Variantb9c8defc6cc593744e8ba152a8e93b52b32c9bddf9f2c28b93e39e75fd3d635b.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1a386df11ae7fb1a05eeff62d88845871384cf6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
