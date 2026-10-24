# sqrt_energy_add_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12ab4585-aec3-a661-fd25-d82df5f31462",
  "kind": "theorem",
  "lexical_name": "sqrt_energy_add_le",
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
  "slug": "sqrt-energy-add-le--451b1c75429e00e97b05ad02",
  "source": {
    "blob": "3d17ad0600f23db011492c1a64cdaca16c86947b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 73,
    "path": "GRWTSK/Analysis/Integration/QuadraticRootTransport.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:451b1c75429e00e97b05ad02f76fe4d14b0f36a6dcb5b826571a1b6d8ff7ff82",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/QuadraticRootTransport.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12ab4585-aec3-a661-fd25-d82df5f31462`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sqrt_energy_add_le {f g : X → ℝ}
    (hf : Integrable (fun x => (f x)^2) μ)
    (hg : Integrable (fun x => (g x)^2) μ)
    (hs : Integrable (fun x => (f x+g x)^2) μ) :
    Real.sqrt (energy μ (fun x => f x+g x)) ≤
      Real.sqrt (energy μ f)+Real.sqrt (energy μ g) := by
  have hc := cross_integrable μ hf hg hs
  have hA := energy_nonnegative μ f
  have hB := energy_nonnegative μ g
  have hC : (cross μ f g)^2 ≤ energy μ f*energy μ g :=
    cross_square_bound hA (fun t => by
      have ht := energy_nonnegative μ (fun x => t*f x+g x)
      rw [moment_identity μ hf hg hc t] at ht
      nlinarith)
  have ha := Real.sq_sqrt hA
  have hb := Real.sq_sqrt hB
  have hp : (Real.sqrt (energy μ f)*Real.sqrt (energy μ g))^2 =
      energy μ f*energy μ g := by rw [mul_pow, ha, hb]
  have hp0 : 0 ≤ Real.sqrt (energy μ f)*Real.sqrt (energy μ g) := by positivity
  have hcross : cross μ f g ≤ Real.sqrt (energy μ f)*Real.sqrt (energy μ g) := by
    nlinarith
  have he := moment_identity μ hf hg hc (1:ℝ)
  simp only [one_mul, one_pow, mul_one] at he
  have he2 : energy μ (fun x => f x+g x) ≤
      (Real.sqrt (energy μ f)+Real.sqrt (energy μ g))^2 := by nlinarith
  have hsqrt := Real.sqrt_le_sqrt he2
  simpa only [Real.sqrt_sq (show 0 ≤ Real.sqrt (energy μ f)+Real.sqrt (energy μ g)
    by positivity)] using hsqrt

end GRWTSK.Analysis.QuadraticRootTransport
#print axioms GRWTSK.Analysis.QuadraticRootTransport.sqrt_energy_add_le
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/RealAnalysis/Integration/QuadraticRootTransport.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Integration/QuadraticRootTransport.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d17ad0600f23db011492c1a64cdaca16c86947b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
