# invertibleOfFromBlocksZero₁₂Invertible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f8e9fcac1242bd013c682194d7aeebbe51b4b666c86fc109ac7f364fecd0d431",
  "kind": "def",
  "lexical_name": "invertibleOfFromBlocksZero₁₂Invertible",
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
  "slug": "invertibleoffromblockszero-invertible--52b00fcd17d6707f0e38597c",
  "source": {
    "blob": "27418df2c626cc39a3a437b5a9d02a4b3c62b3b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 138,
    "path": "GRWTSK/Algebra/LinearAlgebra/SchurComplement/Variant829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:52b00fcd17d6707f0e38597c93680532249f7d7ea2429bc85c060cafaef2f9cb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SchurComplement/Variant829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f8e9fcac1242bd013c682194d7aeebbe51b4b666c86fc109ac7f364fecd0d431`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def invertibleOfFromBlocksZero₁₂Invertible (A : Matrix m m α) (C : Matrix n m α) (D : Matrix n n α)
    [Invertible (fromBlocks A 0 C D)] : Invertible A × Invertible D where
  fst :=
    invertibleOfRightInverse _ (⅟ (fromBlocks A 0 C D)).toBlocks₁₁ <| by
      have := mul_invOf_self (fromBlocks A 0 C D)
      rw [← fromBlocks_toBlocks (⅟ (fromBlocks A 0 C D)), fromBlocks_multiply] at this
      replace := congr_arg Matrix.toBlocks₁₁ this
      simpa only [Matrix.toBlocks_fromBlocks₁₁, Matrix.zero_mul, add_zero, ← fromBlocks_one] using
        this
  snd :=
    invertibleOfLeftInverse _ (⅟ (fromBlocks A 0 C D)).toBlocks₂₂ <| by
      have := invOf_mul_self (fromBlocks A 0 C D)
      rw [← fromBlocks_toBlocks (⅟ (fromBlocks A 0 C D)), fromBlocks_multiply] at this
      replace := congr_arg Matrix.toBlocks₂₂ this
      simpa only [Matrix.toBlocks_fromBlocks₂₂, Matrix.mul_zero, zero_add, ← fromBlocks_one] using
        this
#align matrix.invertible_of_from_blocks_zero₁₂_invertible Matrix.invertibleOfFromBlocksZero₁₂Invertible

/-- `invertibleOfFromBlocksZero₂₁Invertible` and `Matrix.fromBlocksZero₂₁Invertible` form
an equivalence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SchurComplement/Variant829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SchurComplement/Variant829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27418df2c626cc39a3a437b5a9d02a4b3c62b3b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
