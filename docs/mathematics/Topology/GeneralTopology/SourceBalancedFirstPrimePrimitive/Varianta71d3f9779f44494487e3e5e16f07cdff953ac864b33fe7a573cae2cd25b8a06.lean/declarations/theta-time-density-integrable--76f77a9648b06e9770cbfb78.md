# theta_time_density_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c096d146-e265-7104-e866-ebc9e1c60684",
  "kind": "theorem",
  "lexical_name": "theta_time_density_integrable",
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
  "slug": "theta-time-density-integrable--76f77a9648b06e9770cbfb78",
  "source": {
    "blob": "44555d0b7487393cb7c95692b44a786c9698a5f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 38,
    "path": "GRWTSK/Topology/GeneralTopology/SourceBalancedFirstPrimePrimitive/Varianta71d3f9779f44494487e3e5e16f07cdff953ac864b33fe7a573cae2cd25b8a06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76f77a9648b06e9770cbfb786595579069a07f3f0c3391911be7c010111e8dcb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceBalancedFirstPrimePrimitive/Varianta71d3f9779f44494487e3e5e16f07cdff953ac864b33fe7a573cae2cd25b8a06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c096d146-e265-7104-e866-ebc9e1c60684`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem theta_time_density_integrable (a b : ℝ) (hab : a ≤ b) :
    IntervalIntegrable (fun t => Chebyshev.theta (Real.exp t) * Real.exp (-t / 2))
      volume a b := by
  have hi : IntervalIntegrable
      (∑ p ∈ primeLogInventory b, fun t : ℝ => Real.log (p : ℝ) *
        (if Real.log (p : ℝ) ≤ t then Real.exp (-t / 2) else 0)) volume a b :=
    IntervalIntegrable.sum _ (fun p _ => by
      have hstep := intervalIntegrable_closed_step a b (Real.log (p : ℝ)) _
        ((by fun_prop : Continuous (fun t : ℝ => Real.exp (-t / 2))).intervalIntegrable a b)
      exact hstep.const_mul (Real.log (p : ℝ)))
  apply hi.congr
  intro t ht
  simp only [Finset.sum_apply]
  rw [theta_exp_eq_steps b t ((uIoc_of_le hab ▸ ht).2), Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro p _
  split_ifs <;> simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceBalancedFirstPrimePrimitive/Varianta71d3f9779f44494487e3e5e16f07cdff953ac864b33fe7a573cae2cd25b8a06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceBalancedFirstPrimePrimitive/Varianta71d3f9779f44494487e3e5e16f07cdff953ac864b33fe7a573cae2cd25b8a06.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44555d0b7487393cb7c95692b44a786c9698a5f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
