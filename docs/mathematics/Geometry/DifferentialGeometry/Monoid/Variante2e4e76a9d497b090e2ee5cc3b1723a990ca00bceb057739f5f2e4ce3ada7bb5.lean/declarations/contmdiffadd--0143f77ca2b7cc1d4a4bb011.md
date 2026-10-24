# ContMDiffAdd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cddc927dad9406e731399f402f334cb40f3fb215d75ddb1bc02219a41fb15a61",
  "kind": "class",
  "lexical_name": "ContMDiffAdd",
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
  "slug": "contmdiffadd--0143f77ca2b7cc1d4a4bb011",
  "source": {
    "blob": "9b9686ee034b27560b364fc94453fa340a53cc13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 51,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Monoid/Variante2e4e76a9d497b090e2ee5cc3b1723a990ca00bceb057739f5f2e4ce3ada7bb5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0143f77ca2b7cc1d4a4bb011c17e74f54e671aec3d4bc7ed7b75686781348587",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Monoid/Variante2e4e76a9d497b090e2ee5cc3b1723a990ca00bceb057739f5f2e4ce3ada7bb5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cddc927dad9406e731399f402f334cb40f3fb215d75ddb1bc02219a41fb15a61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class ContMDiffAdd {𝕜 : Type*} [NontriviallyNormedField 𝕜] {H : Type*} [TopologicalSpace H]
    {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    (I : ModelWithCorners 𝕜 E H) (n : ℕ∞ω)
    (G : Type*) [Add G] [TopologicalSpace G] [ChartedSpace H G] : Prop
    extends IsManifold I n G where
  contMDiff_add : CMDiff n fun p : G × G ↦ p.1 + p.2

-- See note [Design choices about smooth algebraic structures]
/-- Basic hypothesis to talk about a `C^n` (Lie) monoid or a `C^n` semigroup.
A `C^n` monoid over `G`, for example, is obtained by requiring both the instances `Monoid G`
and `ContMDiffMul I n G`.

See also `ContMDiffSMul I I' n G M` for `C^n` actions of `G` on a manifold `M`. -/
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Monoid/Variante2e4e76a9d497b090e2ee5cc3b1723a990ca00bceb057739f5f2e4ce3ada7bb5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Monoid/Variante2e4e76a9d497b090e2ee5cc3b1723a990ca00bceb057739f5f2e4ce3ada7bb5.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b9686ee034b27560b364fc94453fa340a53cc13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
