# mkUsesSetNotationForOrderInstance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:67139e7d30d86088c58a91d566b09237baadbc08e1dae70e1e704d9947be787f",
  "kind": "def",
  "lexical_name": "mkUsesSetNotationForOrderInstance",
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
  "slug": "mkusessetnotationfororderinstance--3603a062bb61df3d40e1fca1",
  "source": {
    "blob": "5f9aa5ae61b4be16ad3354fde2299c516b4c9201",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 42,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SetNotationForOrder/Variantee38bf5c105cfc54912fc8cc24d88934f4412e67ed90cffc243d33aa2a4cd550.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3603a062bb61df3d40e1fca1e63935d4a14f039b9c965677ed7ad8fec0337d29",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SetNotationForOrder/Variantee38bf5c105cfc54912fc8cc24d88934f4412e67ed90cffc243d33aa2a4cd550.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:67139e7d30d86088c58a91d566b09237baadbc08e1dae70e1e704d9947be787f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkUsesSetNotationForOrderInstance (declName : Name) (kind : AttributeKind) : CoreM Unit :=
  MetaM.run' do
  let cinfo ← getConstInfo declName
  forallTelescope cinfo.type fun xs _ ↦ do
  let instName := .str declName "instUsesSetNotationForOrder"
  let app := mkAppN (.const declName (cinfo.levelParams.map .param)) xs
  addDecl <| Declaration.defnDecl {
    name := instName
    levelParams := cinfo.levelParams
    type := ← mkForallFVars xs <| ← mkAppM ``UsesSetNotationForOrder #[app]
    value := ← mkLambdaFVars xs <| ← mkAppOptM ``UsesSetNotationForOrder.mk #[app]
    hints := .regular 0
    safety := .safe }
  registerInstance instName kind (eval_prio default)

/-- The `@[use_set_notation_for_order]` attribute marks that order operations on the given type
should use set-style notation. For example, `⊆` for `≤` and `∪` for `⊔`.
This affects both elaboration and delaboration. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SetNotationForOrder/Variantee38bf5c105cfc54912fc8cc24d88934f4412e67ed90cffc243d33aa2a4cd550.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SetNotationForOrder/Variantee38bf5c105cfc54912fc8cc24d88934f4412e67ed90cffc243d33aa2a4cd550.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f9aa5ae61b4be16ad3354fde2299c516b4c9201` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
