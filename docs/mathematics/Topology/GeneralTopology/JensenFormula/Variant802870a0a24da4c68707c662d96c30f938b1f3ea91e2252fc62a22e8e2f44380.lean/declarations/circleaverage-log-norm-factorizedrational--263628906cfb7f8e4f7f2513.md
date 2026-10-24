# circleAverage_log_norm_factorizedRational

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d94c140d-7a90-cc4f-484d-dc6b4b152204",
  "kind": "lemma",
  "lexical_name": "circleAverage_log_norm_factorizedRational",
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
  "slug": "circleaverage-log-norm-factorizedrational--263628906cfb7f8e4f7f2513",
  "source": {
    "blob": "f03f5d86b80d11c091232ecfc47d21f951edf1ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 238,
    "path": "GRWTSK/Topology/GeneralTopology/JensenFormula/Variant802870a0a24da4c68707c662d96c30f938b1f3ea91e2252fc62a22e8e2f44380.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:263628906cfb7f8e4f7f2513b9395b2f8338f68afdcf419b850c7fa8bb0b150e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/JensenFormula/Variant802870a0a24da4c68707c662d96c30f938b1f3ea91e2252fc62a22e8e2f44380.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d94c140d-7a90-cc4f-484d-dc6b4b152204`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma circleAverage_log_norm_factorizedRational {R : ℝ} {c : ℂ}
    (D : Function.locallyFinsuppWithin (closedBall c |R|) ℤ) :
    circleAverage (∑ᶠ u, (D u * log ‖· - u‖)) c R = ∑ᶠ u, D u * log R := by
  have h := D.finiteSupport (isCompact_closedBall c |R|)
  calc circleAverage (∑ᶠ u, (D u * log ‖· - u‖)) c R
  _ = circleAverage (∑ u ∈ h.toFinset, (D u * log ‖· - u‖)) c R := by
    rw [finsum_eq_sum_of_support_subset]
    intro u
    contrapose
    aesop
  _ = ∑ i ∈ h.toFinset, circleAverage (fun x ↦ D i * log ‖x - i‖) c R := by
    rw [circleAverage_sum]
    intro u hu
    apply IntervalIntegrable.const_mul
    apply (analyticOnNhd_id.sub analyticOnNhd_const).meromorphicOn.circleIntegrable_log_norm
  _ = ∑ u ∈ h.toFinset, D u * log R := by
    apply Finset.sum_congr rfl
    intro u hu
    simp_rw [← smul_eq_mul, circleAverage_fun_smul]
    congr
    rw [circleAverage_log_norm_sub_const_of_mem_closedBall]
    apply D.supportWithinDomain
    simp_all
  _ = ∑ᶠ u, D u * log R := by
    rw [finsum_eq_sum_of_support_subset]
    intro u
    aesop

/--
If  `g : ℂ → ℂ` is analytic without zero on the closed ball with center `c` and radius `R`, then the
circle average `circleAverage (log ‖g ·‖) c R` equals `log ‖g c‖`.
-/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/JensenFormula/Variant802870a0a24da4c68707c662d96c30f938b1f3ea91e2252fc62a22e8e2f44380.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/JensenFormula/Variant802870a0a24da4c68707c662d96c30f938b1f3ea91e2252fc62a22e8e2f44380.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f03f5d86b80d11c091232ecfc47d21f951edf1ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
