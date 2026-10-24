# emultiplicity_eq_count_normalizedFactors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b5e4030-5158-f136-957f-b82619907bcb",
  "kind": "theorem",
  "lexical_name": "emultiplicity_eq_count_normalizedFactors",
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
  "slug": "emultiplicity-eq-count-normalizedfactors--d13d43b5f8a9f7fee02b36de",
  "source": {
    "blob": "a6b46a504790ab71115e26535f8dbe7c03b3bcee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 101,
    "path": "GRWTSK/Algebra/RingTheory/Multiplicity/Variantb45d39e2902efc5f8e14bd7d1031622e4dc25d6ebef2b5695108455d41938b6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d13d43b5f8a9f7fee02b36deafdc70e92e0f0d73972fdcfa21f3f36ad9e99532",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Multiplicity/Variantb45d39e2902efc5f8e14bd7d1031622e4dc25d6ebef2b5695108455d41938b6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b5e4030-5158-f136-957f-b82619907bcb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem emultiplicity_eq_count_normalizedFactors {a b : R} (ha : Irreducible a) (hb : b ≠ 0) :
    emultiplicity a b = (normalizedFactors b).count (normalize a) := by
  apply le_antisymm
  · apply Order.le_of_lt_add_one
    rw [← Nat.cast_one, ← Nat.cast_add, lt_iff_not_ge,
      le_emultiplicity_iff_replicate_le_normalizedFactors ha hb, ← le_count_iff_replicate_le]
    simp
  rw [le_emultiplicity_iff_replicate_le_normalizedFactors ha hb, ← le_count_iff_replicate_le]

/-- The multiplicity of an irreducible factor of a nonzero element is exactly the number of times
the normalized factor occurs in the `normalizedFactors`.

For a version using `emultiplicity`, see `emultiplicity_eq_count_normalizedFactors`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Multiplicity/Variantb45d39e2902efc5f8e14bd7d1031622e4dc25d6ebef2b5695108455d41938b6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Multiplicity/Variantb45d39e2902efc5f8e14bd7d1031622e4dc25d6ebef2b5695108455d41938b6f.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6b46a504790ab71115e26535f8dbe7c03b3bcee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
