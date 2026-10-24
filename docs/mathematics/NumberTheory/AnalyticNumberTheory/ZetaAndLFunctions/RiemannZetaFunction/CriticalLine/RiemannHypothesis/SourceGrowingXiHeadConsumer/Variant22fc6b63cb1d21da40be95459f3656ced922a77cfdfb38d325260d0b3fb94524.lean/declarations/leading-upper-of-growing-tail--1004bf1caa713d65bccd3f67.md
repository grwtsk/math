# leading_upper_of_growing_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5de60b8b-56e7-645e-3f70-a5f15acfe127",
  "kind": "theorem",
  "lexical_name": "leading_upper_of_growing_tail",
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
  "slug": "leading-upper-of-growing-tail--1004bf1caa713d65bccd3f67",
  "source": {
    "blob": "4bb895573f5c15ce101881183185c0855d318459",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 44,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceGrowingXiHeadConsumer/Variant22fc6b63cb1d21da40be95459f3656ced922a77cfdfb38d325260d0b3fb94524.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1004bf1caa713d65bccd3f67fe97b4c6bc4d6dffca29f1bc36fb75815fcf7e57",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceGrowingXiHeadConsumer/Variant22fc6b63cb1d21da40be95459f3656ced922a77cfdfb38d325260d0b3fb94524.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5de60b8b-56e7-645e-3f70-a5f15acfe127`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem leading_upper_of_growing_tail (K Q A : ℝ) (hQ : 91 ≤ Q)
    (hA : max 25600 Q ≤ A) (htail : -K ≤ growingXiTail A) :
    actualLeadingRenormalizedTail A ≤
      growingHeadResidualBudget K Q - (riemannZeta (1 / 2)).re + 3103 / 50 :=
  leading_upper_of_exact_head_tail _ Q A hQ hA
    (completeXiTail_lower_of_growing_tail hQ ((le_max_right _ _).trans hA) htail)

end RH16GrowingXiHeadConsumer
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceGrowingXiHeadConsumer/Variant22fc6b63cb1d21da40be95459f3656ced922a77cfdfb38d325260d0b3fb94524.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceGrowingXiHeadConsumer/Variant22fc6b63cb1d21da40be95459f3656ced922a77cfdfb38d325260d0b3fb94524.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bb895573f5c15ce101881183185c0855d318459` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
