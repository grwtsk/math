# comparisonControls

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e41f919d277291c2a333023f62d41e0372a0efca02bc8ef584cdeccb3f0f12f4",
  "kind": "def",
  "lexical_name": "comparisonControls",
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
  "slug": "comparisoncontrols--46d76c01f823369ae40b8aa0",
  "source": {
    "blob": "81533419894a6f04000e843ba9a869ee5f5fe53c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 21,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TheoremProjectionContractProbe/Variante84bf12fea23d41034f100699010bb1a7b0d569786bd80406379906fe4108372.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:46d76c01f823369ae40b8aa04935e6d5c5a712cae5382376affb51503c759386",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TheoremProjectionContractProbe/Variante84bf12fea23d41034f100699010bb1a7b0d569786bd80406379906fe4108372.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e41f919d277291c2a333023f62d41e0372a0efca02bc8ef584cdeccb3f0f12f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def comparisonControls (v : TheoremVal) : IO (Array Json) := do
  let changed : Array (String × TheoremVal) := #[
    ("name", { v with name := `changed_theorem_name }),
    ("levelParams", { v with levelParams := [`changed_level_parameter] }),
    ("type", { v with type := mkConst ``False }),
    ("value", { v with value := v.type }),
    ("all", { v with all := [`changed_mutual_name] })]
  let mut controls := #[]
  for (field, other) in changed do
    if sameTheorem v other then throw <| IO.userError "THEOREM_PROJECTION_CHANGED_FIELD_ACCEPTED"
    controls := controls.push <| obj [("field", str field), ("same", toJson false),
      ("alpha_same", Json.null), ("class", str "COMPILER_EXECUTED_METADATA_COMPARATOR_NOT_KERNEL_CHECK")]
  let .forallE tn tt tb ti := v.type | throw <| IO.userError "THEOREM_PROJECTION_FORALL_REQUIRED"
  let .lam pn pt pb pi := v.value | throw <| IO.userError "THEOREM_PROJECTION_LAMBDA_REQUIRED"
  if ti != .default || pi != .default then throw <| IO.userError "THEOREM_PROJECTION_EXPLICIT_SELF_REQUIRED"
  let altered : Array (String × Expr × Expr × TheoremVal) := #[
    ("type_binder_name", v.type, .forallE `changed_self tt tb ti, { v with type := .forallE `changed_self tt tb ti }),
    ("type_binder_annotation", v.type, .forallE tn tt tb .implicit, { v with type := .forallE tn tt tb .implicit }),
    ("proof_binder_name", v.value, .lam `changed_self pt pb pi, { v with value := .lam `changed_self pt pb pi }),
    ("proof_binder_annotation", v.value, .lam pn pt pb .implicit, { v with value := .lam pn pt pb .implicit })]
  for (field, original, otherExpr, other) in altered do
    let alphaSame := original == otherExpr
    if sameTheorem v other || !alphaSame then
      throw <| IO.userError "THEOREM_PROJECTION_STRUCTURAL_ALPHA_CONTROL_DISAGREEMENT"
    controls := controls.push <| obj [("field", str field), ("same", toJson false),
      ("alpha_same", toJson alphaSame), ("class", str "COMPILER_EXECUTED_METADATA_COMPARATOR_NOT_KERNEL_CHECK")]
  return controls

/-- Capture only the two existing fixture ready projections in a current context.
The proof is read directly from thmInfo.value; default value? hides theorem values. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TheoremProjectionContractProbe/Variante84bf12fea23d41034f100699010bb1a7b0d569786bd80406379906fe4108372.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TheoremProjectionContractProbe/Variante84bf12fea23d41034f100699010bb1a7b0d569786bd80406379906fe4108372.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81533419894a6f04000e843ba9a869ee5f5fe53c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
