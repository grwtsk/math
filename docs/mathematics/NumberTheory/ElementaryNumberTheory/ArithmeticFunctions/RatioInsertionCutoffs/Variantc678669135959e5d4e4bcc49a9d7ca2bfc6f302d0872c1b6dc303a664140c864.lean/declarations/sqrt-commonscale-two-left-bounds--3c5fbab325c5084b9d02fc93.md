# sqrt_commonScale_two_left_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d82da5ec-5dc4-72c5-a618-d02b237a3b35",
  "kind": "theorem",
  "lexical_name": "sqrt_commonScale_two_left_bounds",
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
  "slug": "sqrt-commonscale-two-left-bounds--3c5fbab325c5084b9d02fc93",
  "source": {
    "blob": "e745262b43ccc7257b4bed65c95c5bc264e50fce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 63,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffs/Variantc678669135959e5d4e4bcc49a9d7ca2bfc6f302d0872c1b6dc303a664140c864.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c5fbab325c5084b9d02fc93b97d538c6f87e55d8918be6e154abfac47f28cfa",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffs/Variantc678669135959e5d4e4bcc49a9d7ca2bfc6f302d0872c1b6dc303a664140c864.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d82da5ec-5dc4-72c5-a618-d02b237a3b35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sqrt_commonScale_two_left_bounds (N u v : ℕ) (hu : 1 ≤ u) :
    Nat.sqrt ((N / max u v) / 2) ≤ Nat.sqrt (N / max (2*u) v) ∧
      Nat.sqrt (N / max (2*u) v) ≤ Nat.sqrt (N / max u v) := by
  exact ⟨Nat.sqrt_le_sqrt (commonScale_two_left_bounds N u v hu).1,
    Nat.sqrt_le_sqrt (commonScale_two_left_bounds N u v hu).2⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffs/Variantc678669135959e5d4e4bcc49a9d7ca2bfc6f302d0872c1b6dc303a664140c864.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffs/Variantc678669135959e5d4e4bcc49a9d7ca2bfc6f302d0872c1b6dc303a664140c864.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e745262b43ccc7257b4bed65c95c5bc264e50fce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
