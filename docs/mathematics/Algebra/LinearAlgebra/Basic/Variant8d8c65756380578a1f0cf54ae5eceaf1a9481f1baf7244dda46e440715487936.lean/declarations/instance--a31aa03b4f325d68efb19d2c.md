# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:71050c54e759a98e52e6c8306a89b41835ddcac850e308dbb8433dcbf586479a",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--a31aa03b4f325d68efb19d2c",
  "source": {
    "blob": "28adefd6ef763d3d70cb98e21ded7d0614d3d4a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 903,
    "line": 895,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant8d8c65756380578a1f0cf54ae5eceaf1a9481f1baf7244dda46e440715487936.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a31aa03b4f325d68efb19d2cb02adb12dd4c1465de49ec8854f0c929b59342e8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant8d8c65756380578a1f0cf54ae5eceaf1a9481f1baf7244dda46e440715487936.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:71050c54e759a98e52e6c8306a89b41835ddcac850e308dbb8433dcbf586479a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 895–903.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : Module R (M →ₗ⁅R,L⁆ N) :=
  Function.Injective.module R
    { toFun := fun f => f.toLinearMap.toFun, map_zero' := rfl, map_add' := coe_add }
    coe_injective coe_smul

end LieModuleHom

/-- An equivalence of Lie algebra modules (denoted as `M ≃ₗ⁅R,L⁆ N`) is a linear equivalence
which is also a morphism of Lie algebra modules. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant8d8c65756380578a1f0cf54ae5eceaf1a9481f1baf7244dda46e440715487936.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant8d8c65756380578a1f0cf54ae5eceaf1a9481f1baf7244dda46e440715487936.lean#L895).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28adefd6ef763d3d70cb98e21ded7d0614d3d4a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
