# thetaTailRankThreeNumerator_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:31957bca-3fac-5508-86b4-b615b6c0f6d6",
  "kind": "theorem",
  "lexical_name": "thetaTailRankThreeNumerator_eq",
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
  "slug": "thetatailrankthreenumerator-eq--6a7371ef17704b8d7cae8598",
  "source": {
    "blob": "e5a232c1cd82756a27a2c11a8f2b6fe1857d6af9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 45,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantd0e0e299e4f160f47cbf9467c88dcff593085527fd64386436c58632d4264dfc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a7371ef17704b8d7cae8598b6f7e8789c34d163e29cb1338a51f758ee3be4a5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantd0e0e299e4f160f47cbf9467c88dcff593085527fd64386436c58632d4264dfc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31957bca-3fac-5508-86b4-b615b6c0f6d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaTailRankThreeNumerator_eq (t : ℝ) :
    thetaTailRankThreeNumerator t =
      thetaPhi t *
        (deriv (deriv thetaPhi) t *
          (thetaTail 4 t * thetaTail 1 t - thetaTail 3 t * thetaTail 2 t) +
        deriv thetaPhi t * (thetaPhi t * thetaTail 4 t - thetaTail 2 t ^ 2) +
        thetaPhi t * (thetaPhi t * thetaTail 3 t - thetaTail 2 t * thetaTail 1 t)) := by
  unfold thetaTailRankThreeNumerator
  rw [thetaTailGap_zero_succ 1, thetaTailGap_zero_succ 3]
  exact rankThree_compound_numerator_identity _ _ _ _ _ _ _

/-- Differentiation of the compound ratio is legitimate, including at zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantd0e0e299e4f160f47cbf9467c88dcff593085527fd64386436c58632d4264dfc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantd0e0e299e4f160f47cbf9467c88dcff593085527fd64386436c58632d4264dfc.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5a232c1cd82756a27a2c11a8f2b6fe1857d6af9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
