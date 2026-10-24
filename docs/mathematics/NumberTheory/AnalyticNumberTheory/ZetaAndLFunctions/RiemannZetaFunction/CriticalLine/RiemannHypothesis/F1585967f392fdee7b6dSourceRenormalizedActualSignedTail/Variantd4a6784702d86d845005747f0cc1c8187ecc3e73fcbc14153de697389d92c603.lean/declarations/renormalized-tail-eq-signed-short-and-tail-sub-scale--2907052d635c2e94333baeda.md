# renormalized_tail_eq_signed_short_and_tail_sub_scale

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5fa2d2f6-8306-b232-3e5d-a5312f2b2d01",
  "kind": "theorem",
  "lexical_name": "renormalized_tail_eq_signed_short_and_tail_sub_scale",
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
  "slug": "renormalized-tail-eq-signed-short-and-tail-sub-scale--2907052d635c2e94333baeda",
  "source": {
    "blob": "1d210a5cd9c9b621abcc08956f418c81db224ab4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 35,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/F1585967f392fdee7b6dSourceRenormalizedActualSignedTail/Variantd4a6784702d86d845005747f0cc1c8187ecc3e73fcbc14153de697389d92c603.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2907052d635c2e94333baeda604c65cb205d4f2f05f212544ff777b92970612b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/F1585967f392fdee7b6dSourceRenormalizedActualSignedTail/Variantd4a6784702d86d845005747f0cc1c8187ecc3e73fcbc14153de697389d92c603.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5fa2d2f6-8306-b232-3e5d-a5312f2b2d01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem renormalized_tail_eq_signed_short_and_tail_sub_scale (A : ℝ) :
    renormalizedActualSignedTail A = signedShortAndComplementaryTail A - A := by
  unfold renormalizedActualSignedTail signedShortAndComplementaryTail
  simp_rw [correctedFourKappaJet_eq_full_positive_jet]

/-- Exact complete pairing keeps the actual head; no early term has been dropped. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/F1585967f392fdee7b6dSourceRenormalizedActualSignedTail/Variantd4a6784702d86d845005747f0cc1c8187ecc3e73fcbc14153de697389d92c603.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/F1585967f392fdee7b6dSourceRenormalizedActualSignedTail/Variantd4a6784702d86d845005747f0cc1c8187ecc3e73fcbc14153de697389d92c603.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d210a5cd9c9b621abcc08956f418c81db224ab4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
