# evalRPow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1bee83b2b10d36b1fcc2a7649af818bd1b5f8a94536e454099bf6697cbc74f05",
  "kind": "def",
  "lexical_name": "evalRPow",
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
  "slug": "evalrpow--35d9ca63ed2abab50672c5eb",
  "source": {
    "blob": "9bea0a4314cce192c863845d04916d940dc85d9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1114,
    "line": 1075,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Real/Variante541db7342a70318ab01fc691563f728adbb28811b3250c085be588be877ff94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:35d9ca63ed2abab50672c5eb1a9fca93bd5e919b58bf04e1ba884876e42705d7",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Real/Variante541db7342a70318ab01fc691563f728adbb28811b3250c085be588be877ff94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1bee83b2b10d36b1fcc2a7649af818bd1b5f8a94536e454099bf6697cbc74f05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1075–1114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalRPow : NormNumExt where eval {u α} e := do
  let .app (.app f (a : Q(ℝ))) (b : Q(ℝ)) ← Lean.Meta.whnfR e | failure
  guard <|← withNewMCtxDepth <| isDefEq f q(HPow.hPow (α := ℝ) (β := ℝ))
  haveI' : u =QL 0 := ⟨⟩
  haveI' : $α =Q ℝ := ⟨⟩
  haveI' h : $e =Q $a ^ $b := ⟨⟩
  h.check
  let (rb : Result b) ← derive (α := q(ℝ)) b
  match rb with
  | .isBool .. | .isRat _ .. => failure
  | .isNat sβ nb pb =>
    match ← derive q($a ^ $nb) with
    | .isBool .. => failure
    | .isNat sα' ne' pe' =>
      assumeInstancesCommute
      haveI' : $sα' =Q AddGroupWithOne.toAddMonoidWithOne := ⟨⟩
      return .isNat sα' ne' q(isNat_rpow_pos $pb $pe')
    | .isNegNat sα' ne' pe' =>
      assumeInstancesCommute
      return .isNegNat sα' ne' q(isInt_rpow_pos $pb $pe')
    | .isRat sα' qe' nume' dene' pe' =>
      assumeInstancesCommute
      return .isRat sα' qe' nume' dene' q(isRat_rpow_pos $pb $pe')
  | .isNegNat sβ nb pb =>
    match ← derive q($a ^ (-($nb : ℤ))) with
    | .isBool .. => failure
    | .isNat sα' ne' pe' =>
      assumeInstancesCommute
      return .isNat sα' ne' q(isNat_rpow_neg $pb $pe')
    | .isNegNat sα' ne' pe' =>
      let _ := q(Real.instRing)
      assumeInstancesCommute
      return .isNegNat sα' ne' q(isInt_rpow_neg $pb $pe')
    | .isRat sα' qe' nume' dene' pe' =>
      assumeInstancesCommute
      return .isRat sα' qe' nume' dene' q(isRat_rpow_neg $pb $pe')

end Mathlib.Meta.NormNum

end Tactics
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Real/Variante541db7342a70318ab01fc691563f728adbb28811b3250c085be588be877ff94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Real/Variante541db7342a70318ab01fc691563f728adbb28811b3250c085be588be877ff94.lean#L1075).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bea0a4314cce192c863845d04916d940dc85d9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
