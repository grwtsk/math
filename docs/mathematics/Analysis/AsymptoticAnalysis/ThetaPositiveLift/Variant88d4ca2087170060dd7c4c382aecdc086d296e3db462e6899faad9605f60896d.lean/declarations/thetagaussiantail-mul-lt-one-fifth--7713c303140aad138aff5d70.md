# thetaGaussianTail_mul_lt_one_fifth

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe88fc41-e112-266b-2f79-16d4e6bb1303",
  "kind": "theorem",
  "lexical_name": "thetaGaussianTail_mul_lt_one_fifth",
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
  "slug": "thetagaussiantail-mul-lt-one-fifth--7713c303140aad138aff5d70",
  "source": {
    "blob": "839473362e74b673c214b0fb14370732e61032ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 148,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant88d4ca2087170060dd7c4c382aecdc086d296e3db462e6899faad9605f60896d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7713c303140aad138aff5d709d27ee3d9a7baa3d1a232682b1a332d2013be9ce",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant88d4ca2087170060dd7c4c382aecdc086d296e3db462e6899faad9605f60896d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe88fc41-e112-266b-2f79-16d4e6bb1303`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaGaussianTail_mul_lt_one_fifth {A : ℝ} (hA : 3 ≤ A) :
    A * (∑' m : ℕ, ((m : ℝ) + 2) ^ 8 *
      Real.exp (-A * (((m : ℝ) + 2) ^ 2 - 1))) < 1 / 5 := by
  change A * (∑' m, gaussianMode A m) < 1 / 5
  have h := ((gaussian_summable hA).mul_left A).tsum_le_tsum
    (gaussian_mul_le_three hA) (gaussian_three_summable.mul_left 3)
  rw [tsum_mul_left, tsum_mul_left] at h
  linarith [gaussian_three_tsum_lt]

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant88d4ca2087170060dd7c4c382aecdc086d296e3db462e6899faad9605f60896d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant88d4ca2087170060dd7c4c382aecdc086d296e3db462e6899faad9605f60896d.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `839473362e74b673c214b0fb14370732e61032ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
