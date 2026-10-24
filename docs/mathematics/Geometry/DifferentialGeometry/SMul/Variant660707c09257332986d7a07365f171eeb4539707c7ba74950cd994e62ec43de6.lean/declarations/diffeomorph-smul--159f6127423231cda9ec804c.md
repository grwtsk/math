# Diffeomorph.smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:175412504f4b98fbfac12f42094389ce470b64104140cd55d23d87dbad446fcb",
  "kind": "def",
  "lexical_name": "Diffeomorph.smul",
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
  "slug": "diffeomorph-smul--159f6127423231cda9ec804c",
  "source": {
    "blob": "133c52bfb2ea666e9e74295e250a0d59ed1ff523",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 350,
    "line": 345,
    "path": "GRWTSK/Geometry/DifferentialGeometry/SMul/Variant660707c09257332986d7a07365f171eeb4539707c7ba74950cd994e62ec43de6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:159f6127423231cda9ec804c95d8163685a1a3cfec3f09b02c44a33df804c991",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/SMul/Variant660707c09257332986d7a07365f171eeb4539707c7ba74950cd994e62ec43de6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:175412504f4b98fbfac12f42094389ce470b64104140cd55d23d87dbad446fcb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 345–350.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Diffeomorph.smul : M ≃ₘ^n⟮I', I'⟯ M where
  toEquiv := MulAction.toPerm g
  contMDiff_toFun := ContMDiffSMul.contMDiff_const_smul (I := I) g
  contMDiff_invFun := ContMDiffSMul.contMDiff_const_smul (I := I) g⁻¹

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/SMul/Variant660707c09257332986d7a07365f171eeb4539707c7ba74950cd994e62ec43de6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/SMul/Variant660707c09257332986d7a07365f171eeb4539707c7ba74950cd994e62ec43de6.lean#L345).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `133c52bfb2ea666e9e74295e250a0d59ed1ff523` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
