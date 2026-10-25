# toyPresentation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cb777d9e7999d949e737487fd10536db60addb8672c6646c3d8f444e9d552c3f",
  "kind": "abbrev",
  "lexical_name": "toyPresentation",
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
  "slug": "toypresentation--becd7a85e696d056c519c701",
  "source": {
    "blob": "dd3b010f8baaadf2749e210209f8006bd9357f3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 143,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Examples/Variante8f30332bbab381e9bec02a6a393ff85086392d0090fc6d2806952b3cb12c4c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:becd7a85e696d056c519c701bc7e4df334e65ab4acdbda1d41b5e208346df007",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/Examples/Variante8f30332bbab381e9bec02a6a393ff85086392d0090fc6d2806952b3cb12c4c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cb777d9e7999d949e737487fd10536db60addb8672c6646c3d8f444e9d552c3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private abbrev toyPresentation : KernelPresentation where
  UniverseContext := List Nat
  LocalContext := List Nat
  Expr := Nat
  ConstantName := String
  RootVariable := Nat
  LeafOrigin := ToyOrigin
  RuleKey := ToyRuleKey
  constantNameDecidableEq := inferInstance
  rootVariableDecidableEq := inferInstance
  leafOriginDecidableEq := inferInstance
  ruleKeyDecidableEq := inferInstance
  judgmentDecidableEq := inferInstance
  primitiveConstants := {"Eq.refl"}
  CtxMorphism := ToyCtxMorphism
  idMorphism := fun _ => .mk
  compMorphism := fun _ _ => .mk
  actJudgment := toyActJudgment
  actJudgment_id := toyActJudgment_id
  actJudgment_comp := toyActJudgment_comp
  UniverseSubstitution := fun _ _ => Unit
  LocalSubstitution := fun _ _ => Unit
  Rule := fun {premises} conclusion =>
    ToyRule (premises := premises) conclusion
  ruleConstantReferences := fun {premises} {conclusion} rule =>
    toyRuleConstants (premises := premises) (conclusion := conclusion) rule
  ruleRootVariables := fun {premises} {conclusion} rule =>
    toyRuleRoots (premises := premises) (conclusion := conclusion) rule
  ruleKey := fun {premises} {conclusion} rule =>
    toyRuleKey (premises := premises) (conclusion := conclusion) rule
  ruleContextMorphism := fun _ _ => .mk
  ruleUniverseSubstitution := fun _ _ => ()
  ruleLocalSubstitution := fun _ _ => ()
  leafOrigin? := toyLeafOrigin?

/-!
## Context action and the elementary `P → P` fixture

The natural numbers below are deliberately just stable expression labels.  The
dependent structure, rather than their numeric values, is what the example
tests.  `identityBody` lives under the locally introduced binder `[0]`, whereas
`identityConclusion` lives in the empty root telescope.
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/Examples/Variante8f30332bbab381e9bec02a6a393ff85086392d0090fc6d2806952b3cb12c4c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Examples/Variante8f30332bbab381e9bec02a6a393ff85086392d0090fc6d2806952b3cb12c4c1.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd3b010f8baaadf2749e210209f8006bd9357f3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
