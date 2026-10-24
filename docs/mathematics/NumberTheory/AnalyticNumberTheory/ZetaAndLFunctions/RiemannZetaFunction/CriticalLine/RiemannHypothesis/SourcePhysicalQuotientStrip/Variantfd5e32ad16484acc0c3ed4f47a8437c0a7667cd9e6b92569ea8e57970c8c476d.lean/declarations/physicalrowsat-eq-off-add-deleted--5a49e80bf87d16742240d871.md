# physicalRowsAt_eq_off_add_deleted

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3023c25a-b080-628a-a871-2be01a17955c",
  "kind": "theorem",
  "lexical_name": "physicalRowsAt_eq_off_add_deleted",
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
  "slug": "physicalrowsat-eq-off-add-deleted--5a49e80bf87d16742240d871",
  "source": {
    "blob": "375c50675488dc075f75a0b8609d18d91c948816",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 165,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalQuotientStrip/Variantfd5e32ad16484acc0c3ed4f47a8437c0a7667cd9e6b92569ea8e57970c8c476d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a49e80bf87d16742240d871d6c3e62a32d7252bb0dfe4d1a2551e641c98b6dd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalQuotientStrip/Variantfd5e32ad16484acc0c3ed4f47a8437c0a7667cd9e6b92569ea8e57970c8c476d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3023c25a-b080-628a-a871-2be01a17955c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem physicalRowsAt_eq_off_add_deleted (A : ℝ) (d U : ℕ) :
    physicalQuotientRowsAt A d U =
      physicalQuotientOffRowsAt A d U + physicalQuotientDeletedRowsAt A d U := by
  classical
  unfold physicalQuotientRowsAt physicalQuotientOffRowsAt physicalQuotientDeletedRowsAt
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m _
  rw [← mul_add, ← Finset.sum_add_distrib]
  congr 1
  apply Finset.sum_congr rfl
  intro k _
  by_cases h : d * k = m
  · rw [if_neg (not_not.mpr h), if_pos h, zero_add]
  · rw [if_pos h, if_neg h, add_zero]

/-- The owning multiples reindexer retains physical n=d*k unequal-index deletion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalQuotientStrip/Variantfd5e32ad16484acc0c3ed4f47a8437c0a7667cd9e6b92569ea8e57970c8c476d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalQuotientStrip/Variantfd5e32ad16484acc0c3ed4f47a8437c0a7667cd9e6b92569ea8e57970c8c476d.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `375c50675488dc075f75a0b8609d18d91c948816` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
