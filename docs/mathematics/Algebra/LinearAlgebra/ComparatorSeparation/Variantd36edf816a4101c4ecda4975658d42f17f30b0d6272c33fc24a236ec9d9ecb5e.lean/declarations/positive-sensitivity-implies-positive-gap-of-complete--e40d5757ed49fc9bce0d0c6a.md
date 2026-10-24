# positive_sensitivity_implies_positive_gap_of_complete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d42069d0-684f-1575-dd7b-499dc53b66e0",
  "kind": "theorem",
  "lexical_name": "positive_sensitivity_implies_positive_gap_of_complete",
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
  "slug": "positive-sensitivity-implies-positive-gap-of-complete--e40d5757ed49fc9bce0d0c6a",
  "source": {
    "blob": "50614d86285cb257a7c3234588d88eabf0e1349f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 192,
    "path": "GRWTSK/Algebra/LinearAlgebra/ComparatorSeparation/Variantd36edf816a4101c4ecda4975658d42f17f30b0d6272c33fc24a236ec9d9ecb5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e40d5757ed49fc9bce0d0c6a7e929b53df19f5996f58021278352739dbd51425",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ComparatorSeparation/Variantd36edf816a4101c4ecda4975658d42f17f30b0d6272c33fc24a236ec9d9ecb5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d42069d0-684f-1575-dd7b-499dc53b66e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positive_sensitivity_implies_positive_gap_of_complete
    (Q : LinearComparator V) (I : LinearIntervention X V) (x : X)
    (hcomplete : C.ComparatorCompleteFor Q I)
    (hsensitivity : 0 < C.interventionSensitivity I x) :
    0 < Q.comparatorGap I x := by
  have hvisible :=
    (C.interventionSensitivity_pos_iff_visible I x).1 hsensitivity
  exact C.comparatorGap_pos_of_sectorComplete_detects Q I x
    hcomplete.1 (hcomplete.2 x hvisible)

/-- Even sector-completeness alone does not bridge sensitivity to separation:
the zero comparator factors through the (+,-) sector but has zero gap. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ComparatorSeparation/Variantd36edf816a4101c4ecda4975658d42f17f30b0d6272c33fc24a236ec9d9ecb5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ComparatorSeparation/Variantd36edf816a4101c4ecda4975658d42f17f30b0d6272c33fc24a236ec9d9ecb5e.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50614d86285cb257a7c3234588d88eabf0e1349f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
