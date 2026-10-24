# not_all_comparators_separate_of_positive_sensitivity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52c41d91-8fc9-ad9e-1527-69c240a9cbc9",
  "kind": "theorem",
  "lexical_name": "not_all_comparators_separate_of_positive_sensitivity",
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
  "slug": "not-all-comparators-separate-of-positive-sensitivity--a3a9dbd471b85697db76b37a",
  "source": {
    "blob": "50614d86285cb257a7c3234588d88eabf0e1349f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 224,
    "path": "GRWTSK/Algebra/LinearAlgebra/ComparatorSeparation/Variantd36edf816a4101c4ecda4975658d42f17f30b0d6272c33fc24a236ec9d9ecb5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3a9dbd471b85697db76b37a52fad55b44615eb146a33732f38bda2c2f2a3a26",
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

Occurrence: `result:52c41d91-8fc9-ad9e-1527-69c240a9cbc9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_all_comparators_separate_of_positive_sensitivity
    (I : LinearIntervention X V) (x : X)
    (hsensitivity : 0 < C.interventionSensitivity I x) :
    ¬ ∀ Q : LinearComparator V, 0 < Q.comparatorGap I x := by
  intro hall
  have hzero :=
    hall (LinearComparator.zero : LinearComparator V)
  rw [LinearComparator.zero_comparatorGap] at hzero
  exact (lt_irrefl 0) hzero

end PositiveCommutingInvolutions

end FormalResearch.PositiveAtlas
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ComparatorSeparation/Variantd36edf816a4101c4ecda4975658d42f17f30b0d6272c33fc24a236ec9d9ecb5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ComparatorSeparation/Variantd36edf816a4101c4ecda4975658d42f17f30b0d6272c33fc24a236ec9d9ecb5e.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50614d86285cb257a7c3234588d88eabf0e1349f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
