# modifyGetGlobalRuleSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8296c0c9c093d8a452883ece3fc7522b194753f86452a43911facbd696c06143",
  "kind": "def",
  "lexical_name": "modifyGetGlobalRuleSet",
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
  "slug": "modifygetglobalruleset--e286ec7cbd833efc4925700f",
  "source": {
    "blob": "d58be6491974b86c5aff870fe087ae66d5fcb8ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 105,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variantdfe17adeb5676b5182022bb3fa852e1a216d1396b04950b0e736fbf83a05942e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e286ec7cbd833efc4925700f46d78cc33756f5dd8b84b07fa219c25cd48ced02",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variantdfe17adeb5676b5182022bb3fa852e1a216d1396b04950b0e736fbf83a05942e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8296c0c9c093d8a452883ece3fc7522b194753f86452a43911facbd696c06143`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def modifyGetGlobalRuleSet (rsName : RuleSetName)
    (f : GlobalRuleSet → α × GlobalRuleSet) : m α := do
  let (ext, _, simpExt, _, simprocExt) ← getGlobalRuleSetData rsName
  let env ← getEnv
  let base := ext.getState env
  let simpTheorems := simpExt.getState env
  let simprocs := simprocExt.getState env
  let env := ext.modifyState env λ _ => default     -- an attempt to preserve linearity
  let env := simpExt.modifyState env λ _ => default -- ditto
  let env := simprocExt.modifyState env λ _ => default -- ditto
  let rs := { base with simpTheorems, simprocs }
  let (a, rs) := f rs
  let env := ext.modifyState env λ _ => rs.toBaseRuleSet
  let env := simpExt.modifyState env λ _ => rs.simpTheorems
  setEnv env
  return a

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variantdfe17adeb5676b5182022bb3fa852e1a216d1396b04950b0e736fbf83a05942e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variantdfe17adeb5676b5182022bb3fa852e1a216d1396b04950b0e736fbf83a05942e.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d58be6491974b86c5aff870fe087ae66d5fcb8ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
