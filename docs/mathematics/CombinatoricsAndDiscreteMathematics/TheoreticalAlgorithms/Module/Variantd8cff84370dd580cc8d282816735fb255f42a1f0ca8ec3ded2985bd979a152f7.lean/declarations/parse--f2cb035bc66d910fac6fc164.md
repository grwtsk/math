# parse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c9f4385f29f62dfcd997dd74bd683cdb0f15372dec35ee019628e9d0e15286e8",
  "kind": "def",
  "lexical_name": "parse",
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
  "slug": "parse--f2cb035bc66d910fac6fc164",
  "source": {
    "blob": "43836e28bca10b34099d788c97d2f1ae074d6a6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 484,
    "line": 418,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f2cb035bc66d910fac6fc164e6738ade548de2ccbbbf09ed4421d3d541e4a33d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c9f4385f29f62dfcd997dd74bd683cdb0f15372dec35ee019628e9d0e15286e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 418–484.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def parse (iM : Q(AddCommMonoid $M)) (x : Q($M)) :
    AtomM (Σ u : Level, Σ R : Q(Type u), Σ iR : Q(Semiring $R), Σ _ : Q(@Module $R $M $iR $iM),
      Σ l : qNF R M, Q($x = NF.eval $(l.toNF))) := do
  match x with
  /- parse an addition: `x₁ + x₂` -/
  | ~q($x₁ + $x₂) =>
    let ⟨_, _, _, iRM₁, l₁', pf₁'⟩ ← parse iM x₁
    let ⟨_, _, _, iRM₂, l₂', pf₂'⟩ ← parse iM x₂
    -- lift from the semirings of scalars parsed from `x₁`, `x₂` (say `R₁`, `R₂`) to `R₁ ⊗ R₂`
    let ⟨u, R, iR, iRM, ⟨l₁, pf₁⟩, ⟨l₂, pf₂⟩, _⟩ ← qNF.matchRings iRM₁ _ iRM₂ l₁' l₂' q(0) q(0)
    -- build the new list and proof
    let pf := qNF.mkAddProof iRM l₁ l₂
    pure ⟨u, R, iR, iRM, qNF.add iR l₁ l₂, (q(NF.add_eq_eval $pf₁' $pf₂' $pf₁ $pf₂ $pf):)⟩
  /- parse a subtraction: `x₁ - x₂` -/
  | ~q(@HSub.hSub _ _ _ (@instHSub _ $iM') $x₁ $x₂) =>
    let ⟨_, _, _, iRM₁, l₁'', pf₁''⟩ ← parse iM x₁
    let ⟨_, _, _, iRM₂, l₂'', pf₂''⟩ ← parse iM x₂
    -- lift from the semirings of scalars parsed from `x₁`, `x₂` (say `R₁`, `R₂`) to `R₁ ⊗ R₂ ⊗ ℤ`
    let iZ := q(Int.instSemiring)
    let iMZ ← synthInstanceQ q(Module ℤ $M)
    let ⟨_, _, _, iRM₁', ⟨l₁', pf₁'⟩, _, _⟩ ← qNF.matchRings iRM₁ iZ iMZ l₁'' [] q(0) q(0)
    let ⟨_, _, _, iRM₂', ⟨l₂', pf₂'⟩, _, _⟩ ← qNF.matchRings iRM₂ iZ iMZ l₂'' [] q(0) q(0)
    let ⟨u, R, iR, iRM, ⟨l₁, pf₁⟩, ⟨l₂, pf₂⟩, _⟩ ← qNF.matchRings iRM₁' _ iRM₂' l₁' l₂' q(0) q(0)
    let iR' ← synthInstanceQ q(Ring $R)
    let iM' ← synthInstanceQ q(AddCommGroup $M)
    assumeInstancesCommute
    -- build the new list and proof
    let pf := qNF.mkSubProof iR' iM' iRM l₁ l₂
    pure ⟨u, R, iR, iRM, qNF.sub iR' l₁ l₂,
      q(NF.sub_eq_eval $pf₁'' $pf₂'' $pf₁' $pf₂' $pf₁ $pf₂ $pf)⟩
  /- parse a negation: `-y` -/
  | ~q(@Neg.neg _ $iM' $y) =>
    let ⟨u₀, _, _, iRM₀, l₀, pf₀⟩ ← parse iM y
    -- lift from original semiring of scalars (say `R₀`) to `R₀ ⊗ ℤ`
    let _i ← synthInstanceQ q(AddCommGroup $M)
    let iZ := q(Int.instSemiring)
    let iMZ ← synthInstanceQ q(Module ℤ $M)
    let ⟨u, R, iR, iRM, ⟨l, pf⟩, _, _⟩ ← qNF.matchRings iRM₀ iZ iMZ l₀ [] q(0) q(0)
    let _i' ← synthInstanceQ q(Ring $R)
    assumeInstancesCommute
    -- build the new list and proof
    pure ⟨u, R, iR, iRM, l.onScalar q(Neg.neg), (q(NF.neg_eq_eval $pf $pf₀):)⟩
  /- parse a scalar multiplication: `(s₀ : S) • y` -/
  | ~q(@HSMul.hSMul _ _ _ (@instHSMul $S _ $iS) $s₀ $y) =>
    let ⟨_, _, _, iRM₀, l₀, pf₀⟩ ← parse iM y
    let i₁ ← synthInstanceQ q(Semiring $S)
    let i₂ ← synthInstanceQ q(Module $S $M)
    assumeInstancesCommute
    -- lift from original semiring of scalars (say `R₀`) to `R₀ ⊗ S`
    let ⟨u, R, iR, iRM, ⟨l, pf_l⟩, _, ⟨s, pf_r⟩⟩ ← qNF.matchRings iRM₀ i₁ i₂ l₀ [] s₀ y
    -- build the new list and proof
    pure ⟨u, R, iR, iRM, l.onScalar q(HMul.hMul $s), (q(NF.smul_eq_eval $pf₀ $pf_l $pf_r):)⟩
  /- parse a `(0:M)` -/
  | ~q(0) =>
    pure ⟨0, q(Nat), q(Nat.instSemiring), q(AddCommGroup.toNatModule), [], q(NF.zero_eq_eval $M)⟩
  /- anything else should be treated as an atom -/
  | _ =>
    let (k, ⟨x', _⟩) ← AtomM.addAtomQ x
    pure ⟨0, q(Nat), q(Nat.instSemiring), q(AddCommGroup.toNatModule), [((q(1), x'), k)],
      q(NF.atom_eq_eval $x')⟩

/-- Given expressions `R` and `M` representing types such that `M`'s is a module over `R`'s, and
given two terms `l₁`, `l₂` of type `qNF R M`, i.e. lists of `(Q($R) × Q($M)) × ℕ`s (two `Expr`s
and a natural number), construct a list of new goals: that the `R`-coefficient of an `M`-atom which
appears in only one list is zero, and that the `R`-coefficients of an `M`-atom which appears in both
lists are equal.  Also construct (dependent on these new goals) a proof that the "linear
combinations" represented by `l₁` and `l₂` are equal in `M`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantd8cff84370dd580cc8d282816735fb255f42a1f0ca8ec3ded2985bd979a152f7.lean#L418).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43836e28bca10b34099d788c97d2f1ae074d6a6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
