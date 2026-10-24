# even_exponential_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30488f51-eb5c-a31d-121c-af265d106e49",
  "kind": "theorem",
  "lexical_name": "even_exponential_integral",
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
  "slug": "even-exponential-integral--a5b9b1c4d32bc7c7e726953e",
  "source": {
    "blob": "8f8717f97ebc4e425b2439522f89d9b4813585c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 107,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceSamplingCoefficients/Variantc32f29dcefe48541d1a26795f9af438b2fae5f0b3fb90c6505f09ad6df21e5de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5b9b1c4d32bc7c7e726953ea18ad1f8ea2b3ba510298e6dae1c876c1e15c2f2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceSamplingCoefficients/Variantc32f29dcefe48541d1a26795f9af438b2fae5f0b3fb90c6505f09ad6df21e5de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30488f51-eb5c-a31d-121c-af265d106e49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem even_exponential_integral (j : ℕ) :
    (∫ v : ℝ, Real.exp (-|v| / 2) * |v| ^ j) =
      (2 : ℝ) ^ (j + 2) * (j.factorial : ℝ) := by
  have hi := (exponential_half_integrable j).integrable_indicator measurableSet_Ioi
  have he : (fun v : ℝ => Real.exp (-|v| / 2) * |v| ^ j) =ᵐ[volume]
      fun v : ℝ =>
        (Ioi (0 : ℝ)).indicator (fun x : ℝ => x ^ j * Real.exp (-x / 2)) v +
        (Ioi (0 : ℝ)).indicator (fun x : ℝ => x ^ j * Real.exp (-x / 2)) (-v) := by
    have hn : ∀ᵐ v : ℝ ∂volume, v ≠ 0 := volume.ae_ne (0 : ℝ)
    filter_upwards [hn] with v hv
    exact even_exponential_eq_indicator j hv
  rw [integral_congr_ae he, integral_add hi hi.comp_neg, integral_neg_eq_self,
    integral_indicator measurableSet_Ioi, exponential_half_integral]
  rw [show j + 2 = (j + 1) + 1 by omega, pow_succ]
  ring

/-- The positive-axis envelope is absolutely integrable, including near zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceSamplingCoefficients/Variantc32f29dcefe48541d1a26795f9af438b2fae5f0b3fb90c6505f09ad6df21e5de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceSamplingCoefficients/Variantc32f29dcefe48541d1a26795f9af438b2fae5f0b3fb90c6505f09ad6df21e5de.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f8717f97ebc4e425b2439522f89d9b4813585c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
