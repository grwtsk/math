# reduce_play

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0791f9b8-3d87-4ec0-df1c-aa0a763d2469",
  "kind": "theorem",
  "lexical_name": "reduce_play",
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
  "slug": "reduce-play--69708d6c4fdd600b6de7a61a",
  "source": {
    "blob": "9b47a69433373d0c9e6143e63ec1cd2e0bfbe0a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 38,
    "path": "GRWTSK/Algebra/LinearAlgebra/Reduction/Variant11e0ef6ceb1ca8623b1fde91967ad8d3a134b549888923781d36d926861b65c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69708d6c4fdd600b6de7a61aa8aa20ef015049b79a604e9871cde971da5f6225",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Reduction/Variant11e0ef6ceb1ca8623b1fde91967ad8d3a134b549888923781d36d926861b65c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0791f9b8-3d87-4ec0-df1c-aa0a763d2469`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reduce_play {n : ℕ} (m : ℕ) (A : Matrix (Fin n) (Fin n) ℤ)
    (w : List (Fin n)) (x : Population n) :
    reduce m (play A w x) = playResidue m A w (reduce m x) := by
  induction w generalizing x with
  | nil => rfl
  | cons i w ih =>
    change reduce m (play A w (mutate A i x)) =
      playResidue m A w (mutateResidue m A i (reduce m x))
    rw [ih, reduce_mutate]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Reduction/Variant11e0ef6ceb1ca8623b1fde91967ad8d3a134b549888923781d36d926861b65c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Reduction/Variant11e0ef6ceb1ca8623b1fde91967ad8d3a134b549888923781d36d926861b65c8.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b47a69433373d0c9e6143e63ec1cd2e0bfbe0a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
