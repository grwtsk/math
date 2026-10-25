# EuclideanConstructions.rpc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9fc1634f9f17e7e5d2e63b28aa1ba9122d139d98ed272b4459b6cb558d26c6a9",
  "kind": "def",
  "lexical_name": "EuclideanConstructions.rpc",
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
  "slug": "euclideanconstructions-rpc--b5d6ced14ac87a0b89b9a944",
  "source": {
    "blob": "f54f840889b040a07451ae0c07d4fadd446d4df9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 275,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Euclidean/Variantd4455babd33da90ac3fbe369473eeaa1d4a419bd2458df8adca7ef442c7eb60b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b5d6ced14ac87a0b89b9a944bad96e956296693a931cf733cb411a379baeaa7e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Euclidean/Variantd4455babd33da90ac3fbe369473eeaa1d4a419bd2458df8adca7ef442c7eb60b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9fc1634f9f17e7e5d2e63b28aa1ba9122d139d98ed272b4459b6cb558d26c6a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def EuclideanConstructions.rpc (props : PanelWidgetProps) : RequestM (RequestTask Html) :=
  RequestM.asTask do
    let doc ← RequestM.readDoc
    let inner : Html ← (do
      -- Are there any goals unsolved? If so, pick the first one.
      if props.goals.isEmpty then
        return <span>No goals.</span>
      let some g := props.goals[0]? | unreachable!

      -- Execute the next part using the metavariable context and local context of the goal.
      g.ctx.val.runMetaM {} do
        let md ← g.mvarId.getDecl
        let lctx := md.lctx |>.sanitizeNames.run' {options := (← getOptions)}
        Meta.withLCtx lctx md.localInstances do

          -- Grab all hypotheses from the local context.
          let allHyps := (← getLCtx).decls.toArray.filterMap id

          -- Find which hypotheses are selected.
          let selectedHyps ← props.selectedLocations.filterMapM fun
            | ⟨mv, .hyp fv⟩ | ⟨mv, .hypType fv _⟩ =>
              if mv == g.mvarId then return some (← fv.getDecl) else return none
            | _ =>
              return none

          -- Produce the diagram.
          DiagramBuilderM.run do
            addHypotheses allHyps
            constructLines selectedHyps doc.meta props.pos
            match ← DiagramBuilderM.buildDiagram EuclideanDisplay.dsl EuclideanDisplay.sty 1500 with
            | some html => return html
            | none => return <span>No Euclidean goal.</span>)

    -- Return a collapsible `<details>` block around our widget.
    return <details «open»={true}>
        <summary className="mv2 pointer">Euclidean constructions</summary>
        <div className="ml1">{inner}</div>
      </details>

@[widget_module]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Euclidean/Variantd4455babd33da90ac3fbe369473eeaa1d4a419bd2458df8adca7ef442c7eb60b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Euclidean/Variantd4455babd33da90ac3fbe369473eeaa1d4a419bd2458df8adca7ef442c7eb60b.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f54f840889b040a07451ae0c07d4fadd446d4df9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
