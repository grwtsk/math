# mixedRadix_lt_cardinality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:640df783-1680-dc58-d885-66e63b0a991d",
  "kind": "theorem",
  "lexical_name": "mixedRadix_lt_cardinality",
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
  "slug": "mixedradix-lt-cardinality--a95030db6b159089725fcc9f",
  "source": {
    "blob": "c1f80e1f153e2885b2df1c816915586bef8a5fde",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 149,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/InductiveFamilies/FamilyExamples/FiniteIndexTypes/MixedRadixCoordinateFibers/Variante097301879a07848/FiniteProductEquivalence.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a95030db6b159089725fcc9f5d81dbbdcd4dfd4c7c0dfdb0bdf3d16371f3efb1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/InductiveFamilies/FamilyExamples/FiniteIndexTypes/MixedRadixCoordinateFibers/Variante097301879a07848/FiniteProductEquivalence.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:640df783-1680-dc58-d885-66e63b0a991d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mixedRadix_lt_cardinality
    {radices : List Nat}
    (coordinate : CoordinateFiber radices) :
    mixedRadix coordinate < cardinality radices := by
  induction radices with
  | nil =>
      cases coordinate
      simp [mixedRadix, cardinality]
  | cons radix tail inductionHypothesis =>
      have headBound : coordinate.1.val < radix := coordinate.1.isLt
      have tailBound : mixedRadix coordinate.2 < cardinality tail :=
        inductionHypothesis coordinate.2
      calc
        mixedRadix coordinate =
            coordinate.1.val + radix * mixedRadix coordinate.2 := rfl
        _ < radix + radix * mixedRadix coordinate.2 :=
          Nat.add_lt_add_right headBound _
        _ = radix * (mixedRadix coordinate.2 + 1) := by
          rw [Nat.mul_add, Nat.mul_one, Nat.add_comm]
        _ ≤ radix * cardinality tail :=
          Nat.mul_le_mul_left radix (Nat.succ_le_iff.mpr tailBound)
        _ = cardinality (radix :: tail) := rfl

/-- Exact documented mixed-radix equivalence for any nonempty-axis list. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/InductiveFamilies/FamilyExamples/FiniteIndexTypes/MixedRadixCoordinateFibers/Variante097301879a07848/FiniteProductEquivalence.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/InductiveFamilies/FamilyExamples/FiniteIndexTypes/MixedRadixCoordinateFibers/Variante097301879a07848/FiniteProductEquivalence.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1f80e1f153e2885b2df1c816915586bef8a5fde` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
