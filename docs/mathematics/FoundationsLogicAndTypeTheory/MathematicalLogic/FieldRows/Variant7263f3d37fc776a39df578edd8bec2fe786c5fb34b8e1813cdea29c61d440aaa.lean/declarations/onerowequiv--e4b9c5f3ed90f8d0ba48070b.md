# oneRowEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b035397a8eddfba100c640f11d79304c9515bbc66ddc685c3ca0153add68f70f",
  "kind": "def",
  "lexical_name": "oneRowEquiv",
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
  "slug": "onerowequiv--e4b9c5f3ed90f8d0ba48070b",
  "source": {
    "blob": "a0372bd42ff78b59f89b9c9d155fccc9aab117f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 46,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FieldRows/Variant7263f3d37fc776a39df578edd8bec2fe786c5fb34b8e1813cdea29c61d440aaa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e4b9c5f3ed90f8d0ba48070bc8e2a61de4db58d603332053f7f657bd9de66774",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/FieldRows/Variant7263f3d37fc776a39df578edd8bec2fe786c5fb34b8e1813cdea29c61d440aaa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b035397a8eddfba100c640f11d79304c9515bbc66ddc685c3ca0153add68f70f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def oneRowEquiv (r : Nat) : BinMat 1 r ≃ Bits r where
  toFun M j := M 0 j
  invFun bits _ j := bits j
  left_inv M := by
    ext i j
    have hi : i = (0 : Fin 1) := Subsingleton.elim _ _
    subst i
    rfl
  right_inv bits := by
    funext j
    rfl

namespace RowFieldEncoding

variable {F : Type u}
variable [Field F] [Fintype F] [Algebra BinMatGalois.GF2 F]
variable {r : Nat}

/-- The selected field model, viewed directly as an `r`-bit row encoding. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/FieldRows/Variant7263f3d37fc776a39df578edd8bec2fe786c5fb34b8e1813cdea29c61d440aaa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FieldRows/Variant7263f3d37fc776a39df578edd8bec2fe786c5fb34b8e1813cdea29c61d440aaa.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0372bd42ff78b59f89b9c9d155fccc9aab117f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
