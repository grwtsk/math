# oneRowEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a2d40089a582b95ecc6f97ea4eda07d69465b8df551cf8e31fb9a6f12f1ea4e0",
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
  "slug": "onerowequiv--81e2a6add971cf219793b67c",
  "source": {
    "blob": "d866230c4bf250a4e48d7ccba9714bd9c5790099",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 54,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FieldRows/Variantccb508d22d3b5561c5f3ca8822bf4d5844ce1389119f15ee4a74d2a5acd77497.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:81e2a6add971cf219793b67c0785e9e84c606e46805f0c1ef3cf37f56a5cb82f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/FieldRows/Variantccb508d22d3b5561c5f3ca8822bf4d5844ce1389119f15ee4a74d2a5acd77497.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a2d40089a582b95ecc6f97ea4eda07d69465b8df551cf8e31fb9a6f12f1ea4e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–72.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/FieldRows/Variantccb508d22d3b5561c5f3ca8822bf4d5844ce1389119f15ee4a74d2a5acd77497.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FieldRows/Variantccb508d22d3b5561c5f3ca8822bf4d5844ce1389119f15ee4a74d2a5acd77497.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d866230c4bf250a4e48d7ccba9714bd9c5790099` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
