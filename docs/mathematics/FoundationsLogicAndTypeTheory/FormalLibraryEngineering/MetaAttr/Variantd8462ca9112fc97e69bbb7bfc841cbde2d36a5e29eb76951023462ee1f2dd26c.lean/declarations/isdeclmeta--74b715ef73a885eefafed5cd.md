# isDeclMeta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b24ace82f5e215ea7b178aeaee9668bdcf24eb84e2e6edbe91412b3423971932",
  "kind": "def",
  "lexical_name": "isDeclMeta",
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
  "slug": "isdeclmeta--74b715ef73a885eefafed5cd",
  "source": {
    "blob": "afe5649175cdf08d2dec870797b69bf93fec8a23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 48,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetaAttr/Variantd8462ca9112fc97e69bbb7bfc841cbde2d36a5e29eb76951023462ee1f2dd26c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:74b715ef73a885eefafed5cd45fcd7aa3ce7b8097880a17c0e3f841e9533b8eb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetaAttr/Variantd8462ca9112fc97e69bbb7bfc841cbde2d36a5e29eb76951023462ee1f2dd26c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b24ace82f5e215ea7b178aeaee9668bdcf24eb84e2e6edbe91412b3423971932`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isDeclMeta (env : Environment) (declName : Name) : Bool :=
  if !env.header.isModule then
    true
  else
    -- The interpreter may call the boxed variant even if the IR does not directly reference it, so
    -- use same visibility as base decl.
    -- Note that boxed decls are created after the `inferVisibility` pass.
    let inferFor := match declName with
      | .str n "_boxed" => n
      | n               => n
    match env.getModuleIdxFor? declName with
    | some idx => declMetaExt.getModuleEntries env idx |>.binSearchContains inferFor Name.quickLt
    | none => declMetaExt.getState env |>.contains inferFor

/-- Marks a declaration to be exported for interpretation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetaAttr/Variantd8462ca9112fc97e69bbb7bfc841cbde2d36a5e29eb76951023462ee1f2dd26c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetaAttr/Variantd8462ca9112fc97e69bbb7bfc841cbde2d36a5e29eb76951023462ee1f2dd26c.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afe5649175cdf08d2dec870797b69bf93fec8a23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
