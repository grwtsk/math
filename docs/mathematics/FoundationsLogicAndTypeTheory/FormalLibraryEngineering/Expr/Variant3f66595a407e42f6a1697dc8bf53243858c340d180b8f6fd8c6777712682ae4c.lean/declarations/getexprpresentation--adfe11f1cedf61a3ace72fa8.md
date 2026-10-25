# getExprPresentation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0877a025fb082db3c118034fa7f94ab7f6f310c5c79e01f8f9a0da9eadf2c8f6",
  "kind": "def",
  "lexical_name": "getExprPresentation",
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
  "slug": "getexprpresentation--adfe11f1cedf61a3ace72fa8",
  "source": {
    "blob": "0eb892745f31ad77b2576526e9b7fecd67350f2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 86,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant3f66595a407e42f6a1697dc8bf53243858c340d180b8f6fd8c6777712682ae4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:adfe11f1cedf61a3ace72fa88f5b05b78158a41d6def27130741fe66e6b55502",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant3f66595a407e42f6a1697dc8bf53243858c340d180b8f6fd8c6777712682ae4c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0877a025fb082db3c118034fa7f94ab7f6f310c5c79e01f8f9a0da9eadf2c8f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getExprPresentation : GetExprPresentationParams → RequestM (RequestTask Html)
  | { expr := ⟨expr⟩, name } => RequestM.asTask do
    let ci := expr.ci
    if !exprPresenters.hasTag ci.env name then
      throw <| RequestError.invalidParams s!"The constant '{name}' is not an Expr presenter."
    match evalExprPresenter ci.env ci.options name with
    | .ok p =>
      expr.runMetaM p.present
    | .error e =>
      throw <| RequestError.internalError s!"Failed to evaluate Expr presenter '{name}': {e}"

-- https://leanprover.zulipchat.com/#narrow/stream/287929-mathlib4/topic/deprecation.20warning.20from.20ProofWidgets
attribute [deprecated] getExprPresentation

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant3f66595a407e42f6a1697dc8bf53243858c340d180b8f6fd8c6777712682ae4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant3f66595a407e42f6a1697dc8bf53243858c340d180b8f6fd8c6777712682ae4c.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0eb892745f31ad77b2576526e9b7fecd67350f2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
