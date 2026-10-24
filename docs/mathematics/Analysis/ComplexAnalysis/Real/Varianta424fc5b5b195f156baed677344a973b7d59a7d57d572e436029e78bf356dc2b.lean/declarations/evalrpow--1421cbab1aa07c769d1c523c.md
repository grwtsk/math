# evalRPow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:379dacf9fa6aa2e52162cc0197f0647861dad6d40ada3e0e9b062e69e96c14ce",
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
  "slug": "evalrpow--1421cbab1aa07c769d1c523c",
  "source": {
    "blob": "4305a837cf361c51094868adeed1c53106a2e913",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1122,
    "line": 1083,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Real/Varianta424fc5b5b195f156baed677344a973b7d59a7d57d572e436029e78bf356dc2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1421cbab1aa07c769d1c523cf1f82bab5d4847d9f81d017fba554890b6720d20",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Real/Varianta424fc5b5b195f156baed677344a973b7d59a7d57d572e436029e78bf356dc2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:379dacf9fa6aa2e52162cc0197f0647861dad6d40ada3e0e9b062e69e96c14ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1083–1122.

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

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Real/Varianta424fc5b5b195f156baed677344a973b7d59a7d57d572e436029e78bf356dc2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Real/Varianta424fc5b5b195f156baed677344a973b7d59a7d57d572e436029e78bf356dc2b.lean#L1083).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4305a837cf361c51094868adeed1c53106a2e913` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
