# threePointGram_tendsto_zero_of_coordinates

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cef2a2c2-223c-01b0-788a-bef69eb3d3ac",
  "kind": "theorem",
  "lexical_name": "threePointGram_tendsto_zero_of_coordinates",
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
  "slug": "threepointgram-tendsto-zero-of-coordinates--0dad1514d3f4fd5a059a413e",
  "source": {
    "blob": "6696bbe1a768b08f930ffda0044406a132977bc2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 171,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/SafeShiftCoefficientDecay.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0dad1514d3f4fd5a059a413e86722d38242a8b6bacd2703b437aab1e4fc3a17f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/SafeShiftCoefficientDecay.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cef2a2c2-223c-01b0-788a-bef69eb3d3ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem threePointGram_tendsto_zero_of_coordinates
    (point : ℕ → PackingPoint)
    (hx : Tendsto (fun n => (point n).x) atTop (𝓝 0))
    (hy : Tendsto (fun n => (point n).y) atTop (𝓝 0)) :
    Tendsto
      (fun n =>
        (ThreePointPacking.mk
          (point n) (point (n + 1)) (point (n + 2))).gramVolume)
      atTop (𝓝 0) := by
  have hx1 := hx.comp (tendsto_add_atTop_nat 1)
  have hx2 := hx.comp (tendsto_add_atTop_nat 2)
  have hy1 := hy.comp (tendsto_add_atTop_nat 1)
  have hy2 := hy.comp (tendsto_add_atTop_nat 2)
  have hdx01 :
      Tendsto (fun n => (point (n + 1)).x - (point n).x)
        atTop (𝓝 0) := by
    simpa using hx1.sub hx
  have hdx12 :
      Tendsto (fun n => (point (n + 2)).x - (point (n + 1)).x)
        atTop (𝓝 0) := by
    simpa using hx2.sub hx1
  have hdy01 :
      Tendsto (fun n => (point (n + 1)).y - (point n).y)
        atTop (𝓝 0) := by
    simpa using hy1.sub hy
  have hdy12 :
      Tendsto (fun n => (point (n + 2)).y - (point (n + 1)).y)
        atTop (𝓝 0) := by
    simpa using hy2.sub hy1
  have hdet :
      Tendsto
        (fun n =>
          ((point (n + 1)).x - (point n).x) *
              ((point (n + 2)).y - (point (n + 1)).y) -
            ((point (n + 1)).y - (point n).y) *
              ((point (n + 2)).x - (point (n + 1)).x))
        atTop (𝓝 0) := by
    simpa using (hdx01.mul hdy12).sub (hdy01.mul hdx12)
  have hsq := hdet.pow 2
  simpa [ThreePointPacking.gramVolume, ThreePointPacking.orientedVolume,
    ThreePointPacking.edge01, ThreePointPacking.edge12, PackingPoint.sub] using hsq

/-- The normalized axial Gram coefficient tends to zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/SafeShiftCoefficientDecay.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/SafeShiftCoefficientDecay.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6696bbe1a768b08f930ffda0044406a132977bc2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
