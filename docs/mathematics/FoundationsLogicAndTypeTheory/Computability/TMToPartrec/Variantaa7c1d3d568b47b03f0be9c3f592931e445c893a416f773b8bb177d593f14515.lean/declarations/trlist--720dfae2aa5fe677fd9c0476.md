# trList

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:017ee585591ae0f9b630fc35e49524a2b0883bf8a120b7d6c78e417510f70876",
  "kind": "def",
  "lexical_name": "trList",
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
  "slug": "trlist--720dfae2aa5fe677fd9c0476",
  "source": {
    "blob": "fb06a8d1d2fdf7f1b719bedcdedd992ecff2c380",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 460,
    "line": 447,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variantaa7c1d3d568b47b03f0be9c3f592931e445c893a416f773b8bb177d593f14515.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:720dfae2aa5fe677fd9c04762a3eaa629b1a9fe40d90ebb58d20f60e16fe6ea2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variantaa7c1d3d568b47b03f0be9c3f592931e445c893a416f773b8bb177d593f14515.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:017ee585591ae0f9b630fc35e49524a2b0883bf8a120b7d6c78e417510f70876`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 447–460.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def trList : List ℕ → List Γ'
  | [] => []
  | n::ns => trNat n ++ Γ'.cons :: trList ns

/-- Lists of lists are translated with a `consₗ` after each encoded list.
For example:

    [] = []
    [[]] = [consₗ]
    [[], []] = [consₗ, consₗ]
    [[0]] = [cons, consₗ]
    [[1, 2], [0]] = [bit1, cons, bit0, bit1, cons, consₗ, cons, consₗ]
-/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variantaa7c1d3d568b47b03f0be9c3f592931e445c893a416f773b8bb177d593f14515.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variantaa7c1d3d568b47b03f0be9c3f592931e445c893a416f773b8bb177d593f14515.lean#L447).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb06a8d1d2fdf7f1b719bedcdedd992ecff2c380` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
