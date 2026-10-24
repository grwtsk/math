# rtrace_onPart

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c64ff8cd-f7cf-a57a-50a0-38e58271e1d9",
  "kind": "lemma",
  "lexical_name": "rtrace_onPart",
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
  "slug": "rtrace-onpart--c4ab31c233e3733396d73e85",
  "source": {
    "blob": "8003f91d09d94a4485213d0a819e7dd2ac406321",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 520,
    "line": 502,
    "path": "GRWTSK/Topology/GeneralTopology/ZeroSide/Variant239d6e0d6b187f0713ca8ef0955964876f99e7f28f29504f7149f555799a898a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4ab31c233e3733396d73e8538d4e5de53ca174335d7f29f489882136c6975d5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ZeroSide/Variant239d6e0d6b187f0713ca8ef0955964876f99e7f28f29504f7149f555799a898a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c64ff8cd-f7cf-a57a-50a0-38e58271e1d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 502–520.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rtrace_onPart : rtrace D.onPart = ∑ z ∈ D.onLine, (D.m z : ℝ) * ∑ k, ‖D.v z k‖ ^ 2 := by
  unfold onPart rtrace
  rw [trace_sum, map_sum]
  refine sum_congr rfl fun z hz => ?_
  have h := congrFun (D.star_v_of_onLine ((D.mem_onLine).mp hz))
  rw [trace_smul, trace_vecMulVec, smul_eq_mul, dotProduct]
  have : ∑ k, D.v z k * D.v z k = ((∑ k, ‖D.v z k‖ ^ 2 : ℝ) : ℂ) := by
    push_cast
    refine sum_congr rfl fun k _ => ?_
    have hk : (starRingEnd ℂ) (D.v z k) = D.v z k := by
      have := h k; rwa [Pi.star_apply, RCLike.star_def] at this
    calc D.v z k * D.v z k = (starRingEnd ℂ) (D.v z k) * D.v z k := by rw [hk]
      _ = _ := RCLike.conj_mul (D.v z k)
  rw [this, ← Complex.ofReal_natCast, ← Complex.ofReal_mul, RCLike.re_to_complex, Complex.ofReal_re]

/-- "by Lemma [lem:poisson], tr P = (aL²)⁻¹ Σ m_ρ Σ_{0≤k<d} φ̂(γ_ρ−τ_k)² ≤ (aL²)⁻¹ Σ m_ρ Σ_{k∈ℤ}
φ̂(γ_ρ−τ_k)² = N_on(I')". The Poisson input enters ONLY as the hypothesis `hPois`: for each on-line
ρ ∈ 𝒵(I'), Σ_{0≤k<d} |φ̂(γ_ρ − τ_k)|² ≤ c = aL² (finite partial sum of the nonnegative series whose
full sum over k ∈ ℤ is exactly aL² by lem:poisson). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ZeroSide/Variant239d6e0d6b187f0713ca8ef0955964876f99e7f28f29504f7149f555799a898a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ZeroSide/Variant239d6e0d6b187f0713ca8ef0955964876f99e7f28f29504f7149f555799a898a.lean#L502).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8003f91d09d94a4485213d0a819e7dd2ac406321` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
