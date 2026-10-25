# mkForallCongrFor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:31037ad2b4ce38166a146f1ea23b87ff086216af3ed7d89fd0d5d23f0fdd3a06",
  "kind": "def",
  "lexical_name": "mkForallCongrFor",
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
  "slug": "mkforallcongrfor--20dbf0c96583bd37ce7e1a33",
  "source": {
    "blob": "a1fa7373ebd17b50d60c799c7f30374b6f6ac2cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 34,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forall/Variant12faf7bd84066f3cc97172c2ce2c11e2f70631cf32637a7d2689fa654950358b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:20dbf0c96583bd37ce7e1a33f01ae7cf69d5dc0c7af7f63d0f30e574f9e77c42",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forall/Variant12faf7bd84066f3cc97172c2ce2c11e2f70631cf32637a7d2689fa654950358b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:31037ad2b4ce38166a146f1ea23b87ff086216af3ed7d89fd0d5d23f0fdd3a06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkForallCongrFor (xs : Array Expr) : MetaM Expr := do
  let prop := mkSort 0
  let type ← mkForallFVars xs prop
  let w ← Meta.getLevel type
  withLocalDeclD `p type fun p =>
  withLocalDeclD `q type fun q => do
  let eq := mkApp3 (mkConst ``Eq [1]) prop (mkAppN p xs) (mkAppN q xs)
  withLocalDeclD `h (← mkForallFVars xs eq) fun h => do
  let eqv ← mkLambdaFVars #[p, q] (← mkForallFVars xs eq)
  let quotEqv := mkApp2 (mkConst ``Quot [w]) type eqv
  withLocalDeclD `p' quotEqv fun p' => do
  let lift := mkApp6 (mkConst ``Quot.lift [w, 1]) type eqv prop
    (mkLambda `p .default type (mkAppN (.bvar 0) xs))
    (mkLambda `p .default type (mkLambda `q .default type (mkLambda `h .default (mkApp2 eqv (.bvar 1) (.bvar 0)) (mkAppN (.bvar 0) xs))))
    p'
  let extfunAppVal ← mkLambdaFVars (#[p'] ++ xs) lift
  let extfunApp := extfunAppVal
  let quotSound := mkApp5 (mkConst ``Quot.sound [w]) type eqv p q h
  let Quot_mk_p := mkApp3 (mkConst ``Quot.mk [w]) type eqv p
  let Quot_mk_q := mkApp3 (mkConst ``Quot.mk [w]) type eqv q
  let p_eq_q := mkApp6 (mkConst ``congrArg [w, w]) quotEqv type Quot_mk_p Quot_mk_q extfunApp quotSound
  let lhs ← mkForallFVars xs (mkAppN p xs)
  let rhs ← mkForallFVars xs (mkAppN q xs)
  let motive ← mkLambdaFVars #[q] (mkApp3 (mkConst ``Eq [1]) prop lhs rhs)
  let rfl := mkApp2 (mkConst ``Eq.refl [1]) prop lhs
  let result := mkApp6 (mkConst ``Eq.ndrec [0, w]) type p motive rfl q p_eq_q
  let result ← mkLambdaFVars #[p, q, h] result
  return result

open Lean.Meta.Sym.Internal

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forall/Variant12faf7bd84066f3cc97172c2ce2c11e2f70631cf32637a7d2689fa654950358b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forall/Variant12faf7bd84066f3cc97172c2ce2c11e2f70631cf32637a7d2689fa654950358b.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1fa7373ebd17b50d60c799c7f30374b6f6ac2cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
