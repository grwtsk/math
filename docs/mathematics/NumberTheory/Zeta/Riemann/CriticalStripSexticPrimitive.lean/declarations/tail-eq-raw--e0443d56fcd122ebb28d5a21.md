# tail_eq_raw

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:93cab14c-5756-1c6e-a7bc-e3ddedb0fef2",
  "kind": "theorem",
  "lexical_name": "tail_eq_raw",
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
  "slug": "tail-eq-raw--e0443d56fcd122ebb28d5a21",
  "source": {
    "blob": "e2e757d62d2aa098cf88c5ccd31c47f0657e790f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 220,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0443d56fcd122ebb28d5a2190d17ab31e04d005ab2258927a974bf3b66355f4",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93cab14c-5756-1c6e-a7bc-e3ddedb0fef2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tail_eq_raw {T : ℝ} {s : ℂ} (hT : 1 ≤ T) (hs : 0 < s.re) :
    tail T s = sixthRawKernel.tail (s + 6) T +
      (T : ℂ) ^ (-(s + 5)) / (30240 * (s + 5)) := by
  have hz : 1 < (s + 6).re := by simp only [Complex.add_re, Complex.ofNat_re]; linarith
  have hi := sixthRawKernel.integrand_integrable hT hz
  have hp : IntegrableOn (fun t : ℝ => (t : ℂ) ^ (-(s + 6))) (Ioi T) := by
    apply integrableOn_Ioi_cpow_of_lt
    · simp only [Complex.neg_re, Complex.add_re, Complex.ofNat_re]; linarith
    · exact zero_lt_one.trans_le hT
  have hf : sixthKernel.integrand (s + 6) = fun t =>
      sixthRawKernel.integrand (s + 6) t + (1 / 30240 : ℂ) * (t : ℂ) ^ (-(s + 6)) := by
    funext t
    simp only [BoundedKernel.integrand, sixthKernel]
    ring
  rw [tail, BoundedKernel.tail, hf, integral_add hi (hp.const_mul (1 / 30240)),
    integral_const_mul]
  rw [integral_Ioi_cpow_of_lt (by
    simp only [Complex.neg_re, Complex.add_re, Complex.ofNat_re]; linarith)
    (zero_lt_one.trans_le hT), show -(s + 6) + 1 = -(s + 5) by ring, neg_div_neg_eq]
  change sixthRawKernel.tail (s + 6) T + _ = _
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2e757d62d2aa098cf88c5ccd31c47f0657e790f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
