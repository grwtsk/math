# goalsLocationsToExprs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b323c8861850295df33ea2114534fc32ae4488eeebc9f3c53d75f517ed68065d",
  "kind": "def",
  "lexical_name": "goalsLocationsToExprs",
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
  "slug": "goalslocationstoexprs--867e6c5bab5ad03f2a4c69aa",
  "source": {
    "blob": "888b3b1012086076392c6566594e0ffde4e082b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 39,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectionPanel/Variantabdaf0a9e5a19199f24bcaefee420eede385549a23c3e365c858720f8cd4efee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:867e6c5bab5ad03f2a4c69aae030fc4a4937c177d342a025a74cb71660ac64d4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectionPanel/Variantabdaf0a9e5a19199f24bcaefee420eede385549a23c3e365c858720f8cd4efee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b323c8861850295df33ea2114534fc32ae4488eeebc9f3c53d75f517ed68065d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def goalsLocationsToExprs (args : GoalsLocationsToExprsParams) :
    RequestM (RequestTask GoalsLocationsToExprsResponse) :=
  RequestM.asTask do
    let mut exprs := #[]
    for ⟨⟨ci⟩, loc⟩ in args.locations do
      exprs := exprs.push ⟨← ci.runMetaM {} loc.saveExprWithCtx⟩
    return { exprs }

/-- Display a list of all expressions selected in the goal state, with a choice of which `Expr`
presenter should be used to display each of those expressions.

Expressions can be selected using shift-click. -/
@[widget_module]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectionPanel/Variantabdaf0a9e5a19199f24bcaefee420eede385549a23c3e365c858720f8cd4efee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectionPanel/Variantabdaf0a9e5a19199f24bcaefee420eede385549a23c3e365c858720f8cd4efee.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `888b3b1012086076392c6566594e0ffde4e082b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
