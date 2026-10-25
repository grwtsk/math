# linearOrderedCommSemiring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:190570f9841ff7ce619ca0f9feba3f8f8337419620ac382fc43c3196ce9eb4d9",
  "kind": "instance",
  "lexical_name": "linearOrderedCommSemiring",
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
  "slug": "linearorderedcommsemiring--b5e3750adc1622aaa8dc3c47",
  "source": {
    "blob": "b3d5f8c44cd0696a289d44d9b11a03203a6be941",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 42,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc4857b9444249b0184ebd0dd3dadbb7623be5e5a263ce6df62d6a5d9148bf5da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b5e3750adc1622aaa8dc3c473939834ccd753c1acb832ad9857f872315560f85",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc4857b9444249b0184ebd0dd3dadbb7623be5e5a263ce6df62d6a5d9148bf5da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:190570f9841ff7ce619ca0f9feba3f8f8337419620ac382fc43c3196ce9eb4d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance linearOrderedCommSemiring : LinearOrderedCommSemiring ℕ :=
  { Nat.commSemiring, Nat.linearOrder with
    lt := Nat.lt, add_le_add_left := @Nat.add_le_add_left,
    le_of_add_le_add_left := @Nat.le_of_add_le_add_left,
    zero_le_one := Nat.le_of_lt (Nat.zero_lt_succ 0),
    mul_lt_mul_of_pos_left := @Nat.mul_lt_mul_of_pos_left,
    mul_lt_mul_of_pos_right := @Nat.mul_lt_mul_of_pos_right,
    exists_pair_ne := ⟨0, 1, ne_of_lt Nat.zero_lt_one⟩ }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc4857b9444249b0184ebd0dd3dadbb7623be5e5a263ce6df62d6a5d9148bf5da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc4857b9444249b0184ebd0dd3dadbb7623be5e5a263ce6df62d6a5d9148bf5da.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3d5f8c44cd0696a289d44d9b11a03203a6be941` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
