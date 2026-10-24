# roots_square_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:435f145e-b7b9-8e16-c438-88017ef4a277",
  "kind": "lemma",
  "lexical_name": "roots_square_sum",
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
  "slug": "roots-square-sum--640d331f5c1dbfc2a8205b1b",
  "source": {
    "blob": "fde7d2d557e699b2217bebe895aa8a507401ad67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 186,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiSectionObstruction/Variantdd888beb0b3d5eb6a33355dfcabfd56984648017906c32cb7c51c8c95dba18ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:640d331f5c1dbfc2a8205b1bd3d6e7662ffa7148e3c59a5d1cf1b79a6cd7c651",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiSectionObstruction/Variantdd888beb0b3d5eb6a33355dfcabfd56984648017906c32cb7c51c8c95dba18ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:435f145e-b7b9-8e16-c438-88017ef4a277`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma roots_square_sum (s : Multiset ℂ) :
    (s.map (· ^ 2)).sum = s.esymm 1 ^ 2 - 2 * s.esymm 2 := by
  induction s using Multiset.induction_on with
  | empty => norm_num [Multiset.esymm, Multiset.powersetCard_zero_right]
  | cons x s ih =>
    rw [Multiset.map_cons, Multiset.sum_cons, ih,
      esymm_cons_succ s x 0, esymm_cons_succ s x 1]
    have h0 : s.esymm 0 = 1 := by simp [Multiset.esymm]
    rw [h0]
    ring

/-- Vieta and Newton identities give the exact root-square sum, counting multiplicities. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiSectionObstruction/Variantdd888beb0b3d5eb6a33355dfcabfd56984648017906c32cb7c51c8c95dba18ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiSectionObstruction/Variantdd888beb0b3d5eb6a33355dfcabfd56984648017906c32cb7c51c8c95dba18ea.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fde7d2d557e699b2217bebe895aa8a507401ad67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
