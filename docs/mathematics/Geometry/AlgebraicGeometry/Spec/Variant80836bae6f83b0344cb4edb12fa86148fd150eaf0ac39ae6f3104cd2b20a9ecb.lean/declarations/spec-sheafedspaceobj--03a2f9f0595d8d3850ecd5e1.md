# Spec.sheafedSpaceObj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:92adafa38dd7b7124ff7cb70201be65a6bbb622001023a2a79d8be423c7b62c3",
  "kind": "def",
  "lexical_name": "Spec.sheafedSpaceObj",
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
  "slug": "spec-sheafedspaceobj--03a2f9f0595d8d3850ecd5e1",
  "source": {
    "blob": "4d8023ddae09cd7bb7e908b9b65af9a818c1ee75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 102,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Spec/Variant80836bae6f83b0344cb4edb12fa86148fd150eaf0ac39ae6f3104cd2b20a9ecb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:03a2f9f0595d8d3850ecd5e163dd4d4fc2caf8579af94780cc5e219712757aad",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Spec/Variant80836bae6f83b0344cb4edb12fa86148fd150eaf0ac39ae6f3104cd2b20a9ecb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:92adafa38dd7b7124ff7cb70201be65a6bbb622001023a2a79d8be423c7b62c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Spec.sheafedSpaceObj (R : CommRingCat) : SheafedSpace CommRingCat where
  carrier := Spec.topObj R
  presheaf := (structureSheaf R).1
  IsSheaf := (structureSheaf R).2
set_option linter.uppercaseLean3 false in
#align algebraic_geometry.Spec.SheafedSpace_obj AlgebraicGeometry.Spec.sheafedSpaceObj

/-- The induced map of a ring homomorphism on the ring spectra, as a morphism of sheafed spaces.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Spec/Variant80836bae6f83b0344cb4edb12fa86148fd150eaf0ac39ae6f3104cd2b20a9ecb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Spec/Variant80836bae6f83b0344cb4edb12fa86148fd150eaf0ac39ae6f3104cd2b20a9ecb.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d8023ddae09cd7bb7e908b9b65af9a818c1ee75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
