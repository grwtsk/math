# rotate3Vertices

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c3a11d71c62ed520ab0faf113e3098c1eeb8689e0ef26a6e7c6d67910573e11c",
  "kind": "def",
  "lexical_name": "rotate3Vertices",
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
  "slug": "rotate3vertices--04bb562dc28eb7612e6d9cbb",
  "source": {
    "blob": "baf2ad9cef0d5ce128b33e34cb6db2af186d4599",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 508,
    "line": 500,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Tests/Variantc631045a0f308f99ad755f90213156ec3b20e177f85935ece86d14b1353488f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:04bb562dc28eb7612e6d9cbb2ecfd47352e9f8df84b34f140c840a0bd2d9a50b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Tests/Variantc631045a0f308f99ad755f90213156ec3b20e177f85935ece86d14b1353488f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c3a11d71c62ed520ab0faf113e3098c1eeb8689e0ef26a6e7c6d67910573e11c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 500–508.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rotate3Vertices : Equiv.Perm (Fin 3) where
  toFun i := ⟨(i.val + 1) % 3, Nat.mod_lt _ (by decide)⟩
  invFun i := ⟨(i.val + 2) % 3, Nat.mod_lt _ (by decide)⟩
  left_inv i := by
    fin_cases i <;> rfl
  right_inv i := by
    fin_cases i <;> rfl

/-- Both orientations of the three edges of a triangle. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Tests/Variantc631045a0f308f99ad755f90213156ec3b20e177f85935ece86d14b1353488f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Tests/Variantc631045a0f308f99ad755f90213156ec3b20e177f85935ece86d14b1353488f9.lean#L500).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `baf2ad9cef0d5ce128b33e34cb6db2af186d4599` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
