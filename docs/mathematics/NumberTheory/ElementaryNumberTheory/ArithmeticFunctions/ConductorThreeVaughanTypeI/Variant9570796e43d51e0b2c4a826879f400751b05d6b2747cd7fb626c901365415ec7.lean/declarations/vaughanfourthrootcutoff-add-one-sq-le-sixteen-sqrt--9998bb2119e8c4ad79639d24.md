# vaughanFourthRootCutoff_add_one_sq_le_sixteen_sqrt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d3ab861-ccad-fe87-50db-5a18dbf258ee",
  "kind": "lemma",
  "lexical_name": "vaughanFourthRootCutoff_add_one_sq_le_sixteen_sqrt",
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
  "slug": "vaughanfourthrootcutoff-add-one-sq-le-sixteen-sqrt--9998bb2119e8c4ad79639d24",
  "source": {
    "blob": "1d88b210a2df9e2904154f96a351297f9c87221b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 507,
    "line": 489,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variant9570796e43d51e0b2c4a826879f400751b05d6b2747cd7fb626c901365415ec7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9998bb2119e8c4ad79639d24225ee5b6a6ea24db3fc6672706f342daead39e18",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variant9570796e43d51e0b2c4a826879f400751b05d6b2747cd7fb626c901365415ec7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d3ab861-ccad-fe87-50db-5a18dbf258ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 489–507.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma vaughanFourthRootCutoff_add_one_sq_le_sixteen_sqrt
    (N : ℕ) (hN : 2 ≤ N) :
    (vaughanFourthRootCutoff N + 1) ^ 2 ≤
      16 * Nat.sqrt (2 * N) := by
  let U := vaughanFourthRootCutoff N
  have hU : 1 ≤ U := by
    dsimp [U]
    exact (show 1 ≤ 2 by omega).trans (two_le_vaughanFourthRootCutoff N)
  have hU1 : U + 1 ≤ 2 * U := by omega
  have hsq := vaughanFourthRootCutoff_sq_le_four_sqrt N hN
  change (U + 1) ^ 2 ≤ 16 * Nat.sqrt (2 * N)
  calc
    (U + 1) ^ 2 ≤ (2 * U) ^ 2 := by
      simpa [pow_two] using Nat.mul_le_mul hU1 hU1
    _ = 4 * U ^ 2 := by ring
    _ ≤ 4 * (4 * Nat.sqrt (2 * N)) :=
      Nat.mul_le_mul_left 4 hsq
    _ = 16 * Nat.sqrt (2 * N) := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variant9570796e43d51e0b2c4a826879f400751b05d6b2747cd7fb626c901365415ec7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanTypeI/Variant9570796e43d51e0b2c4a826879f400751b05d6b2747cd7fb626c901365415ec7.lean#L489).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d88b210a2df9e2904154f96a351297f9c87221b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
