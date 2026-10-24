# GaloisCoinsertion.ofDual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:de986551a46c0f1a9aaaebb98023cf584324c98eb5cf9c703d541a724e279b71",
  "kind": "def",
  "lexical_name": "GaloisCoinsertion.ofDual",
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
  "slug": "galoiscoinsertion-ofdual--1d6b0f1e1d68ba9eb30f2c53",
  "source": {
    "blob": "c58fdb6b9d9381eec45a3b81468a1f2b4941a974",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 308,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantb5b6e01786e74af1c48e6356c4b6b9e684b59be7845e921d53627b40265a355f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1d6b0f1e1d68ba9eb30f2c53f223bce2f98401c3ca94b99d083de507cbe65ad5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantb5b6e01786e74af1c48e6356c4b6b9e684b59be7845e921d53627b40265a355f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:de986551a46c0f1a9aaaebb98023cf584324c98eb5cf9c703d541a724e279b71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 308–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def GaloisCoinsertion.ofDual [Preorder α] [Preorder β] {l : αᵒᵈ → βᵒᵈ} {u : βᵒᵈ → αᵒᵈ} :
    GaloisCoinsertion l u → GaloisInsertion (ofDual ∘ u ∘ toDual) (ofDual ∘ l ∘ toDual) :=
  fun x => ⟨x.1, x.2.dual, x.3, x.4⟩
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantb5b6e01786e74af1c48e6356c4b6b9e684b59be7845e921d53627b40265a355f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantb5b6e01786e74af1c48e6356c4b6b9e684b59be7845e921d53627b40265a355f.lean#L308).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c58fdb6b9d9381eec45a3b81468a1f2b4941a974` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
