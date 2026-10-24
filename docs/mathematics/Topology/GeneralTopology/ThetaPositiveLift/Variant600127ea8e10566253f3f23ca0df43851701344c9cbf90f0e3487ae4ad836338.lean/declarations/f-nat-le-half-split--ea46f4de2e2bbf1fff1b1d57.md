# f_nat_le_half_split

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5538c05e-989f-1f36-f556-4c817973ed5b",
  "kind": "theorem",
  "lexical_name": "f_nat_le_half_split",
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
  "slug": "f-nat-le-half-split--ea46f4de2e2bbf1fff1b1d57",
  "source": {
    "blob": "638e99b8eec7abd7ff95b51125676c4b465db5de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 63,
    "path": "GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variant600127ea8e10566253f3f23ca0df43851701344c9cbf90f0e3487ae4ad836338.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea46f4de2e2bbf1fff1b1d57d84f726c50d9889f745c54ccd9718f421af018d3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ThetaPositiveLift/Variant600127ea8e10566253f3f23ca0df43851701344c9cbf90f0e3487ae4ad836338.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5538c05e-989f-1f36-f556-4c817973ed5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem f_nat_le_half_split (k m : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    HurwitzKernelBounds.f_nat k 1 (Real.exp (4 * t)) m ≤
      Real.exp (-(Real.pi / 2) * Real.exp (4 * t)) *
        HurwitzKernelBounds.f_nat k 1 (1 / 2) m := by
  have hE : 1 ≤ Real.exp (4 * t) := Real.one_le_exp (by positivity)
  have hn : (1 : ℝ) ≤ (m : ℝ) + 1 := by
    have hm : (0 : ℝ) ≤ m := Nat.cast_nonneg m
    linarith
  have hn2 : 1 ≤ ((m : ℝ) + 1) ^ 2 := one_le_pow₀ hn
  have hsplit :
      Real.exp (-Real.pi * ((m : ℝ) + 1) ^ 2 * Real.exp (4 * t)) ≤
        Real.exp (-(Real.pi / 2) * Real.exp (4 * t)) *
          Real.exp (-Real.pi * ((m : ℝ) + 1) ^ 2 * (1 / 2)) := by
    rw [← Real.exp_add]
    apply Real.exp_le_exp.mpr
    have hprod := mul_nonneg (sub_nonneg.mpr hn2) (sub_nonneg.mpr hE)
    have hmid :
        Real.exp (4 * t) + ((m : ℝ) + 1) ^ 2 ≤
          2 * ((m : ℝ) + 1) ^ 2 * Real.exp (4 * t) := by
      nlinarith
    nlinarith [mul_nonneg Real.pi_pos.le (sub_nonneg.mpr hmid)]
  unfold HurwitzKernelBounds.f_nat
  calc
    ((m : ℝ) + 1) ^ k *
        Real.exp (-Real.pi * ((m : ℝ) + 1) ^ 2 * Real.exp (4 * t))
      ≤ ((m : ℝ) + 1) ^ k *
          (Real.exp (-(Real.pi / 2) * Real.exp (4 * t)) *
            Real.exp (-Real.pi * ((m : ℝ) + 1) ^ 2 * (1 / 2))) := by
        gcongr
    _ = Real.exp (-(Real.pi / 2) * Real.exp (4 * t)) *
        (((m : ℝ) + 1) ^ k *
          Real.exp (-Real.pi * ((m : ℝ) + 1) ^ 2 * (1 / 2))) := by
        ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ThetaPositiveLift/Variant600127ea8e10566253f3f23ca0df43851701344c9cbf90f0e3487ae4ad836338.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variant600127ea8e10566253f3f23ca0df43851701344c9cbf90f0e3487ae4ad836338.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `638e99b8eec7abd7ff95b51125676c4b465db5de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
