# thetaTail_two_logSlope_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5d0e1692859d6a86e95fdc3adbb50a07085e26f7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 95,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/17/17034da933a15c6260092b791c1e01b7ade0ccd3af0d5ee1d21c8490de580379.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:db912d47-3b63-a3e8-9e03-acf88257505d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:54b096a8-bf32-e033-35c8-99f01699fc65",
  "kind": "theorem",
  "lexical_name": "thetaTail_two_logSlope_identity",
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
  "slug": "thetatail-two-logslope-identity--27d47ba744bab67dbdf880be",
  "source": {
    "blob": "5d0e1692859d6a86e95fdc3adbb50a07085e26f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 95,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant17034da933a15c6260092b791c1e01b7ade0ccd3af0d5ee1d21c8490de580379.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27d47ba744bab67dbdf880be962776e899493f3929b344db686fa2ecf010eac9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant17034da933a15c6260092b791c1e01b7ade0ccd3af0d5ee1d21c8490de580379.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54b096a8-bf32-e033-35c8-99f01699fc65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaTail_two_logSlope_identity {t : ℝ} (ht : 0 ≤ t) :
    thetaTail 1 t * thetaPhi t + thetaTail 2 t * deriv thetaPhi t =
      ∫ u in Ici t, (u - t) *
        (deriv thetaPhi t * thetaPhi u - thetaPhi t * deriv thetaPhi u) := by
  have hi := thetaPhi_deriv_mul_sub_integrableOn ht
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
    integral_const_mul, thetaPhi_deriv_mul_sub_integral ht]
  have ht2 : thetaTail 2 t = ∫ u in Ici t, thetaPhi u * (u - t) := by simp [thetaTail]
  rw [← ht2]
  ring

/-- The exact weighted identity has a nonnegative source integrand. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant17034da933a15c6260092b791c1e01b7ade0ccd3af0d5ee1d21c8490de580379.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant17034da933a15c6260092b791c1e01b7ade0ccd3af0d5ee1d21c8490de580379.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d0e1692859d6a86e95fdc3adbb50a07085e26f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
