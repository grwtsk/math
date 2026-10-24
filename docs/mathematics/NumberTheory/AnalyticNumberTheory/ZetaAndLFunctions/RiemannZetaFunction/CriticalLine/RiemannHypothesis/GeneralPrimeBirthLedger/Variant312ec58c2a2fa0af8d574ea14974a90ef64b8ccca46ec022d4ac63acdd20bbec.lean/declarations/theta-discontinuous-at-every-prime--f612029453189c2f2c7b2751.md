# theta_discontinuous_at_every_prime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4af0ea40-348f-7021-e826-b3e4a61bbce2",
  "kind": "theorem",
  "lexical_name": "theta_discontinuous_at_every_prime",
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
  "slug": "theta-discontinuous-at-every-prime--f612029453189c2f2c7b2751",
  "source": {
    "blob": "9853cb2f4d944ab358ee08cb4eeade7f6849de5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 78,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GeneralPrimeBirthLedger/Variant312ec58c2a2fa0af8d574ea14974a90ef64b8ccca46ec022d4ac63acdd20bbec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f612029453189c2f2c7b2751ac5a5329b0e8f7fb9d871fbfbc578e0123dd9e82",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GeneralPrimeBirthLedger/Variant312ec58c2a2fa0af8d574ea14974a90ef64b8ccca46ec022d4ac63acdd20bbec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4af0ea40-348f-7021-e826-b3e4a61bbce2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem theta_discontinuous_at_every_prime {p : ℕ} (hp : p.Prime) :
    ¬ ContinuousAt Chebyshev.theta (p : ℝ) := by
  intro hc
  have h := hc.tendsto.comp (probe_tends_to_actual_birth p)
  have hz : Tendsto (fun n : ℕ ↦ Chebyshev.theta (birthProbe p n)) atTop
      (𝓝 (Chebyshev.theta (p - 1 : ℕ))) := by
    simpa only [every_probe_retains_previous_theta hp.two_le] using
      (tendsto_const_nhds : Tendsto (fun _ : ℕ ↦ Chebyshev.theta (p - 1 : ℕ)) atTop
        (𝓝 (Chebyshev.theta (p - 1 : ℕ))))
  have he := tendsto_nhds_unique h hz
  rw [literal_prime_birth hp] at he
  have hl : 0 < Real.log (p : ℝ) := Real.log_pos (by exact_mod_cast hp.one_lt)
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GeneralPrimeBirthLedger/Variant312ec58c2a2fa0af8d574ea14974a90ef64b8ccca46ec022d4ac63acdd20bbec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GeneralPrimeBirthLedger/Variant312ec58c2a2fa0af8d574ea14974a90ef64b8ccca46ec022d4ac63acdd20bbec.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9853cb2f4d944ab358ee08cb4eeade7f6849de5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
