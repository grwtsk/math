# weighted_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b1495efbee543fce6d2fa6c22173b61cd749e0ec",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 53,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f48f3a8d3d93dd32f6449fe7fb420de08accb009928f55c2af3a9a8e18f295f7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7f45a036-23ce-5f6f-3124-1d6f9e7118a8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ffb55b37-57f3-e98b-f924-136b4aeb7cee",
  "kind": "theorem",
  "lexical_name": "weighted_identity",
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
  "slug": "weighted-identity--51fb299fc2e4f332607f84aa",
  "source": {
    "blob": "b1495efbee543fce6d2fa6c22173b61cd749e0ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 53,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/F48f3a8d3d93dd32f6449fe7fb420de08accb009928f55c2af3a9a8e18f295f7Ratio/Variantf48f3a8d3d93dd32f6449fe7fb420de08accb009928f55c2af3a9a8e18f295f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51fb299fc2e4f332607f84aaa32662e6a9f71778386eadfe763f5a04254a9793",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/F48f3a8d3d93dd32f6449fe7fb420de08accb009928f55c2af3a9a8e18f295f7Ratio/Variantf48f3a8d3d93dd32f6449fe7fb420de08accb009928f55c2af3a9a8e18f295f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ffb55b37-57f3-e98b-f924-136b4aeb7cee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem weighted_identity
    (hd : ∀ u : ℝ, 0 ≤ u → DifferentiableAt ℝ thetaPhi u)
    {t : ℝ} (ht : 0 ≤ t)
    (hi : IntegrableOn (fun u => deriv thetaPhi u * (u - t)) (Ici t)) :
    thetaTail 1 t * thetaPhi t + thetaTail 2 t * deriv thetaPhi t =
      ∫ u in Ici t, (u - t) *
        (deriv thetaPhi t * thetaPhi u - thetaPhi t * deriv thetaPhi u) := by
  have hp : IntegrableOn (fun u => thetaPhi u * (u - t)) (Ici t) := by
    simpa only [pow_one, Nat.factorial_one, Nat.cast_one, div_one] using
      thetaTail_integrable 1 ht
  have hf : (fun u => (u - t) *
      (deriv thetaPhi t * thetaPhi u - thetaPhi t * deriv thetaPhi u)) =
      fun u => deriv thetaPhi t * (thetaPhi u * (u - t)) -
        thetaPhi t * (deriv thetaPhi u * (u - t)) := by
    funext u
    ring
  rw [hf, integral_sub (hp.const_mul _) (hi.const_mul _), integral_const_mul,
    integral_const_mul, weighted_deriv_integral hd ht hi]
  have ht2 : thetaTail 2 t = ∫ u in Ici t, thetaPhi u * (u - t) := by simp [thetaTail]
  rw [← ht2]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/F48f3a8d3d93dd32f6449fe7fb420de08accb009928f55c2af3a9a8e18f295f7Ratio/Variantf48f3a8d3d93dd32f6449fe7fb420de08accb009928f55c2af3a9a8e18f295f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/F48f3a8d3d93dd32f6449fe7fb420de08accb009928f55c2af3a9a8e18f295f7Ratio/Variantf48f3a8d3d93dd32f6449fe7fb420de08accb009928f55c2af3a9a8e18f295f7.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1495efbee543fce6d2fa6c22173b61cd749e0ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
