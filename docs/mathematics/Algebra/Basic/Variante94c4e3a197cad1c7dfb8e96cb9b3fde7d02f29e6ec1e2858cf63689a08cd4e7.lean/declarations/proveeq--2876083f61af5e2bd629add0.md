# proveEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c086e4b86d443ff0ca31da303005cbcdd1d9cf34a3074cf86164a8ef02794964",
  "kind": "def",
  "lexical_name": "proveEq",
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
  "slug": "proveeq--2876083f61af5e2bd629add0",
  "source": {
    "blob": "0dd5953d2e8bcc041f12f7ff84281f2cc2c73b23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 436,
    "line": 389,
    "path": "GRWTSK/Algebra/Basic/Variante94c4e3a197cad1c7dfb8e96cb9b3fde7d02f29e6ec1e2858cf63689a08cd4e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2876083f61af5e2bd629add06c5975bf397216872e851cb7f40fac933d61f594",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variante94c4e3a197cad1c7dfb8e96cb9b3fde7d02f29e6ec1e2858cf63689a08cd4e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c086e4b86d443ff0ca31da303005cbcdd1d9cf34a3074cf86164a8ef02794964`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 389–436.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def proveEq (base : Option (Σ u : Lean.Level, Q(Type u))) (g : MVarId) : AtomM Unit := do
  let some (α, e₁, e₂) := (← whnfR <|← instantiateMVars <|← g.getType).eq?
    | throwError "algebra failed: not an equality"
  let ⟨v, A⟩ ← getLevelQ' α
  let sA ← synthInstanceQ q(CommSemiring $A)
  let cA ← Algebra.mkCache sA
  let ⟨u, R⟩ ←
    match base with
      | .some p => do pure p
      | none => do
        pure (← inferBase cA (← g.getType))
  let sR ← synthInstanceQ q(CommSemiring $R)
  let sAlg ← synthInstanceQ q(Algebra $R $A)
  let cR ← Algebra.mkCache sR
  have e₁ : Q($A) := e₁; have e₂ : Q($A) := e₂
  let eq ← algCore q($sAlg) cR cA e₁ e₂
  g.assign eq
where
  /-- The core of `proveEq` takes expressions `e₁ e₂ : α` where `α` is a `CommSemiring`,
  and returns a proof that they are equal (or fails). -/
  algCore {u v : Level} {R : Q(Type u)} {A : Q(Type v)} {sR : Q(CommSemiring $R)}
      {sA : Q(CommSemiring $A)} (sAlg : Q(Algebra $R $A))
      (cR : Cache q($sR)) (cA : Cache q($sA)) (e₁ e₂ : Q($A)) : AtomM Q($e₁ = $e₂) := do
    profileitM Exception "algebra" (← getOptions) do
      let ⟨a, va, pa⟩ ← Common.eval rcℕ (ringCompute sAlg cR cA) cA.toCache e₁
      let ⟨b, vb, pb⟩ ← Common.eval rcℕ (ringCompute sAlg cR cA) cA.toCache e₂
      unless va.eq rcℕ (ringCompute sAlg cR cA) vb do
        let g ← mkFreshExprMVar (← (← Ring.ringCleanupRef.get) q($a = $b))
        throwError "algebra failed, algebra expressions not equal\n{g.mvarId!}"
      have : $a =Q $b := ⟨⟩
      return q($pb ▸ $pa)

/-- `algebra` solves equalities in the language of algebras: ring operations and scalar
multiplications.

Given a goal which is an equality in a commutative `R`-algebra `A`, `algebra` parses the LHS and
RHS of the goal as polynomial expressions of `A`-atoms with coefficients in some semiring `R`, and
closes the goal if the two expressions are the same. The `R`-coefficients are put into ring normal
form.

By default, the scalar ring `R` is inferred automatically by looking for scalar multiplications and
`algebraMap`s present in the expressions. The inference procedure assumes that any two rings `R`
and `S` that appear are comparable, in the sense that either `R` is an `S`-algebra or `S` is an
`R`-algebra.

* `algebra with R` uses the term `R` as the scalar ring, instead of attempting to infer it
automatically.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variante94c4e3a197cad1c7dfb8e96cb9b3fde7d02f29e6ec1e2858cf63689a08cd4e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variante94c4e3a197cad1c7dfb8e96cb9b3fde7d02f29e6ec1e2858cf63689a08cd4e7.lean#L389).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0dd5953d2e8bcc041f12f7ff84281f2cc2c73b23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
