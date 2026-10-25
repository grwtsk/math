# mkFunextFor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:211bb9bb286c68937a3f413e612efa39a25115a7d4dc619deef89ad9f83a4d19",
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
  "slug": "mkfunextfor--b4a0c7e3d23c21b8c724565f",
  "source": {
    "blob": "bf40b8a763bdeb33c0b6abb9dffcce89be76a1a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 32,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lambda/Variantf4580bc182042c4a52213c6df1fe4c02d432ae6a9ae30a5e679d15a2fae37df4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b4a0c7e3d23c21b8c724565ff8048fa39ad9147f7d9d9631775fa2b95a8f58e8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lambda/Variantf4580bc182042c4a52213c6df1fe4c02d432ae6a9ae30a5e679d15a2fae37df4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:211bb9bb286c68937a3f413e612efa39a25115a7d4dc619deef89ad9f83a4d19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–55.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lambda/Variantf4580bc182042c4a52213c6df1fe4c02d432ae6a9ae30a5e679d15a2fae37df4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lambda/Variantf4580bc182042c4a52213c6df1fe4c02d432ae6a9ae30a5e679d15a2fae37df4.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf40b8a763bdeb33c0b6abb9dffcce89be76a1a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
