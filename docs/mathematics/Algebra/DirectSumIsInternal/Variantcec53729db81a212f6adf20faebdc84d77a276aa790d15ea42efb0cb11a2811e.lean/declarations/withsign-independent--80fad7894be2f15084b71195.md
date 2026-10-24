# withSign.independent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2dfe7596d21dc51a8d71642e0e141e5a673de4b58c088ef6034cb14ec0d31be0",
  "kind": "def",
  "lexical_name": "withSign.independent",
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
  "slug": "withsign-independent--80fad7894be2f15084b71195",
  "source": {
    "blob": "77546ffbf961512b767fb9b81e6806ccff232c2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 66,
    "path": "GRWTSK/Algebra/DirectSumIsInternal/Variantcec53729db81a212f6adf20faebdc84d77a276aa790d15ea42efb0cb11a2811e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:80fad7894be2f15084b711957b6871e540f6ed358e79832e0d33954fd76b1fb9",
  "verification": {
    "reference": "docs/verification/Algebra/DirectSumIsInternal/Variantcec53729db81a212f6adf20faebdc84d77a276aa790d15ea42efb0cb11a2811e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2dfe7596d21dc51a8d71642e0e141e5a673de4b58c088ef6034cb14ec0d31be0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def withSign.independent : CompleteLattice.Independent withSign := by
  refine'
    (CompleteLattice.independent_pair UnitsInt.one_ne_neg_one _).mpr withSign.isCompl.disjoint
  intro i
  fin_cases i <;> simp
#align counterexample.with_sign.independent Counterexample.withSign.independent

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/DirectSumIsInternal/Variantcec53729db81a212f6adf20faebdc84d77a276aa790d15ea42efb0cb11a2811e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/DirectSumIsInternal/Variantcec53729db81a212f6adf20faebdc84d77a276aa790d15ea42efb0cb11a2811e.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77546ffbf961512b767fb9b81e6806ccff232c2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
