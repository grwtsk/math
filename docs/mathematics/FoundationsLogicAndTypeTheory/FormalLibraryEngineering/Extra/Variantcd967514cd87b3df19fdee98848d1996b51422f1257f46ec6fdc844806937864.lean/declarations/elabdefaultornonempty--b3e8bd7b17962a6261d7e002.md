# elabDefaultOrNonempty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c2a8b715398bcd2936c6d688ec4528622335cffcd11e3643937087a44d1e5361",
  "kind": "def",
  "lexical_name": "elabDefaultOrNonempty",
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
  "slug": "elabdefaultornonempty--b3e8bd7b17962a6261d7e002",
  "source": {
    "blob": "50f5f9016b8b242b99713959e18d3ee6518df038",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 598,
    "line": 577,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extra/Variantcd967514cd87b3df19fdee98848d1996b51422f1257f46ec6fdc844806937864.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b3e8bd7b17962a6261d7e002d8bfabe875ce4bc46790a9778c543c1b69fbcfb2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extra/Variantcd967514cd87b3df19fdee98848d1996b51422f1257f46ec6fdc844806937864.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c2a8b715398bcd2936c6d688ec4528622335cffcd11e3643937087a44d1e5361`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 577–598.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabDefaultOrNonempty : TermElab :=  fun stx expectedType? => do
  tryPostponeIfNoneOrMVar expectedType?
  match expectedType? with
  | none => throwError "invalid 'default_or_ofNonempty%', expected type is not known"
  | some expectedType =>
    try
      mkDefault expectedType
    catch _ => try
      mkOfNonempty expectedType
    catch _ =>
      if stx[1].isNone then
        throwError "\
          failed to synthesize '{.ofConstName ``Inhabited}' or '{.ofConstName ``Nonempty}' instance for\
          {indentExpr expectedType}\n\
          \n\
          If this type is defined using the 'structure' or 'inductive' command, \
          you can try adding a 'deriving Nonempty' clause to it."
      else
        -- It is in the context of an `unsafe` constant. We can use sorry instead.
        -- Another option is to make a recursive application since it is unsafe.
        mkLabeledSorry expectedType false (unique := true)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extra/Variantcd967514cd87b3df19fdee98848d1996b51422f1257f46ec6fdc844806937864.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extra/Variantcd967514cd87b3df19fdee98848d1996b51422f1257f46ec6fdc844806937864.lean#L577).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50f5f9016b8b242b99713959e18d3ee6518df038` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
