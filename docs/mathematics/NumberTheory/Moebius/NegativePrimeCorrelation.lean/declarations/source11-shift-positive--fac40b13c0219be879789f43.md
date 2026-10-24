# source11_shift_positive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cfd159fc-52bf-fc4a-d657-7b6a3e4ce266",
  "kind": "theorem",
  "lexical_name": "source11_shift_positive",
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
  "slug": "source11-shift-positive--fac40b13c0219be879789f43",
  "source": {
    "blob": "f3e314f6323bf623e11acf62d28597feede00b6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 103,
    "path": "GRWTSK/NumberTheory/Moebius/NegativePrimeCorrelation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fac40b13c0219be879789f43f714691e34e0042f5ef814f9ab930d8432333a62",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/NegativePrimeCorrelation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cfd159fc-52bf-fc4a-d657-7b6a3e4ce266`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem source11_shift_positive {u : ℝ} (hl : log 11 < u) (hr : u ≤ log 12) :
    0 < causalShift (log 11) (primeNoteCascade {2,3,5,7}) u := by
  have hlogs : log (11:ℝ) + log 2 = log 22 := by
    rw [← log_mul (by norm_num : (11:ℝ) ≠ 0) (by norm_num : (2:ℝ) ≠ 0)]
    norm_num
  have h12 : log (12:ℝ) < log 22 := log_lt_log (by norm_num) (by norm_num)
  have hshort : u-log 11 ≤ log 2 := by linarith
  have hz := cascade_union_before_delays (P := ∅) (B := {2,3,5,7})
    (by simp) source11_primes (by simp) (u := u-log 11) (fun p hp ↦
      hshort.trans (log_le_log (by norm_num) (by exact_mod_cast (source11_primes p hp).two_le)))
  simp only [Finset.empty_union, primeNoteCascade_empty] at hz
  rw [causalShift, if_pos hl.le, hz]
  have he : exp (-(u-log 11)/2) < 1 := exp_lt_one_iff.mpr (by linarith)
  simp only [baseNote, pickupResponse, Nat.cast_one, log_one, sqrt_one, inv_one,
    if_pos (show 0 ≤ u-log 11 by linarith)]
  linarith

/-- A kernel-checked strictly negative delayed correlation in the actual natural
prime order. In particular, source correlations cannot simply be discarded. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/NegativePrimeCorrelation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/NegativePrimeCorrelation.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3e314f6323bf623e11acf62d28597feede00b6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
