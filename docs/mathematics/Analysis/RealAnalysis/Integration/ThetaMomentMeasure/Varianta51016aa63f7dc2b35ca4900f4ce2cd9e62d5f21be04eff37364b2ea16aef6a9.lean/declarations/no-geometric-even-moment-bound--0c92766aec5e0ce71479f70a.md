# no_geometric_even_moment_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6556f031-4c1a-d344-f3bf-12ef2c6d30dc",
  "kind": "theorem",
  "lexical_name": "no_geometric_even_moment_bound",
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
  "slug": "no-geometric-even-moment-bound--0c92766aec5e0ce71479f70a",
  "source": {
    "blob": "80507dd15d009639e0d9e17caf34246efb511f41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 464,
    "line": 432,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Varianta51016aa63f7dc2b35ca4900f4ce2cd9e62d5f21be04eff37364b2ea16aef6a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c92766aec5e0ce71479f70ad7bbe67d4c8da0f7ebec8f27a3b8610ca8f5c69e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Varianta51016aa63f7dc2b35ca4900f4ce2cd9e62d5f21be04eff37364b2ea16aef6a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6556f031-4c1a-d344-f3bf-12ef2c6d30dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 432–464.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem no_geometric_even_moment_bound (B : ℝ) (hB : 0 ≤ B)
    {t : ℝ} (ht : 0 ≤ t) :
    ¬ ∀ n : ℕ, moment t (2 * n) ≤ moment t 0 * B ^ (2 * n) := by
  intro hbound
  by_cases hz : B = 0
  · have hb := hbound 1
    have hp := moment_positive 2 ht
    norm_num [hz] at hb
    linarith
  · have hBpos : 0 < B := lt_of_le_of_ne hB (Ne.symm hz)
    have : IsFiniteMeasure (momentMeasure t) := momentMeasure_finite ht
    let d : ℝ := (momentMeasure t).real (Ioi (2 * B))
    have hd : 0 < d := ENNReal.toReal_pos
      (momentMeasure_Ioi_positive (2 * B) ht).ne' (measure_ne_top _ _)
    have hcoeff (n : ℕ) : d * (4 : ℝ) ^ n ≤ moment t 0 := by
      have hl := even_moment_tail_lower n (2 * B) (by positivity) ht
      have hp : (2 * B) ^ (2 * n) = (4 : ℝ) ^ n * B ^ (2 * n) := by
        rw [mul_pow, pow_mul (2 : ℝ) 2 n]
        norm_num
      have hBpow : 0 < B ^ (2 * n) := pow_pos hBpos _
      apply (mul_le_mul_iff_right₀ hBpow).mp
      calc
        _ = d * (2 * B) ^ (2 * n) := by rw [hp]; ring
        _ ≤ moment t (2 * n) := hl
        _ ≤ moment t 0 * B ^ (2 * n) := hbound n
        _ = B ^ (2 * n) * moment t 0 := by ring
    obtain ⟨n, hn⟩ := pow_unbounded_of_one_lt (moment t 0 / d) (by norm_num : (1 : ℝ) < 4)
    have hg := (div_lt_iff₀ hd).mp hn
    have hb := hcoeff n
    nlinarith

end
end FormalResearch.RiemannHypothesis.ThetaMomentMeasure
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Varianta51016aa63f7dc2b35ca4900f4ce2cd9e62d5f21be04eff37364b2ea16aef6a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Varianta51016aa63f7dc2b35ca4900f4ce2cd9e62d5f21be04eff37364b2ea16aef6a9.lean#L432).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80507dd15d009639e0d9e17caf34246efb511f41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
