# evalMulProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:85de8d39974163383e0721ecbdb28962cbb641d827e2b7f15d7267697ff850d0",
  "kind": "def",
  "lexical_name": "evalMulProd",
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
  "slug": "evalmulprod--e63e11bb0e80313d6def932d",
  "source": {
    "blob": "961976da577530921d5f6220ce4ed143b8e30aee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 452,
    "line": 419,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1add6dac4afd3d5b1395bb8da86d5bf074e69e5a13f909194999c0989dabe967.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e63e11bb0e80313d6def932d5d382cc3f844542434922537a0cc2b51370a50ec",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1add6dac4afd3d5b1395bb8da86d5bf074e69e5a13f909194999c0989dabe967.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:85de8d39974163383e0721ecbdb28962cbb641d827e2b7f15d7267697ff850d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 419–452.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def evalMulProd {a b : Q($α)} (va : ExProd sα a) (vb : ExProd sα b) :
    Lean.Core.CoreM <| Result (ExProd sα) q($a * $b) := do
  Lean.Core.checkSystem decl_name%.toString
  match va, vb with
  | .const za ha, .const zb hb =>
    if za = 1 then
      return ⟨b, .const zb hb, (q(one_mul $b) : Expr)⟩
    else if zb = 1 then
      return ⟨a, .const za ha, (q(mul_one $a) : Expr)⟩
    else
      let ra := Result.ofRawRat za a ha; let rb := Result.ofRawRat zb b hb
      let rc := (NormNum.evalMul.core q($a * $b) q(HMul.hMul) _ _
          q(CommSemiring.toSemiring) ra rb).get!
      let ⟨zc, hc⟩ := rc.toRatNZ.get!
      let ⟨c, pc⟩ := rc.toRawEq
      return ⟨c, .const zc hc, pc⟩
  | .mul (x := a₁) (e := a₂) va₁ va₂ va₃, .const _ _ =>
    let ⟨_, vc, pc⟩ ← evalMulProd va₃ vb
    return ⟨_, .mul va₁ va₂ vc, (q(mul_pf_left $a₁ $a₂ $pc) : Expr)⟩
  | .const _ _, .mul (x := b₁) (e := b₂) vb₁ vb₂ vb₃ =>
    let ⟨_, vc, pc⟩ ← evalMulProd va vb₃
    return ⟨_, .mul vb₁ vb₂ vc, (q(mul_pf_right $b₁ $b₂ $pc) : Expr)⟩
  | .mul (x := xa) (e := ea) vxa vea va₂, .mul (x := xb) (e := eb) vxb veb vb₂ => do
    if vxa.eq vxb then
      if let some (.nonzero ⟨_, ve, pe⟩) ← (evalAddOverlap sℕ vea veb).run then
        let ⟨_, vc, pc⟩ ← evalMulProd va₂ vb₂
        return ⟨_, .mul vxa ve vc, (q(mul_pp_pf_overlap $xa $pe $pc) : Expr)⟩
    if let .lt := (vxa.cmp vxb).then (vea.cmp veb) then
      let ⟨_, vc, pc⟩ ← evalMulProd va₂ vb
      return ⟨_, .mul vxa vea vc, (q(mul_pf_left $xa $ea $pc) : Expr)⟩
    else
      let ⟨_, vc, pc⟩ ← evalMulProd va vb₂
      return ⟨_, .mul vxb veb vc, (q(mul_pf_right $xb $eb $pc) : Expr)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1add6dac4afd3d5b1395bb8da86d5bf074e69e5a13f909194999c0989dabe967.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1add6dac4afd3d5b1395bb8da86d5bf074e69e5a13f909194999c0989dabe967.lean#L419).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `961976da577530921d5f6220ce4ed143b8e30aee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
