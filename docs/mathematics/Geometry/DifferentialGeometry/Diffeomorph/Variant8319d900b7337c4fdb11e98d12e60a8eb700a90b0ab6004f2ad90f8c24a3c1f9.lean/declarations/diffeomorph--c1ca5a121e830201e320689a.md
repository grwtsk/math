# Diffeomorph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4975e541f4c6f73fba938ec53eb05a94f79122cf4442e78c43a4c52331da974f",
  "kind": "structure",
  "lexical_name": "Diffeomorph",
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
  "slug": "diffeomorph--c1ca5a121e830201e320689a",
  "source": {
    "blob": "e6bff92c7d5200919e5eff534b1098eced622e85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 90,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Diffeomorph/Variant8319d900b7337c4fdb11e98d12e60a8eb700a90b0ab6004f2ad90f8c24a3c1f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c1ca5a121e830201e320689a650b5700d7c665402f7e8afff17a34f976cfdbf7",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Diffeomorph/Variant8319d900b7337c4fdb11e98d12e60a8eb700a90b0ab6004f2ad90f8c24a3c1f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4975e541f4c6f73fba938ec53eb05a94f79122cf4442e78c43a4c52331da974f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Diffeomorph extends M ≃ M' where
  protected contMDiff_toFun : CMDiff n toEquiv
  protected contMDiff_invFun : CMDiff n toEquiv.symm


end Defs

@[inherit_doc]
scoped[Manifold] notation M " ≃ₘ^" n:1000 "⟮" I ", " J "⟯ " N => Diffeomorph I J M N n

/-- Infinitely differentiable diffeomorphism between `M` and `M'` with respect to `I` and `I'`. -/
scoped[Manifold] notation M " ≃ₘ⟮" I ", " J "⟯ " N => Diffeomorph I J M N ∞

-- Porting note: this notation is broken because `n[𝕜]` gets parsed as `getElem`
/-- `n`-times continuously differentiable diffeomorphism between `E` and `E'`. -/
scoped[Manifold] notation E " ≃ₘ^" n:1000 "[" 𝕜 "] " E' => Diffeomorph 𝓘(𝕜, E) 𝓘(𝕜, E') E E' n

/-- Infinitely differentiable diffeomorphism between `E` and `E'`. -/
scoped[Manifold] notation3 E " ≃ₘ[" 𝕜 "] " E' => Diffeomorph 𝓘(𝕜, E) 𝓘(𝕜, E') E E' ∞

namespace Diffeomorph

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Diffeomorph/Variant8319d900b7337c4fdb11e98d12e60a8eb700a90b0ab6004f2ad90f8c24a3c1f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Diffeomorph/Variant8319d900b7337c4fdb11e98d12e60a8eb700a90b0ab6004f2ad90f8c24a3c1f9.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6bff92c7d5200919e5eff534b1098eced622e85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
