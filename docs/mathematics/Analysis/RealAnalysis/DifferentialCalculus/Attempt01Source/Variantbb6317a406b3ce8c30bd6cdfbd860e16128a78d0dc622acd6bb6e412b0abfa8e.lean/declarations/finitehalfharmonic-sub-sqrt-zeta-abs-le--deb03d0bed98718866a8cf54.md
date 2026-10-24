# finiteHalfHarmonic_sub_sqrt_zeta_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:179c339c-402c-3946-3f79-c74401e31405",
  "kind": "theorem",
  "lexical_name": "finiteHalfHarmonic_sub_sqrt_zeta_abs_le",
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
  "slug": "finitehalfharmonic-sub-sqrt-zeta-abs-le--deb03d0bed98718866a8cf54",
  "source": {
    "blob": "55e9a44b130979cefac66bbb7a7d836724d16d01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 122,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt01Source/Variantbb6317a406b3ce8c30bd6cdfbd860e16128a78d0dc622acd6bb6e412b0abfa8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:deb03d0bed98718866a8cf5441ad73aaac72f4cf08e45218155dc39137bfe346",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt01Source/Variantbb6317a406b3ce8c30bd6cdfbd860e16128a78d0dc622acd6bb6e412b0abfa8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:179c339c-402c-3946-3f79-c74401e31405`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteHalfHarmonic_sub_sqrt_zeta_abs_le (L : ℕ) (hL : 1 ≤ L) :
    |finiteHalfHarmonic L - 2 * Real.sqrt (L : ℝ) -
      (riemannZeta (1 / 2 : ℂ)).re| ≤ 1 / Real.sqrt (L : ℝ) := by
  rw [finiteHalfHarmonic_eq_sqrt_zeta_tail L hL]
  have ht := halfHarmonicFractionalTail_bounds L hL
  have he : 2 * Real.sqrt (L : ℝ) + (riemannZeta (1 / 2 : ℂ)).re +
      halfHarmonicFractionalTail L - 2 * Real.sqrt (L : ℝ) -
      (riemannZeta (1 / 2 : ℂ)).re = halfHarmonicFractionalTail L := by ring
  rw [he, abs_of_nonneg ht.1]
  exact ht.2

end
end FormalResearch.RiemannHypothesis.SourceActualHalfHarmonicZeta
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt01Source/Variantbb6317a406b3ce8c30bd6cdfbd860e16128a78d0dc622acd6bb6e412b0abfa8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt01Source/Variantbb6317a406b3ce8c30bd6cdfbd860e16128a78d0dc622acd6bb6e412b0abfa8e.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55e9a44b130979cefac66bbb7a7d836724d16d01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
