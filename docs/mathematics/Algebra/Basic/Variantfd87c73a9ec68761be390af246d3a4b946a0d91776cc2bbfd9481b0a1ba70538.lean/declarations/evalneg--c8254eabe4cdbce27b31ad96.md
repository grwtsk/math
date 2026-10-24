# evalNeg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e8561ee3fbb063439baf7bcb41d7c2d6a129d43c39b9f49692fd2ea5643b2a53",
  "kind": "def",
  "lexical_name": "evalNeg",
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
  "slug": "evalneg--c8254eabe4cdbce27b31ad96",
  "source": {
    "blob": "7536d6a75dcc19c666c709cbd6af53b6a95e678d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 277,
    "path": "GRWTSK/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c8254eabe4cdbce27b31ad961c347a18cfa3575644c1aca6571de5d4ba85b5b6",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e8561ee3fbb063439baf7bcb41d7c2d6a129d43c39b9f49692fd2ea5643b2a53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 277–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[norm_num -_] def evalNeg : NormNumExt where eval {u α} e := do
  let .app (f : Q($α → $α)) (a : Q($α)) ← whnfR e | failure
  let ra ← derive a
  let rα ← inferRing α
  let ⟨(_f_eq : $f =Q Neg.neg)⟩ ← withNewMCtxDepth <| assertDefEqQ _ _
  haveI' _e_eq : $e =Q -$a := ⟨⟩
  let rec
  /-- Main part of `evalNeg`. -/
  core : Option (Result e) := do
    let intArm (rα : Q(Ring $α)) := do
      assumeInstancesCommute
      let ⟨za, na, pa⟩ ← ra.toInt rα
      let zb := -za
      have b := mkRawIntLit zb
      haveI' : Int.neg $na =Q $b := ⟨⟩
      return .isInt rα b zb q(isInt_neg (f := $f) (.refl $f) $pa (.refl $b))
    let ratArm (dα : Q(DivisionRing $α)) : Option (Result _) := do
      assumeInstancesCommute
      let ⟨qa, na, da, pa⟩ ← ra.toRat' dα
      let qb := -qa
      have nb := mkRawIntLit qb.num
      haveI' : Int.neg $na =Q $nb := ⟨⟩
      return .isRat' dα qb nb da q(isRat_neg (f := $f) (.refl $f) $pa (.refl $nb))
    match ra with
    | .isBool _ .. => failure
    | .isNat _ .. => intArm rα
    | .isNegNat rα .. => intArm rα
    | .isRat dα .. => ratArm dα
  core

-- see note [norm_num lemma function equality]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean#L277).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7536d6a75dcc19c666c709cbd6af53b6a95e678d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
