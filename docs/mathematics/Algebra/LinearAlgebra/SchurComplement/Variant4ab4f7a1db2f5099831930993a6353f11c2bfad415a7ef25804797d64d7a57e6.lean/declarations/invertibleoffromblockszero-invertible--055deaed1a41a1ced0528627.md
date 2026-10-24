# invertibleOfFromBlocksZero₂₁Invertible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a63c1b09c814fa1ad60a62a8be362176f3731a28d88923cb50e39be3e59423ec",
  "kind": "def",
  "lexical_name": "invertibleOfFromBlocksZero₂₁Invertible",
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
  "slug": "invertibleoffromblockszero-invertible--055deaed1a41a1ced0528627",
  "source": {
    "blob": "e677c02d658b0a799aee2f190b95b3ad631cd1dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 116,
    "path": "GRWTSK/Algebra/LinearAlgebra/SchurComplement/Variant4ab4f7a1db2f5099831930993a6353f11c2bfad415a7ef25804797d64d7a57e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:055deaed1a41a1ced0528627e2579181a71957a6590b8c348ffb3d3903531f36",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SchurComplement/Variant4ab4f7a1db2f5099831930993a6353f11c2bfad415a7ef25804797d64d7a57e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a63c1b09c814fa1ad60a62a8be362176f3731a28d88923cb50e39be3e59423ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def invertibleOfFromBlocksZero₂₁Invertible (A : Matrix m m α) (B : Matrix m n α) (D : Matrix n n α)
    [Invertible (fromBlocks A B 0 D)] : Invertible A × Invertible D where
  fst :=
    invertibleOfLeftInverse _ (⅟ (fromBlocks A B 0 D)).toBlocks₁₁ <| by
      have := invOf_mul_self (fromBlocks A B 0 D)
      rw [← fromBlocks_toBlocks (⅟ (fromBlocks A B 0 D)), fromBlocks_multiply] at this
      replace := congr_arg Matrix.toBlocks₁₁ this
      simpa only [Matrix.toBlocks_fromBlocks₁₁, Matrix.mul_zero, add_zero, ← fromBlocks_one] using
        this
  snd :=
    invertibleOfRightInverse _ (⅟ (fromBlocks A B 0 D)).toBlocks₂₂ <| by
      have := mul_invOf_self (fromBlocks A B 0 D)
      rw [← fromBlocks_toBlocks (⅟ (fromBlocks A B 0 D)), fromBlocks_multiply] at this
      replace := congr_arg Matrix.toBlocks₂₂ this
      simpa only [Matrix.toBlocks_fromBlocks₂₂, Matrix.zero_mul, zero_add, ← fromBlocks_one] using
        this

/-- Both diagonal entries of an invertible lower-block-triangular matrix are invertible (by reading
off the diagonal entries of the inverse). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SchurComplement/Variant4ab4f7a1db2f5099831930993a6353f11c2bfad415a7ef25804797d64d7a57e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SchurComplement/Variant4ab4f7a1db2f5099831930993a6353f11c2bfad415a7ef25804797d64d7a57e6.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e677c02d658b0a799aee2f190b95b3ad631cd1dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
