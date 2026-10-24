# isBigO_mul_near_weightPole

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b95b7419-bbf0-cc90-4538-2b68069e5fed",
  "kind": "theorem",
  "lexical_name": "isBigO_mul_near_weightPole",
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
  "slug": "isbigo-mul-near-weightpole--ad867d1e86f213de73829850",
  "source": {
    "blob": "0ae0a2fe106d4d5a5bcb06102dc2f0a602bda9e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 112,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad867d1e86f213de7382985011755036b3cb287d617392355dcf75dea4e37031",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b95b7419-bbf0-cc90-4538-2b68069e5fed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isBigO_mul_near_weightPole {F g : ℂ → ℂ} {q r : ℂ} (hF : DifferentiableAt ℂ F q)
    (hg : (g - fun s => r / (s - q)) =O[𝓝[≠] q] (1 : ℂ → ℂ)) :
    ((fun s => g s * F s) - fun s => r * F q / (s - q)) =O[𝓝[≠] q] (1 : ℂ → ℂ) := by
  have hFc : Tendsto F (𝓝[≠] q) (𝓝 (F q)) := hF.continuousAt.tendsto.mono_left nhdsWithin_le_nhds
  have hFO : F =O[𝓝[≠] q] (1 : ℂ → ℂ) := hFc.isBigO_one ℂ
  have hslope : Tendsto (fun s => (F s - F q) / (s - q)) (𝓝[≠] q) (𝓝 (deriv F q)) := by
    have := hasDerivAt_iff_tendsto_slope.mp hF.hasDerivAt
    simpa only [slope_fun_def_field] using this
  have h1 : (fun s => (g - fun s => r / (s - q)) s * F s) =O[𝓝[≠] q] (1 : ℂ → ℂ) := by
    have := hg.mul hFO
    simpa only [Pi.one_apply, mul_one, Pi.one_def] using this
  have h2 : (fun s => r * ((F s - F q) / (s - q))) =O[𝓝[≠] q] (1 : ℂ → ℂ) :=
    (hslope.const_mul r).isBigO_one ℂ
  refine (h1.add h2).congr' ?_ EventuallyEq.rfl
  filter_upwards [self_mem_nhdsWithin] with s hs
  have hsq : s - q ≠ 0 := sub_ne_zero.mpr hs
  simp only [Pi.sub_apply]
  field_simp
  ring

/-- **Weighted argument principle with a meromorphic weight.**  f analytic on a neighbourhood of
every point of the closed rectangle and nonvanishing on its border, Z its (finite) zero set there;
g analytic on the rectangle off a finite set Q of interior points, disjoint from Z, with principal
part r q/(· − q) at q ∈ Q.  Then
(1/2πi)∮ g·f′/f = Σ_{ρ∈Z} ord_ρ(f)·g(ρ) + Σ_{q∈Q} r q·(f′/f)(q). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ae0a2fe106d4d5a5bcb06102dc2f0a602bda9e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
