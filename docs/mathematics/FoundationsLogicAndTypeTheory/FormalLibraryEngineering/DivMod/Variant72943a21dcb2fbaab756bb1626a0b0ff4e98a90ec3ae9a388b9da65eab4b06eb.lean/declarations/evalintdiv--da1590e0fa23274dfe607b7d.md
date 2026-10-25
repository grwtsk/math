# evalIntDiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8873898ed18bb3c292a8f0f5fccf6f33a12936359db25d602bfe721809cecf5b",
  "kind": "def",
  "lexical_name": "evalIntDiv",
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
  "slug": "evalintdiv--da1590e0fa23274dfe607b7d",
  "source": {
    "blob": "8d0b6b00bb7ab87a307413f8d1f1f4df639660c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 45,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant72943a21dcb2fbaab756bb1626a0b0ff4e98a90ec3ae9a388b9da65eab4b06eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:da1590e0fa23274dfe607b7d9d819cc5684299e31dfa1d1eacd42b8d7d54eb80",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant72943a21dcb2fbaab756bb1626a0b0ff4e98a90ec3ae9a388b9da65eab4b06eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8873898ed18bb3c292a8f0f5fccf6f33a12936359db25d602bfe721809cecf5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def evalIntDiv : NormNumExt where eval {u α} e := do
  let .app (.app f (a : Q(ℤ))) (b : Q(ℤ)) ← whnfR e | failure
  -- We assert that the default instance for `HDiv` is `Int.div` when the first parameter is `ℤ`.
  guard <|← withNewMCtxDepth <| isDefEq f q(HDiv.hDiv (α := ℤ))
  haveI' : u =QL 0 := ⟨⟩; haveI' : $α =Q ℤ := ⟨⟩
  haveI' : $e =Q ($a / $b) := ⟨⟩
  let rℤ : Q(Ring ℤ) := q(Int.instRing)
  let ⟨za, na, pa⟩ ← (← derive a).toInt rℤ
  match ← derive (u := .zero) b with
  | .isNat inst nb pb =>
    assumeInstancesCommute
    if nb.natLit! == 0 then
      have _ : $nb =Q nat_lit 0 := ⟨⟩
      return .isNat q(instAddMonoidWithOne) q(nat_lit 0) q(isInt_ediv_zero $pa $pb)
    else
      let ⟨zq, q, p⟩ := core a na za pa b nb pb
      return .isInt rℤ q zq p
  | .isNegNat _ nb pb =>
    assumeInstancesCommute
    let ⟨zq, q, p⟩ := core a na za pa q(-$b) nb q(isNat_neg_of_isNegNat $pb)
    have q' := mkRawIntLit (-zq)
    have : Q(-$q = $q') := (q(Eq.refl $q') :)
    return .isInt rℤ q' (-zq) q(isInt_ediv_neg $p $this)
  | _ => failure
where
  /-- Given a result for evaluating `a b` in `ℤ` where `b > 0`, evaluate `a / b`. -/
  core (a na : Q(ℤ)) (za : ℤ) (pa : Q(IsInt $a $na))
      (b : Q(ℤ)) (nb : Q(ℕ)) (pb : Q(IsNat $b $nb)) :
      ℤ × (q : Q(ℤ)) × Q(IsInt ($a / $b) $q) :=
    let b := nb.natLit!
    let q := za / b
    have nq := mkRawIntLit q
    let r := za.natMod b
    have nr : Q(ℕ) := mkRawNatLit r
    let m := q * b
    have nm := mkRawIntLit m
    have pf₁ : Q($nq * $nb = $nm) := (q(Eq.refl $nm) :)
    have pf₂ : Q($nr + $nm = $na) := (q(Eq.refl $na) :)
    have pf₃ : Q(Nat.blt $nr $nb = true) := (q(Eq.refl true) :)
    ⟨q, nq, q(isInt_ediv $pa $pb $pf₁ $pf₂ $pf₃)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant72943a21dcb2fbaab756bb1626a0b0ff4e98a90ec3ae9a388b9da65eab4b06eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant72943a21dcb2fbaab756bb1626a0b0ff4e98a90ec3ae9a388b9da65eab4b06eb.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d0b6b00bb7ab87a307413f8d1f1f4df639660c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
