# positiveMeasure_map_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7955241b-cd97-6d71-eed7-fc7d5344fc02",
  "kind": "theorem",
  "lexical_name": "positiveMeasure_map_mul",
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
  "slug": "positivemeasure-map-mul--e23eacb2682cf182b7dc0b5a",
  "source": {
    "blob": "faf5901006206a028b9fd81123067e9dd54e5ff1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 28,
    "line": 20,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilationAttempt04/Variante1bc823b58db2308c4384c1dd80d5eb82fcc9311c8cb43a40dc8c30866c906bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e23eacb2682cf182b7dc0b5a46b38475a7238a6c4ec6d0da7812a92c191128f9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PositiveDilationAttempt04/Variante1bc823b58db2308c4384c1dd80d5eb82fcc9311c8cb43a40dc8c30866c906bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7955241b-cd97-6d71-eed7-fc7d5344fc02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–28.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positiveMeasure_map_mul {a : ℝ} (ha : 0 < a) :
    positiveMeasure.map (a*·) = ENNReal.ofReal a⁻¹ • positiveMeasure := by
  have hp : (fun x : ℝ => a*x) ⁻¹' Ioi 0 = Ioi 0 := by
    ext x
    simp only [mem_preimage,mem_Ioi,mul_pos_iff_of_pos_left ha]
  have h := Measure.restrict_map (μ:=volume) (s:=Ioi (0:ℝ)) (measurable_const_mul a) measurableSet_Ioi
  rw [hp,Real.map_volume_mul_left ha.ne',Measure.restrict_smul,abs_of_pos (inv_pos.mpr ha)] at h
  exact h.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PositiveDilationAttempt04/Variante1bc823b58db2308c4384c1dd80d5eb82fcc9311c8cb43a40dc8c30866c906bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilationAttempt04/Variante1bc823b58db2308c4384c1dd80d5eb82fcc9311c8cb43a40dc8c30866c906bb.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `faf5901006206a028b9fd81123067e9dd54e5ff1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
