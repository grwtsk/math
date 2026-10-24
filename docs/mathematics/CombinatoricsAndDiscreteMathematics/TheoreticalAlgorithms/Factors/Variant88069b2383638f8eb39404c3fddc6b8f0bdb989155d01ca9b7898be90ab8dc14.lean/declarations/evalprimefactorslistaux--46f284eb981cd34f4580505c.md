# evalPrimeFactorsListAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:df8f2ff2c2ed73604ebb4681cf73bded5c993a3523e8125301fe44cbbe11d00f",
  "kind": "def",
  "lexical_name": "evalPrimeFactorsListAux",
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
  "slug": "evalprimefactorslistaux--46f284eb981cd34f4580505c",
  "source": {
    "blob": "81aecc146d95b9cf3eed6334771d3a8be146e125",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 75,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Factors/Variant88069b2383638f8eb39404c3fddc6b8f0bdb989155d01ca9b7898be90ab8dc14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:46f284eb981cd34f4580505cef307a010a69029e02912331d56d72ab7c1e4e32",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Factors/Variant88069b2383638f8eb39404c3fddc6b8f0bdb989155d01ca9b7898be90ab8dc14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:df8f2ff2c2ed73604ebb4681cf73bded5c993a3523e8125301fe44cbbe11d00f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def evalPrimeFactorsListAux
    {en enl : Q(ℕ)} {ea eal : Q(ℕ)} (ehn : Q(IsNat $en $enl)) (eha : Q(IsNat $ea $eal)) :
    MetaM ((l : Q(List ℕ)) × Q(FactorsHelper $en $ea $l)) := do
  /-
  In this function we will use the convention that all `e` prefixed variables (proofs or otherwise)
  contain `Expr`s. The variables starting with `h` are proofs about the _meta_ code;
  these will not actually be used in the construction of the proof, and are simply used to help the
  reader reason about why the proof construction is correct.
  -/
  let n := enl.natLit!
  let ⟨hn0⟩ ← if h : 0 < n then pure <| PLift.up h else
    throwError m!"{enl} must be positive"
  let a := eal.natLit!
  let b := n.minFac
  let ⟨hab⟩ ← if h : a ≤ b then pure <| PLift.up h else
    throwError m!"{q($eal < $(enl).minFac)} does not hold"
  if h_bn : b < n then
    -- the factor is less than `n`, so we are not done; remove it to get `m`
    let m := n / b
    have em : Q(ℕ) := mkRawNatLit m
    have ehm : Q(IsNat (OfNat.ofNat $em) $em) := q(⟨rfl⟩)
    if h_ba_eq : b = a then
      -- if the factor is our minimum `a`, then recurse without changing the minimum
      have eh : Q($eal * $em = $en) :=
        have : a * m = n := by simp [m, b, ← h_ba_eq, Nat.mul_div_cancel' (minFac_dvd _)]
        (q(Eq.refl $en) : Expr)
      let ehp₁ := q(isNat_mul rfl $eha $ehm $eh)
      let ⟨el, ehp₂⟩ ← evalPrimeFactorsListAux ehm eha
      pure ⟨q($ea :: $el), q(($ehp₂).cons_self _ $ehp₁)⟩
    else
      -- Otherwise when we recurse, we should use `b` as the new minimum factor. Note that
      -- we must use `evalMinFac.core` to get a proof that `b` is what we computed it as.
      have eb : Q(ℕ) := mkRawNatLit b
      have ehb : Q(IsNat (OfNat.ofNat $eb) $eb) := q(⟨rfl⟩)
      have ehbm : Q($eb * $em = $en) :=
        have : b * m = n := Nat.mul_div_cancel' (minFac_dvd _)
        (q(Eq.refl $en) : Expr)
      have ehp₁ := q(isNat_mul rfl $ehb $ehm $ehbm)
      have ehp₂ : Q(Nat.blt $ea $eb = true) :=
        have : a < b := lt_of_le_of_ne' hab h_ba_eq
        (q(Eq.refl (true)) : Expr)
      let .isNat _ lit ehp₃ ← evalMinFac.core q($eb) q(inferInstance) q($eb) ehb b | failure
      assertInstancesCommute
      have : $lit =Q $eb := ⟨⟩
      let ⟨l, p₄⟩ ← evalPrimeFactorsListAux ehm ehb
      pure ⟨q($eb :: $l), q(($p₄).cons _ $ehp₁ $ehp₂ $ehp₃ )⟩
  else
    -- the factor is our number itself, so we are done
    have hbn_eq : b = n := (minFac_le hn0).eq_or_lt.resolve_right h_bn
    if hba : b = a then
      have eh : Q($en = $ea) :=
        have : n = a := hbn_eq.symm.trans hba
        (q(Eq.refl $en) : Expr)
      pure ⟨q([$ea]), q($eh ▸ FactorsHelper.singleton_self $ea)⟩
    else do
      let eh_a_lt_n : Q(Nat.blt $ea $en = true) :=
        have : a < n := by lia
        (q(Eq.refl true) : Expr)
      let .isNat _ lit ehn_minFac ← evalMinFac.core q($en) q(inferInstance) q($enl) ehn n | failure
      have : $lit =Q $en := ⟨⟩
      assertInstancesCommute
      pure ⟨q([$en]), q(FactorsHelper.singleton $en $eh_a_lt_n $ehn_minFac)⟩

/-- Given a natural number `n`, returns `(l, ⊢ Nat.primeFactorsList n = l)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Factors/Variant88069b2383638f8eb39404c3fddc6b8f0bdb989155d01ca9b7898be90ab8dc14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Factors/Variant88069b2383638f8eb39404c3fddc6b8f0bdb989155d01ca9b7898be90ab8dc14.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81aecc146d95b9cf3eed6334771d3a8be146e125` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
