# IsPrefixFree.tsum_one_div_card_pow_length_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d4c9b2ce-adb9-57b8-bc08-5d6d4c4ce20d",
  "kind": "theorem",
  "lexical_name": "IsPrefixFree.tsum_one_div_card_pow_length_le_one",
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
  "slug": "isprefixfree-tsum-one-div-card-pow-length-le-one--8213bef050845cca014b25d3",
  "source": {
    "blob": "4b2dfe7f8246f067c7afcb075a83daecdc025d5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 79,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Kraft/Varianteddad61b12815de017ad437f14e1f08d23bcef6443c8ef141eb6753938269a78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8213bef050845cca014b25d3382caa2a3f1065a1fbd2afce9a7b03311ec81458",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Kraft/Varianteddad61b12815de017ad437f14e1f08d23bcef6443c8ef141eb6753938269a78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4c9b2ce-adb9-57b8-bc08-5d6d4c4ce20d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPrefixFree.tsum_one_div_card_pow_length_le_one
    {S : Set (List α)} (hS : IsPrefixFree S) :
    ∑' w : S, (1 / (Fintype.card α : ℝ)) ^ (w : List α).length ≤ 1 :=
  hS.summable_one_div_card_pow_length.tsum_le_of_sum_le
    hS.finsetSum_one_div_card_pow_length_of_subtype

end InformationTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Kraft/Varianteddad61b12815de017ad437f14e1f08d23bcef6443c8ef141eb6753938269a78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Kraft/Varianteddad61b12815de017ad437f14e1f08d23bcef6443c8ef141eb6753938269a78.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b2dfe7f8246f067c7afcb075a83daecdc025d5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
