# fold

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:02fe7cafa2f748366c4884c2d406ec7032b338e78e22c33b8d487a2f82ffd7d5",
  "kind": "def",
  "lexical_name": "fold",
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
  "slug": "fold--dc8d2debb4668bff643502c2",
  "source": {
    "blob": "10cac8d26883aa289b87a82b59a581d9b42ed556",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 630,
    "line": 617,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variant2cb01c96c43a3d8d3112730cbd60d8dba49b147b0d522e5ab8980098065399a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dc8d2debb4668bff643502c2a7ca1dea0ac809acfacd80dd4121a76d2b13ad96",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variant2cb01c96c43a3d8d3112730cbd60d8dba49b147b0d522e5ab8980098065399a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:02fe7cafa2f748366c4884c2d406ec7032b338e78e22c33b8d487a2f82ffd7d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 617–630.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fold {β} (z : β) (f : β → α → β → β) : Ordnode α → β
  | nil => z
  | node _ l x r => f (fold z f l) x (fold z f r)
#align ordnode.fold Ordnode.fold

/- warning: ordnode.foldl -> Ordnode.foldl is a dubious translation:
lean 3 declaration is
  forall {α : Type.{u1}} {β : Sort.{u2}}, (β -> α -> β) -> β -> (Ordnode.{u1} α) -> β
but is expected to have type
  forall {α : Type.{u2}} {β : Sort.{u1}}, (β -> α -> β) -> β -> (Ordnode.{u2} α) -> β
Case conversion may be inaccurate. Consider using '#align ordnode.foldl Ordnode.foldlₓ'. -/
/-- O(n). Fold a function from left to right (in increasing order) across the tree.

     foldl f z {1, 2, 4} = f (f (f z 1) 2) 4 -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variant2cb01c96c43a3d8d3112730cbd60d8dba49b147b0d522e5ab8980098065399a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variant2cb01c96c43a3d8d3112730cbd60d8dba49b147b0d522e5ab8980098065399a1.lean#L617).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10cac8d26883aa289b87a82b59a581d9b42ed556` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
