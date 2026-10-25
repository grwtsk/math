# matchScalarsAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9b36d545ed982c1f8198390abd02ebc0fe8029c294c5e176555b5be8aa846ce9",
  "kind": "def",
  "lexical_name": "matchScalarsAux",
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
  "slug": "matchscalarsaux--c160817e588c169b6a8440cb",
  "source": {
    "blob": "0a0bfd2ee6a0415b489d32e3c39c7794614bcd26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 591,
    "line": 550,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant8fbe67fef87cfb9158f710cdf75920413718b7e9de8b6ba32a78f8208fd53522.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c160817e588c169b6a8440cbbd04502d8db0366a89a201ef0cfc38d5b804d0b5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant8fbe67fef87cfb9158f710cdf75920413718b7e9de8b6ba32a78f8208fd53522.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9b36d545ed982c1f8198390abd02ebc0fe8029c294c5e176555b5be8aa846ce9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 550–591.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def matchScalarsAux (g : MVarId) : AtomM (List MVarId) := do
  /- Parse the goal as an equality in a type `M` of two expressions `lhs` and `rhs`, with `M`
  carrying an `AddCommMonoid` instance. -/
  let eqData ← do
    match (← g.getType').eq? with
    | some e => pure e
    | none => throwError "goal {← g.getType} is not an equality"
  let .sort v₀ ← whnf (← inferType eqData.1) | unreachable!
  let some v := v₀.dec | unreachable!
  let ((M : Q(Type v)), (lhs : Q($M)), (rhs :Q($M))) := eqData
  let iM ← synthInstanceQ q(AddCommMonoid.{v} $M)
  /- Construct from the `lhs` expression a term `l₁` of type `qNF R₁ M` for some semiring `R₁` --
  that is, a list of `(Q($R₁) × Q($M)) × ℕ`s (two `Expr`s and a natural number) -- together with a
  proof that `lhs` is equal to the `R₁`-linear combination in `M` this represents. -/
  let e₁ ← parse iM lhs
  have u₁ : Level := e₁.fst
  have R₁ : Q(Type u₁) := e₁.snd.fst
  have _iR₁ : Q(Semiring.{u₁} $R₁) := e₁.snd.snd.fst
  let iRM₁ ← synthInstanceQ q(Module $R₁ $M)
  assumeInstancesCommute
  have l₁ : qNF R₁ M := e₁.snd.snd.snd.snd.fst
  let pf₁ : Q($lhs = NF.eval $(l₁.toNF)) := e₁.snd.snd.snd.snd.snd
  /- Do the same for the `rhs` expression, obtaining a term `l₂` of type `qNF R₂ M` for some
  semiring `R₂`. -/
  let e₂ ← parse iM rhs
  have u₂ : Level := e₂.fst
  have R₂ : Q(Type u₂) := e₂.snd.fst
  have _iR₂ : Q(Semiring.{u₂} $R₂) := e₂.snd.snd.fst
  let iRM₂ ← synthInstanceQ q(Module $R₂ $M)
  have l₂ : qNF R₂ M := e₂.snd.snd.snd.snd.fst
  let pf₂ : Q($rhs = NF.eval $(l₂.toNF)) := e₂.snd.snd.snd.snd.snd
  /- Lift everything to the same scalar ring, `R`. -/
  let ⟨_, _, _, iRM, ⟨l₁', pf₁'⟩, ⟨l₂', pf₂'⟩, _⟩ ← qNF.matchRings iRM₁ _ iRM₂ l₁ l₂ q(0) q(0)
  /- Construct a list of goals for the coefficientwise equality of these formal linear combinations,
  and resolve our original goal (modulo these new goals). -/
  let (mvars, pf) ← reduceCoefficientwise iRM l₁' l₂'
  g.assign q(NF.eq_of_eval_eq_eval $pf₁ $pf₂ $pf₁' $pf₂' $pf)
  return mvars

/-- Lemmas used to post-process the result of the `match_scalars` and `module` tactics by converting
the `algebraMap` operations which (which proliferate in the constructed scalar goals) to more
familiar forms: `ℕ`, `ℤ` and `ℚ` casts. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant8fbe67fef87cfb9158f710cdf75920413718b7e9de8b6ba32a78f8208fd53522.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant8fbe67fef87cfb9158f710cdf75920413718b7e9de8b6ba32a78f8208fd53522.lean#L550).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a0bfd2ee6a0415b489d32e3c39c7794614bcd26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
