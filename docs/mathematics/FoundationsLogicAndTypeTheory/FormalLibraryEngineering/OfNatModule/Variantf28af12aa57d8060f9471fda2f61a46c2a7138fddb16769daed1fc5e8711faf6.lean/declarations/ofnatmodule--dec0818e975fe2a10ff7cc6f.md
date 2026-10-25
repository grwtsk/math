# ofNatModule'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2de6f549d110630c58dbebd56821c2909d3278b4601c14cac08ff3273caab7da",
  "kind": "def",
  "lexical_name": "ofNatModule'",
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
  "slug": "ofnatmodule--dec0818e975fe2a10ff7cc6f",
  "source": {
    "blob": "2645ad24c2c7e100de8d60802503690392a3e514",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 87,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNatModule/Variantf28af12aa57d8060f9471fda2f61a46c2a7138fddb16769daed1fc5e8711faf6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dec0818e975fe2a10ff7cc6fdb3ad73ddfd1e29cb1bec7648839744830e1ed4b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNatModule/Variantf28af12aa57d8060f9471fda2f61a46c2a7138fddb16769daed1fc5e8711faf6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2de6f549d110630c58dbebd56821c2909d3278b4601c14cac08ff3273caab7da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def ofNatModule' (e : Expr) : OfNatModuleM (Expr × Expr) := do
  let s ← getStruct
  let ns ← getNatStruct
  match_expr e with
  | HAdd.hAdd _ _ _ i a b =>
    if isAddInst ns i then
      let (a', ha) ← ofNatModule' a
      let (b', hb) ← ofNatModule' b
      let e' := mkApp2 s.addFn a' b'
      let h := mkApp8 (mkConst ``Grind.IntModule.OfNatModule.add_congr [ns.u]) ns.type ns.natModuleInst a b a' b' ha hb
      pure (e', h)
    else
      mkOfNatModuleVar e
  | HSMul.hSMul _ _ _ i a b =>
    if isSMulInst ns i then
      let (b', hb) ← ofNatModule' b
      let e' := mkApp2 s.nsmulFn a b'
      let h := mkApp6 (mkConst ``Grind.IntModule.OfNatModule.smul_congr [ns.u]) ns.type ns.natModuleInst a b b' hb
      pure (e', h)
    else
      mkOfNatModuleVar e
  | Zero.zero _ i =>
    if isZeroInst ns i then
      let e' := s.zero
      let h := mkApp2 (mkConst ``Grind.IntModule.OfNatModule.toQ_zero [ns.u]) ns.type ns.natModuleInst
      pure (e', h)
    else
      mkOfNatModuleVar e
  | OfNat.ofNat _ _ _ =>
    if (← isDefEqD e ns.zero) then
      let e' := s.zero
      let h := mkApp2 (mkConst ``Grind.IntModule.OfNatModule.toQ_zero [ns.u]) ns.type ns.natModuleInst
      pure (e', h)
    else
      mkOfNatModuleVar e
  | _ => mkOfNatModuleVar e

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNatModule/Variantf28af12aa57d8060f9471fda2f61a46c2a7138fddb16769daed1fc5e8711faf6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNatModule/Variantf28af12aa57d8060f9471fda2f61a46c2a7138fddb16769daed1fc5e8711faf6.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2645ad24c2c7e100de8d60802503690392a3e514` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
