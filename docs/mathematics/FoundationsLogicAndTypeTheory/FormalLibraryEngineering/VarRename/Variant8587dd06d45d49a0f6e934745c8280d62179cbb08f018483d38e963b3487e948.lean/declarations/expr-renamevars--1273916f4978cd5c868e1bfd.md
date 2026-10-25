# Expr.renameVars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2fad0d001bef5cf2e6c3fa6975100da35068a7895f6aad8495d0c39404ea5535",
  "kind": "def",
  "lexical_name": "Expr.renameVars",
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
  "slug": "expr-renamevars--1273916f4978cd5c868e1bfd",
  "source": {
    "blob": "22a6cc1ff3d4bc6c614d85ca197fb2a0ee1a26be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 18,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VarRename/Variant8587dd06d45d49a0f6e934745c8280d62179cbb08f018483d38e963b3487e948.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1273916f4978cd5c868e1bfd43aee66d3d741a87eabc63ceae0bf3c55f44576c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VarRename/Variant8587dd06d45d49a0f6e934745c8280d62179cbb08f018483d38e963b3487e948.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2fad0d001bef5cf2e6c3fa6975100da35068a7895f6aad8495d0c39404ea5535`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def Expr.renameVars (e : Expr) (f : VarRename) : Expr :=
  match e with
  | .zero => e
  | .var x => .var (f x)
  | .neg a => .neg (renameVars a f)
  | .add a b => .add (renameVars a f) (renameVars b f)
  | .sub a b => .sub (renameVars a f) (renameVars b f)
  | .natMul k a => .natMul k (renameVars a f)
  | .intMul k a => .intMul k (renameVars a f)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VarRename/Variant8587dd06d45d49a0f6e934745c8280d62179cbb08f018483d38e963b3487e948.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VarRename/Variant8587dd06d45d49a0f6e934745c8280d62179cbb08f018483d38e963b3487e948.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22a6cc1ff3d4bc6c614d85ca197fb2a0ee1a26be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
