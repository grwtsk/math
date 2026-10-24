# sourceTest_contDiff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c38d537-ae6e-7c4b-7bb7-e537b48b54dd",
  "kind": "theorem",
  "lexical_name": "sourceTest_contDiff",
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
  "slug": "sourcetest-contdiff--9f9fef90cc36cbddcde4f898",
  "source": {
    "blob": "d50027f54a57f8936ea47a3e55b7cbcdb0f544d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 27,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiTailPrimitiveAbel/Variant4033ea7cffa24f9dc4208cca8d7e2d47bb2d8dc69ab1b7a76ca9ed3afd5402d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f9fef90cc36cbddcde4f8984c9b452af8f7ef4526fb7fc2ce319a6f8d68afda",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiTailPrimitiveAbel/Variant4033ea7cffa24f9dc4208cca8d7e2d47bb2d8dc69ab1b7a76ca9ed3afd5402d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c38d537-ae6e-7c4b-7bb7-e537b48b54dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem sourceTest_contDiff {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 1 (actualXiTailSourceTest A) := by
  exact (sourceCorrelation_deriv_contDiff hA).sub ((sourceCorrelation_contDiff A hA).div_const 2)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiTailPrimitiveAbel/Variant4033ea7cffa24f9dc4208cca8d7e2d47bb2d8dc69ab1b7a76ca9ed3afd5402d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiTailPrimitiveAbel/Variant4033ea7cffa24f9dc4208cca8d7e2d47bb2d8dc69ab1b7a76ca9ed3afd5402d4.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d50027f54a57f8936ea47a3e55b7cbcdb0f544d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
