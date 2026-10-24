# _root_.NNRat.rawCast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:22aa1a4f3b20904d5ed1b0a6bd75bfeb7ccb07ec064e22b9c39b60a19ff40e60",
  "kind": "def",
  "lexical_name": "_root_.NNRat.rawCast",
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
  "slug": "root-nnrat-rawcast--a5f46a7a48677dd9a126d9e9",
  "source": {
    "blob": "69f1f7c68dbbb8fe65b8a71cb26a128d88252f72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 224,
    "path": "GRWTSK/Algebra/Result/Variantc9bebfeeea746835d5367ffb7ba3e0eb4b56659484ed5998489dd8445ac232ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a5f46a7a48677dd9a126d9e9459a4fa2eb32c2944850d64a27867270f4a6e617",
  "verification": {
    "reference": "docs/verification/Algebra/Result/Variantc9bebfeeea746835d5367ffb7ba3e0eb4b56659484ed5998489dd8445ac232ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:22aa1a4f3b20904d5ed1b0a6bd75bfeb7ccb07ec064e22b9c39b60a19ff40e60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.NNRat.rawCast [DivisionSemiring α] (n : ℕ) (d : ℕ) : α := n / d

/--
A "raw rat cast" is an expression of the form:

* `(Nat.rawCast lit : α)` where `lit` is a raw natural number literal
* `(Int.rawCast (Int.negOfNat lit) : α)` where `lit` is a nonzero raw natural number literal
* `(NNRat.rawCast n d : α)` where `n` is a raw nat literal, `d` is a raw nat literal, and `d` is not
  `1` or `0`.
* `(Rat.rawCast (Int.negOfNat n) d : α)` where `n` is a raw nat literal,
  `d` is a raw nat literal, `n` is not `0`, and `d` is not `1` or `0`.

This representation is used by tactics like `ring` to decrease the number of typeclass arguments
required in each use of a number literal at type `α`.
-/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Result/Variantc9bebfeeea746835d5367ffb7ba3e0eb4b56659484ed5998489dd8445ac232ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Result/Variantc9bebfeeea746835d5367ffb7ba3e0eb4b56659484ed5998489dd8445ac232ab.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69f1f7c68dbbb8fe65b8a71cb26a128d88252f72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
