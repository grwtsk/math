# _root_.GRWTSK.Algebra.LinearAlgebra.RootModuleBasisExteriorPower.Variant0f4126e8eef8d55f0d11a4d0cb0a6fda09f4f901a04984ad10bf00a0a73c3d01.Module.Basis.exteriorPower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6220fcae52f12f2393643376af4ce1439c03295c19c20882b40c8fa0b2b9fe96",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.RootModuleBasisExteriorPower.Variant0f4126e8eef8d55f0d11a4d0cb0a6fda09f4f901a04984ad10bf00a0a73c3d01.Module.Basis.exteriorPower",
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
  "slug": "root-grwtsk-algebra-linearalgebra-rootmodulebasisexteriorpower-variant0f--25e8c383d8743cd064d321a3",
  "source": {
    "blob": "444a8fe51619ea950069990bc9554b09d8beccea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 104,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variant743b9b1f91e46992d58906a8e0fdd75359a66e0014c293f3249935008bca66fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:25e8c383d8743cd064d321a392dfe6aa6f466d9d5f7789206e63851a42f9212a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basis/Variant743b9b1f91e46992d58906a8e0fdd75359a66e0014c293f3249935008bca66fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6220fcae52f12f2393643376af4ce1439c03295c19c20882b40c8fa0b2b9fe96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def _root_.GRWTSK.Algebra.LinearAlgebra.RootModuleBasisExteriorPower.Variant0f4126e8eef8d55f0d11a4d0cb0a6fda09f4f901a04984ad10bf00a0a73c3d01.Module.Basis.exteriorPower :
    Basis (powersetCard I n) R (⋀[R]^n M) :=
  Basis.mk (ιMulti_family_linearIndependent_ofBasis _ _ _)
    (eq_top_iff.mp <| ιMulti_family_span_of_span R b.span_eq)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basis/Variant743b9b1f91e46992d58906a8e0fdd75359a66e0014c293f3249935008bca66fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basis/Variant743b9b1f91e46992d58906a8e0fdd75359a66e0014c293f3249935008bca66fb.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `444a8fe51619ea950069990bc9554b09d8beccea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
