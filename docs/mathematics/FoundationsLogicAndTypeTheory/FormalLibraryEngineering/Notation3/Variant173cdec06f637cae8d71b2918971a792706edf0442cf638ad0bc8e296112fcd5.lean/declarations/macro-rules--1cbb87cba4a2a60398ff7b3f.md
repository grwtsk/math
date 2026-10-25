# Anonymous macro_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:16ee8dc34f9fa93119b9bca31bbb8204d2f2a7c14145ae8abe976366da97fb13",
  "kind": "macro_rules",
  "lexical_name": null,
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
  "slug": "macro-rules--1cbb87cba4a2a60398ff7b3f",
  "source": {
    "blob": "da3495eb27113446f9245c878a4937b20f43410c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 51,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation3/Variant173cdec06f637cae8d71b2918971a792706edf0442cf638ad0bc8e296112fcd5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1cbb87cba4a2a60398ff7b3fcf79bd09709bb19606aec2f1c7b10da43d3b9456",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation3/Variant173cdec06f637cae8d71b2918971a792706edf0442cf638ad0bc8e296112fcd5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `macro_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:16ee8dc34f9fa93119b9bca31bbb8204d2f2a7c14145ae8abe976366da97fb13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
macro_rules
  | `(expand_binders% ($x => $term) ($y:ident $[: $ty]?) $binders*, $res) => do
    let ty := ty.getD (← `(_))
    term.replaceM fun x' ↦ do
      unless x == x' do return none
      `(fun $y:ident : $ty ↦ expand_binders% ($x => $term) $[$binders]*, $res)
  | `(expand_binders% ($x => $term) (_%$ph $[: $ty]?) $binders*, $res) => do
    let ty := ty.getD (← `(_))
    term.replaceM fun x' ↦ do
      unless x == x' do return none
      `(fun _%$ph : $ty ↦ expand_binders% ($x => $term) $[$binders]*, $res)
  | `(expand_binders% ($x => $term) ($y:binderIdent $pred:binderPred) $binders*, $res) => do
    let y ←
      match y with
      | `(binderIdent| $y:ident) => pure y
      | `(binderIdent| _)        => Term.mkFreshIdent y
      | _                        => Macro.throwUnsupported
    term.replaceM fun x' ↦ do
      unless x == x' do return none
      `(fun $y:ident ↦ expand_binders% ($x => $term) (h : satisfies_binder_pred% $y $pred)
        $[$binders]*, $res)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation3/Variant173cdec06f637cae8d71b2918971a792706edf0442cf638ad0bc8e296112fcd5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation3/Variant173cdec06f637cae8d71b2918971a792706edf0442cf638ad0bc8e296112fcd5.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da3495eb27113446f9245c878a4937b20f43410c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
