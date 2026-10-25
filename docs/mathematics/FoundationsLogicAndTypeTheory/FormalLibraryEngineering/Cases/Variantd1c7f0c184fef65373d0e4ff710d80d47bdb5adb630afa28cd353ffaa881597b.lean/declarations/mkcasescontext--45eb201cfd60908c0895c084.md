# mkCasesContext?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:177656943a3d977a3ebb69dad58584e7d56a74a5bbd1389022f7236f7e012cdc",
  "kind": "def",
  "lexical_name": "mkCasesContext?",
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
  "slug": "mkcasescontext--45eb201cfd60908c0895c084",
  "source": {
    "blob": "8b2fcb51247d252574de91ea69a367a8b14f0ad1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 176,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variantd1c7f0c184fef65373d0e4ff710d80d47bdb5adb630afa28cd353ffaa881597b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:45eb201cfd60908c0895c084fe451ac9641e04e671128e4b760eaa560f61e8bc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variantd1c7f0c184fef65373d0e4ff710d80d47bdb5adb630afa28cd353ffaa881597b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:177656943a3d977a3ebb69dad58584e7d56a74a5bbd1389022f7236f7e012cdc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def mkCasesContext? (majorFVarId : FVarId) : MetaM (Option Context) := do
  let env ← getEnv
  if !env.contains `Eq || !env.contains `HEq then
    pure none
  else
    let majorDecl ← majorFVarId.getDecl
    let majorType ← whnf majorDecl.type
    majorType.withApp fun f args => matchConstInduct f (fun _ => pure none) fun ival _ =>
      if args.size != ival.numIndices + ival.numParams then pure none
      else if !env.contains (Name.mkStr ival.name "casesOn") then pure none
      else return some {
        inductiveVal  := ival,
        majorDecl     := majorDecl,
        majorTypeFn   := f,
        majorTypeArgs := args
      }

/--
We say the major premise has independent indices IF
1- its type is *not* an indexed inductive family, OR
2- its type is an indexed inductive family, but all indices are distinct free variables, and
   all local declarations different from the major and its indices do not depend on the indices.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variantd1c7f0c184fef65373d0e4ff710d80d47bdb5adb630afa28cd353ffaa881597b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variantd1c7f0c184fef65373d0e4ff710d80d47bdb5adb630afa28cd353ffaa881597b.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b2fcb51247d252574de91ea69a367a8b14f0ad1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
