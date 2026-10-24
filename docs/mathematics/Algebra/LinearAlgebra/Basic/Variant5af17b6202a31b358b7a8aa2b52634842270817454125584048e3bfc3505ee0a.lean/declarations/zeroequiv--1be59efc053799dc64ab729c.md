# zeroEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d7e0331393b515d32ad80c80dfb86ad6e4d1e5610cad57be49b672e55053e2f6",
  "kind": "def",
  "lexical_name": "zeroEquiv",
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
  "slug": "zeroequiv--1be59efc053799dc64ab729c",
  "source": {
    "blob": "6b8327ebbb02692528b61993d2402682d51746aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 441,
    "line": 434,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1be59efc053799dc64ab729ceaa6e8453955590d008602a4039e1fcf7d8cf491",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d7e0331393b515d32ad80c80dfb86ad6e4d1e5610cad57be49b672e55053e2f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 434–441.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def zeroEquiv : ⋀[R]^0 M ≃ₗ[R] R :=
  .ofLinearMap (alternatingMapLinearEquiv (AlternatingMap.constOfIsEmpty R _ _ 1))
    { toFun := fun r ↦ r • (ιMulti _ _ (by rintro ⟨i, hi⟩; simp at hi))
      map_add' := by intros; simp only [add_smul]
      map_smul' := by intros; simp only [smul_eq_mul, mul_smul, RingHom.id_apply] }
    (by aesop) (by aesop)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean#L434).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b8327ebbb02692528b61993d2402682d51746aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
