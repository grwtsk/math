# CofinalHeightSystem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:804c1f34078e17f9cea9d67876b9a42742a1947f3d340844c4eb3db44cd5d4e4",
  "kind": "structure",
  "lexical_name": "CofinalHeightSystem",
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
  "slug": "cofinalheightsystem--8cca238e628fe6d30c7206ea",
  "source": {
    "blob": "5deb91f4d945a70d47804d09bf3b6bcbc6d854dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 25,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Cofinal/Variant8b17450298227175e7939db179e27e1fb5e4cbdeeac577b31bc07168ac875516.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8cca238e628fe6d30c7206ea9cd4f02a7417ddfaaa90886c7955b1dd98535042",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Cofinal/Variant8b17450298227175e7939db179e27e1fb5e4cbdeeac577b31bc07168ac875516.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:804c1f34078e17f9cea9d67876b9a42742a1947f3d340844c4eb3db44cd5d4e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CofinalHeightSystem
    (xi : ℂ → ℂ) where
  height : Nat → ℝ
  strictMono : StrictMono height
  tendsToInfinity : Prop
  tendsToInfinityProof : tendsToInfinity
  cut : Nat → CriticalStripCut
  analyticMeasure :
    Nat → CountingMeasure
  spectralMeasure :
    Nat → CountingMeasure
  finiteEquality :
    ∀ index,
      analyticMeasure index =
        spectralMeasure index
  restrictionCompatible : Prop
  restrictionCompatibleProof :
    restrictionCompatible
  completeCofinalCoverage :
    ∀ z,
      xi z = 0 →
      0 < z.re →
      z.re < 1 →
      0 < z.im →
      ∃ index,
        z ∈ (analyticMeasure index).support
  spectralSupport :
    ∀ index z,
      z ∈ (spectralMeasure index).support →
      z.re = (1 : ℝ) / 2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Cofinal/Variant8b17450298227175e7939db179e27e1fb5e4cbdeeac577b31bc07168ac875516.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Cofinal/Variant8b17450298227175e7939db179e27e1fb5e4cbdeeac577b31bc07168ac875516.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5deb91f4d945a70d47804d09bf3b6bcbc6d854dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
