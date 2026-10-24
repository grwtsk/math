# cellInterior_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5eb8df3f7eee90aca538c4cec724099a69922116",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 27,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b1/b1692c02a45eaff5606892ff3359bbf8639f843d9500dbacd47549872964ad14.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:65c0bff9-cd6e-1eb7-1307-3dae0c534114",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ff935bbe-b50e-b721-7c8b-06e61eb6f65f",
  "kind": "theorem",
  "lexical_name": "cellInterior_integral",
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
  "slug": "cellinterior-integral--cc23c5b45f08b563611a81d2",
  "source": {
    "blob": "5eb8df3f7eee90aca538c4cec724099a69922116",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 27,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceQuadratureEndpointFixtures/Variantb1692c02a45eaff5606892ff3359bbf8639f843d9500dbacd47549872964ad14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc23c5b45f08b563611a81d251994263dfd804ee58a2e97e5abc8d303f046391",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceQuadratureEndpointFixtures/Variantb1692c02a45eaff5606892ff3359bbf8639f843d9500dbacd47549872964ad14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff935bbe-b50e-b721-7c8b-06e61eb6f65f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cellInterior_integral (N : ℝ) :
    (∫ u in N..(N + 1), cellInterior N u) = (1 / 30 : ℝ) := by
  let F := fun u : ℝ => (u - N) ^ 3 / 3 - (u - N) ^ 4 / 2 + (u - N) ^ 5 / 5
  have hd (u : ℝ) : HasDerivAt F (cellInterior N u) u := by
    have h := (hasDerivAt_id u).sub_const N
    convert (((h.pow 3).div_const 3).sub ((h.pow 4).div_const 2)).add
      ((h.pow 5).div_const 5) using 1 <;> (try rfl)
    dsimp [cellInterior]
    ring
  have hi : IntervalIntegrable (cellInterior N) volume N (N + 1) := by
    apply Continuous.intervalIntegrable
    unfold cellInterior
    fun_prop
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun u _ => hd u) hi]
  dsimp [F]
  norm_num

/-- Zero sampled endpoints do not justify erasing the continuous tail through `N+1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceQuadratureEndpointFixtures/Variantb1692c02a45eaff5606892ff3359bbf8639f843d9500dbacd47549872964ad14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceQuadratureEndpointFixtures/Variantb1692c02a45eaff5606892ff3359bbf8639f843d9500dbacd47549872964ad14.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5eb8df3f7eee90aca538c4cec724099a69922116` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
