# xyzChromaticity_denominator_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8662f849-ef3a-bb81-a43c-16f8e0958bbf",
  "kind": "theorem",
  "lexical_name": "xyzChromaticity_denominator_eq_one",
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
  "slug": "xyzchromaticity-denominator-eq-one--027a900a292fa8e11db96fdf",
  "source": {
    "blob": "6a4d61f76e5bfc96259090e5cc906a725a2ac994",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 76,
    "path": "GRWTSK/Topology/GeneralTopology/RiemannSphere/Variantde16bbcd55df68b0d61f1fe55593144a30fc32fd09fc13d5d8f25f3b2d7472b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:027a900a292fa8e11db96fdf2ea190565bc46d00a167275663cc0e817cf206e6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/RiemannSphere/Variantde16bbcd55df68b0d61f1fe55593144a30fc32fd09fc13d5d8f25f3b2d7472b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8662f849-ef3a-bb81-a43c-16f8e0958bbf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem xyzChromaticity_denominator_eq_one (xyz : NormalizedXYZPoint) :
    xyzChromaticityDenominator xyz = 1 := by
  have hinvariant := congrArg (fun n : ℤ ↦ (n : ℚ)) xyz.invariant
  simp only [xyzFormatV1] at hinvariant
  simp only [xyzChromaticityDenominator, FixedChannel.toRat, xyzFormatV1]
  norm_num at hinvariant ⊢
  linarith

@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/RiemannSphere/Variantde16bbcd55df68b0d61f1fe55593144a30fc32fd09fc13d5d8f25f3b2d7472b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/RiemannSphere/Variantde16bbcd55df68b0d61f1fe55593144a30fc32fd09fc13d5d8f25f3b2d7472b4.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a4d61f76e5bfc96259090e5cc906a725a2ac994` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
