# elabSpec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7836c06c3c29b3e3b42afd81ccc955ab6646e07b5822c2fedaa82a86e7229dc7",
  "kind": "def",
  "lexical_name": "elabSpec",
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
  "slug": "elabspec--7ae639063bfcced66dc0065b",
  "source": {
    "blob": "edca26c0ebd8adb2dd49a3b65d5632d2d7f3ac85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 77,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spec/Variantd746b019561bcc592b34774790c7e4be61a2168f815d9a294e4402f4aee04140.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7ae639063bfcced66dc0065b3a4bcc62e40291a13f0120b96d63cab97d3fbe13",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spec/Variantd746b019561bcc592b34774790c7e4be61a2168f815d9a294e4402f4aee04140.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7836c06c3c29b3e3b42afd81ccc955ab6646e07b5822c2fedaa82a86e7229dc7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabSpec (stx? : Option (TSyntax `term)) (wp : Expr) : TacticM SpecTheorem := do
  let_expr f@WP.wp m ps instWP α prog := wp | throwError "target not a wp application {wp}"
  let u := f.constLevels![0]!
  let P ← mkFreshExprMVar (mkApp (mkConst ``Assertion [u]) ps) (userName := `P)
  let Q ← mkFreshExprMVar (mkApp2 (mkConst ``PostCond [u]) α ps) (userName := `Q)
  let expectedTy := mkApp7 (mkConst ``Triple f.constLevels!) m ps instWP α prog P Q
  trace[Elab.Tactic.Do.spec] "spec syntax: {stx?}"
  trace[Elab.Tactic.Do.spec] "expected type: {← instantiateMVars expectedTy}"
  match stx? with
  | none => findSpec (← getSpecTheorems) wp
  | some stx => elabTermIntoSpecTheorem stx expectedTy

variable {n} [Monad n] [MonadControlT MetaM n] [MonadLiftT MetaM n] [MonadEnv n]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spec/Variantd746b019561bcc592b34774790c7e4be61a2168f815d9a294e4402f4aee04140.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spec/Variantd746b019561bcc592b34774790c7e4be61a2168f815d9a294e4402f4aee04140.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edca26c0ebd8adb2dd49a3b65d5632d2d7f3ac85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
