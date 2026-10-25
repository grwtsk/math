# addRewriteEntry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ceebc1978859ece1c4501d41c2d2f29251fe405fe3b74c09bcdd6bd06b707509",
  "kind": "def",
  "lexical_name": "addRewriteEntry",
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
  "slug": "addrewriteentry--03b25d45fd3c55cb4a88e3b6",
  "source": {
    "blob": "d0a5a65b9e2d0cabd8a46a05baeeb364331aa3dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 128,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibraryRewrite/Variant56ebb8d660651653f9bfe719837cc214248b19cd42e30ec6181916594bae4ecf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:03b25d45fd3c55cb4a88e3b6b151e30d5fd748fb794cd654db18f8f7283b528c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibraryRewrite/Variant56ebb8d660651653f9bfe719837cc214248b19cd42e30ec6181916594bae4ecf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ceebc1978859ece1c4501d41c2d2f29251fe405fe3b74c09bcdd6bd06b707509`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def addRewriteEntry (name : Name) (cinfo : ConstantInfo) :
    MetaM (List (RewriteLemma × List (Key × LazyEntry))) := do
  -- we start with a fast-failing check to see if the lemma has the right shape
  let .const head _ := cinfo.type.getForallBody.getAppFn | return []
  unless head == ``Eq || head == ``Iff do return []
  setMCtx {} -- recall that the metavariable context is not guaranteed to be empty at the start
  let (_, _, eqn) ← forallMetaTelescope cinfo.type
  let some (lhs, rhs) := eqOrIff? eqn | return []
  let badMatch e :=
    e.getAppFn.isMVar ||
    -- this extra check excludes general equality lemmas that apply at any equality
    -- these are almost never useful, and there are very many of them.
    e.eq?.any fun (α, l, r) =>
      α.getAppFn.isMVar && l.getAppFn.isMVar && r.getAppFn.isMVar && l != r
  if badMatch lhs then
    if badMatch rhs then
      return []
    else
      return [({ name, symm := true }, ← initializeLazyEntryWithEta rhs)]
  else
    let result := ({ name, symm := false }, ← initializeLazyEntryWithEta lhs)
    if badMatch rhs || isMVarSwap lhs rhs then
      return [result]
    else
      return [result, ({ name, symm := true }, ← initializeLazyEntryWithEta rhs)]


/-- Try adding the local hypothesis to the `RefinedDiscrTree`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibraryRewrite/Variant56ebb8d660651653f9bfe719837cc214248b19cd42e30ec6181916594bae4ecf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibraryRewrite/Variant56ebb8d660651653f9bfe719837cc214248b19cd42e30ec6181916594bae4ecf.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0a5a65b9e2d0cabd8a46a05baeeb364331aa3dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
