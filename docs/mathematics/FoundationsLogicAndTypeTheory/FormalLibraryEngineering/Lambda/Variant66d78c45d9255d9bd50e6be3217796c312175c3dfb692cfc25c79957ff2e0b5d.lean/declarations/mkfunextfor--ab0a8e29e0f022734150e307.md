# mkFunextFor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:91e1b071af4ba6b1d6630e95d6e02bd4b8695386d7b6f2fc18fdfc013cf28ff1",
  "kind": "def",
  "lexical_name": "mkFunextFor",
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
  "slug": "mkfunextfor--ab0a8e29e0f022734150e307",
  "source": {
    "blob": "9ca27b416703dfb7975f0128592e8858079767bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 24,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lambda/Variant66d78c45d9255d9bd50e6be3217796c312175c3dfb692cfc25c79957ff2e0b5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ab0a8e29e0f022734150e3071ad42dab11a76d91855ad7693ce3b2a7c1f6c88b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lambda/Variant66d78c45d9255d9bd50e6be3217796c312175c3dfb692cfc25c79957ff2e0b5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:91e1b071af4ba6b1d6630e95d6e02bd4b8695386d7b6f2fc18fdfc013cf28ff1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkFunextFor (xs : Array Expr) (β : Expr) : MetaM Expr := do
  let type ← mkForallFVars xs β
  let v ← getLevel β
  let w ← getLevel type
  withLocalDeclD `f type fun f =>
  withLocalDeclD `g type fun g => do
  let eq := mkApp3 (mkConst ``Eq [v]) β (mkAppN f xs) (mkAppN g xs)
  withLocalDeclD `h (← mkForallFVars xs eq) fun h => do
  let eqv ← mkLambdaFVars #[f, g] (← mkForallFVars xs eq)
  let quotEqv := mkApp2 (mkConst ``Quot [w]) type eqv
  withLocalDeclD `f' quotEqv fun f' => do
  let lift := mkApp6 (mkConst ``Quot.lift [w, v]) type eqv β
    (mkLambda `f .default type (mkAppN (.bvar 0) xs))
    (mkLambda `f .default type (mkLambda `g .default type (mkLambda `h .default (mkApp2 eqv (.bvar 1) (.bvar 0)) (mkAppN (.bvar 0) xs))))
    f'
  let extfunAppVal ← mkLambdaFVars (#[f'] ++ xs) lift
  let extfunApp := extfunAppVal
  let quotSound := mkApp5 (mkConst ``Quot.sound [w]) type eqv f g h
  let Quot_mk_f := mkApp3 (mkConst ``Quot.mk [w]) type eqv f
  let Quot_mk_g := mkApp3 (mkConst ``Quot.mk [w]) type eqv g
  let result := mkApp6 (mkConst ``congrArg [w, w]) quotEqv type Quot_mk_f Quot_mk_g extfunApp quotSound
  let result ← mkLambdaFVars #[f, g, h] result
  return result

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lambda/Variant66d78c45d9255d9bd50e6be3217796c312175c3dfb692cfc25c79957ff2e0b5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lambda/Variant66d78c45d9255d9bd50e6be3217796c312175c3dfb692cfc25c79957ff2e0b5d.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ca27b416703dfb7975f0128592e8858079767bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
