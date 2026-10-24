# envelope_le_peak

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d4c9e958-9b6c-00ae-30ec-95386e0e1d49",
  "kind": "theorem",
  "lexical_name": "envelope_le_peak",
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
  "slug": "envelope-le-peak--7946cd233e0d2a1e06da9df1",
  "source": {
    "blob": "3af1880ae6b6018bf8637dacfb0027821d4232cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 42,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointRadius/Variant20c0c3e934e16772a80292c3ad5f79e56c747034a95e52057ddaaa2ed2803dc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7946cd233e0d2a1e06da9df178aefb1920fbbd91922024d26cfce23dfa338035",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/EndpointRadius/Variant20c0c3e934e16772a80292c3ad5f79e56c747034a95e52057ddaaa2ed2803dc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4c9e958-9b6c-00ae-30ec-95386e0e1d49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem envelope_le_peak (A : ℝ) (hA : 0 ≤ A) : envelope A ≤ envelope 3 := by
  have hlinear : Real.exp 1 * (A / 3) ≤ Real.exp (A / 3) :=
    Real.exp_one_mul_le_exp
  have hcube : (Real.exp 1 * (A / 3)) ^ 3 ≤ (Real.exp (A / 3)) ^ 3 := by
    gcongr
  have he1 : (Real.exp (1 : ℝ)) ^ 3 = Real.exp (3 : ℝ) := by
    rw [← Real.exp_nat_mul]; norm_num
  have heA : (Real.exp (A / 3)) ^ 3 = Real.exp A := by
    rw [← Real.exp_nat_mul]; congr 1; ring
  rw [mul_pow, he1, heA] at hcube
  have hi := mul_le_mul_of_nonneg_right hcube (Real.exp_pos (-3)).le
  have he3 : Real.exp 3 * Real.exp (-3) = 1 := by rw [← Real.exp_add]; simp
  have hl : Real.exp 3 * (A / 3) ^ 3 * Real.exp (-3) = (A / 3) ^ 3 := by
    calc
      _ = (Real.exp 3 * Real.exp (-3)) * (A / 3) ^ 3 := by ring
      _ = _ := by rw [he3]; ring
  rw [hl] at hi
  have hc : A ^ 3 ≤ 27 * Real.exp (-3) * Real.exp A := by nlinarith [hi]
  have hc2 := mul_le_mul_of_nonneg_right hc (Real.exp_pos (-A)).le
  have he : Real.exp A * Real.exp (-A) = 1 := by rw [← Real.exp_add]; simp
  have hr : 27 * Real.exp (-3) * Real.exp A * Real.exp (-A) =
      27 * Real.exp (-3) := by
    calc
      _ = 27 * Real.exp (-3) * (Real.exp A * Real.exp (-A)) := by ring
      _ = _ := by rw [he]; ring
  rw [hr] at hc2
  simp only [envelope]
  nlinarith [hc2]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/EndpointRadius/Variant20c0c3e934e16772a80292c3ad5f79e56c747034a95e52057ddaaa2ed2803dc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointRadius/Variant20c0c3e934e16772a80292c3ad5f79e56c747034a95e52057ddaaa2ed2803dc5.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3af1880ae6b6018bf8637dacfb0027821d4232cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
