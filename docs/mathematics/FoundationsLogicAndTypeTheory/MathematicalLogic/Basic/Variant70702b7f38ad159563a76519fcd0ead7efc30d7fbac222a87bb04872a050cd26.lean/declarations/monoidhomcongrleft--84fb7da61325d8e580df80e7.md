# monoidHomCongrLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2056b39856aabad6f53d775bc6b467f930197f74613ef89799be707a5ffdbffd",
  "kind": "def",
  "lexical_name": "monoidHomCongrLeft",
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
  "slug": "monoidhomcongrleft--84fb7da61325d8e580df80e7",
  "source": {
    "blob": "894c142453ed6bbe58dc2dac32b706451d67ec3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 151,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant70702b7f38ad159563a76519fcd0ead7efc30d7fbac222a87bb04872a050cd26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:84fb7da61325d8e580df80e7b9217ea6f1e4f56f62b396b7f8adfb62652c7b3b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant70702b7f38ad159563a76519fcd0ead7efc30d7fbac222a87bb04872a050cd26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2056b39856aabad6f53d775bc6b467f930197f74613ef89799be707a5ffdbffd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def monoidHomCongrLeft (e : M₁ ≃* M₂) : (M₁ →* N) ≃* (M₂ →* N) where
  __ := e.monoidHomCongrLeftEquiv
  map_mul' f g := by ext; simp

/-- The isomorphism `(M →* N₁) ≃* (M →* N₂)` obtained by postcomposition with
a multiplicative equivalence `e : N₁ ≃* N₂`. -/
@[to_additive (attr := simps! apply)
/-- The isomorphism `(M →+ N₁) ≃+ (M →+ N₂)` obtained by postcomposition with
an additive equivalence `e : N₁ ≃+ N₂`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant70702b7f38ad159563a76519fcd0ead7efc30d7fbac222a87bb04872a050cd26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant70702b7f38ad159563a76519fcd0ead7efc30d7fbac222a87bb04872a050cd26.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `894c142453ed6bbe58dc2dac32b706451d67ec3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
