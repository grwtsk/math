# isSimpEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bfd92503943cb34e136729bbac5f2c0f29fbdf22883e42a3fd93878e232001b0",
  "kind": "def",
  "lexical_name": "isSimpEq",
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
  "slug": "issimpeq--47c5fbedaf6732371ace439c",
  "source": {
    "blob": "958785cbd78c2dd6e71ca6ae9af50cb3888cfd49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 84,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant4b6e51033fe43d776aec3fcdd191d1296d9e0274e9620c448ce1de97abee333e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:47c5fbedaf6732371ace439c6713d4b30925f2b9f36656a4e6baf4ba7f8a528c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant4b6e51033fe43d776aec3fcdd191d1296d9e0274e9620c448ce1de97abee333e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bfd92503943cb34e136729bbac5f2c0f29fbdf22883e42a3fd93878e232001b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isSimpEq (a b : Expr) (whnfFirst := true) : MetaM Bool := withReducible do
  let a ← if whnfFirst then whnf a else pure a
  let b ← if whnfFirst then whnf b else pure b
  if a.getAppFn.constName? != b.getAppFn.constName? then return false
  -- By default we use the old `isDefEq` behavior that does not respect transparency when
  -- checking implicit arguments. Without this, `simp`/`dsimp` changes to implicit arguments
  -- (e.g. unfolding carrier types) would cause false positives.
  -- Set `linter.simpNF.respectTransparency` to `true` to use the stricter behavior,
  -- which catches simp lemmas that rely on defeq abuse through type synonyms.
  let rt := linter.simpNF.respectTransparency.get (← getOptions)
  withOptions (fun opts => opts.setBool `backward.isDefEq.respectTransparency rt) do
    isDefEq a b

/-- Constructs a message from all the simp theorems encoded in the given type. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant4b6e51033fe43d776aec3fcdd191d1296d9e0274e9620c448ce1de97abee333e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant4b6e51033fe43d776aec3fcdd191d1296d9e0274e9620c448ce1de97abee333e.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `958785cbd78c2dd6e71ca6ae9af50cb3888cfd49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
