# ergodic_mul_left_iff_denseRange_zpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:329c5b4f-648c-72ec-02b5-eb4c9121d954",
  "kind": "theorem",
  "lexical_name": "ergodic_mul_left_iff_denseRange_zpow",
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
  "slug": "ergodic-mul-left-iff-denserange-zpow--ce7829c20bf20c7d59caee1d",
  "source": {
    "blob": "6f84c6a0b5e5661617e2d8069692844b6de1564a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 205,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variantd290f436d966af57cef08df0ed62b9043a13095a9da12e661dc9fef6885a870d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce7829c20bf20c7d59caee1ddbe72952c882346c59860f123d3d6e441b44e276",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variantd290f436d966af57cef08df0ed62b9043a13095a9da12e661dc9fef6885a870d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:329c5b4f-648c-72ec-02b5-eb4c9121d954`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ergodic_mul_left_iff_denseRange_zpow (μ : Measure G) [IsFiniteMeasure μ]
    [μ.InnerRegular] [μ.IsMulLeftInvariant] [NeZero μ] :
    Ergodic (g * ·) μ ↔ DenseRange (g ^ · : ℤ → G) :=
  ⟨.zpow_of_ergodic_mul_left, (ergodic_mul_left_of_denseRange_zpow · μ)⟩

end IsTopologicalGroup

namespace MonoidHom

variable {G : Type*} [Group G] [TopologicalSpace G]
  [IsTopologicalGroup G] [SecondCountableTopology G] [MeasurableSpace G] [BorelSpace G]

/-- Let `f : G →* G` be a group endomorphism of a topological group with second countable topology.
If the preimages of `1` under the iterations of `f` are dense,
then it is preergodic with respect to any finite inner regular left invariant measure. -/
@[to_additive "Let `f : G →+ G` be an additive group endomorphism
of a topological additive group with second countable topology.
If the preimages of `0` under the iterations of `f` are dense,
then it is preergodic with respect to any finite inner regular left invariant measure."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variantd290f436d966af57cef08df0ed62b9043a13095a9da12e661dc9fef6885a870d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variantd290f436d966af57cef08df0ed62b9043a13095a9da12e661dc9fef6885a870d.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f84c6a0b5e5661617e2d8069692844b6de1564a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
