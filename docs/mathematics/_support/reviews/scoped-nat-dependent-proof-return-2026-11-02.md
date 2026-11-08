# Dependent `Nat.le_trans` expression closure and certified source return

Local attribution: **grwtsk contributors**. Date: 2026-11-02. Mathematical authoring assisted by OpenAI ChatGPT.

**Disposition:** analytically explicit *restricted source proof candidate*. Lean compilation, actual MetaM execution, fresh kernel replay, transitive axiom audit and source-to-runtime refinement: **NOT_RUN**. Not a proof of general reification, a new arithmetic theorem, or independent proof of `Nat.le_trans`.

## Why this increment is needed

The predecessor `LeanExprScopedNatKernelConsumer.lean`, Git blob `a6deec4a40f014d327c353b8afef4234373ebc6e`, supports *literal* natural-number parameters `(1,2,3)` and two original local proof variables. A separately authored sibling `ScopedNatLeTransExpression.lean`, blob `31cc997065f56f2a52eb4f47deb7f576face4aec` at inspected math baseline `a4f5bf1380f89929611f177bd5a163f8850f5c00`, recognizes **five local variables** `(a,b,c,hab,hbc)` with actual dependent types, but has no dependent proof-term closure or kernel-facing theorem using that returned expression. The new module extends this second source, avoiding a parallel graph or rule model.

Primary consumers:

- `GRWTSK/MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/ScopedNatLeTransExpression.lean` (five original local `Lean.Expr`s and Meta type observation).
- `GRWTSK/Combinatorics/GraphTheory/CheckedApplicationSoficBridge.lean`, blob `7cf8b5905fae6cd828b3dc65145529635cc605e2` (proof-carrying lower/certified transition).
- `GRWTSK/Combinatorics/GraphTheory/DefectEnrichedSoficLanguage.lean`, blob `f0436ae18dd786e312a4966b27b2edc51e3d7fa1` (exact signed-defect telescoping and allowance).

Pinned environment at inspection: `leanprover/lean4:v4.34.1`, `lean-toolchain` blob `ba8ebf2dbaf6a668cd2a0e086186d6d569b69ff5`, `lake-manifest.json` blob `c8044c56be77c58e6f41cca024b25237c59e8c79` with Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Verify complete transitive import closure at the final source commit; a direct import list is not a native dependency replay.

## The exact mathematical object

In an actual Lean local context with five distinct free-variable **identities**,

```
a : Nat
b : Nat
c : Nat
hab : a ≤ b
hbc : b ≤ c
```

the *original* expression is constructed from the true named constant, with all five arguments in their original positions:

```
makeNatLeTransExpr (.fvar a) (.fvar b) (.fvar c) (.fvar hab) (.fvar hbc)
```

The preexisting `inspectScopedNatLeTrans` demands this exact syntax, local-variable argument shape, no unresolved metavariables, a type-correct source expression, and definitional matches for the three `Nat` parameters, two premise types and conclusion. It does not require values `a`, `b`, `c` to be pairwise unequal: **source fvar identity differs from the value of a Nat**.

`observeAndCloseDependentNatLeTrans` adds the mathematically missing step. It rejects any repeated *fvar identity* across all five positions, then calls `Lean.Meta.mkLambdaFVars` to abstract exactly those five original variables into a closed term. Separately, `Lean.Meta.mkForallFVars` constructs the complete expected dependent type using **the same five source expressions and order**:

```
∀ a b c : Nat, a ≤ b → b ≤ c → a ≤ c
```

It checks that the emitted lambda and expected type have no free variables, metavariables or universe parameters, that the lambda passes Meta type checking, and that its inferred type is definitionally equal to this expected type. Crucially, the **raw structural beta reduction** `closed.beta args` must be `Expr`-equal (`==`) to the original `source`. This is stronger than a Meta definitional-equality test for proof expressions: Lean proof irrelevance can make distinct proofs of the same proposition definitionally equal. The observer separately checks `isTypeCorrect` and `isDefEq` after reapplying the lambda to the same five source expressions. An unavailable scope, ill-typed proof, wrong equation, or failed structural comparison returns `none`.

**Proof argument (conditional on actual Lean APIs behaving as specified):** syntactic reconstruction keeps exactly the five argument expressions; scoped type checks constrain every dependent binder; lambda abstraction binds all five without introducing new proof data; application restores the source expression by beta reduction. The source program checks that intended identity rather than asserting it as a kernel theorem about the Meta interpreter. Its native behavior is currently unobserved. Official Lean Meta documentation specifies both `mkLambdaFVars` and `mkForallFVars` for abstracting a given array of free variables in dependency order.

## Kernel-facing consumer and quantified sofic return

The tactic `emit_dependent_nat_trans` locates the *actual* five locals, constructs their source expression, requires the observer's success, and assigns the **emitted and reapplied proof** to an ordinary Lean theorem goal; it has no fallback invocation of `Nat.le_trans`. The theorem candidate is:

```
emitted_dependent_nat_trans
  (a b c : Nat) (hab : a ≤ b) (hbc : b ≤ c) : a ≤ c
```

If this declaration successfully elaborates and the compiler/kernel checks the emitted term at the pinned source, the source proof would establish the genuine quantified transitivity theorem from that exact Meta-generated expression. An independently fresh kernel replay and transitive axiom audit would then be separate evidence facets. **Neither has been run**.

`emitted_dependent_nat_sofic_return` composes the same two typed hypotheses with the **existing** one-letter lower sofic transition `a --[b]--> c` and returns real signed defect `d` and allowance `B` satisfying

\[
\operatorname{readout}(a)=\operatorname{readout}(c)+d,\qquad
0\le B,\quad |d|\le B.
\]

In the actual `NatTransitivityExample` quantitative system, the source observation is real casting from `Nat`, and the edge defect is exactly `(a:ℝ)-(c:ℝ)`; candidate-only edges do not supply the necessary two premises. This is a **genuine mathematical return** with existing exact lower-edge hypotheses, not a general PDE or arithmetic-sieve estimate.

The theorem is not an automatic extraction admission. The `MetaM` observation and the `AppliedWord` share the actual locals in the authored theorem, but the full mechanism turning arbitrary runtime extracted expressions into a trustworthy, source-authenticated proof-carrying graph remains open. The local code does not implement a general Lean.Expr-to-Prop reflection rule.

## Alternative route, hostile tests and nonclaims

Ordinary `Nat.le_trans hab hbc` directly proves the theorem, but is deliberately **not** used in the emitted-term theorem. It is the independent semantic specification of the intended proposition, not an independent proof of mathematical transitivity. The source-level tactic is tested by the acceptance or rejection of its actual emitted proof once compiled.

The finite reference suite `external_reference/finite_dependent_reference.py` is an independently authored simplified symbolic model. It performed **4,332 assertions**, with **zero failures**, for all `a,b,c` in `0..9`. It covered 220 truth-admissible `(a≤b,b≤c)` transitions, 780 candidate-only triples, five-variable source roundtrip, exact signed defect, telescoping, zero-error identity and malformed expression/false-premise controls. It is **not** a Lean execution, MetaM check, source-to-implementation refinement certificate, kernel proof or test of the actual source declarations.

Unresolved/hostile boundaries include missing or out-of-context fvars; repeated fvar IDs; unsound swaps of distinct dependent premises; missing or additional application argument; wrong theorem head or universe levels; unresolved metavariables; types depending on an unrelated fvar; incorrect binder order; a source term with variables outside the abstraction; incorrect observed output type; and candidate-only sofic words. The new source has an executable Meta fixture for the valid dependent context and a repeated-Nat-fvar negative fixture, but **neither has executed here**. Values `a=b` may still be represented by distinct local fvars, and the mathematical theorem remains valid; only repeated *identities* are excluded.

No universal sofic language completeness, automatic theory extraction, RH proof, Navier–Stokes regularity, Bell-derived proof certificate, or improved AI retrieval is claimed.

## Native verification handoff

For the exact final immutable commit, use the maintained Noe managed source-bound replay route (only when authorized and the native owner is available), with the original full committed project/import closure and pinned Lean/Mathlib versions. Require these independent facets:

1. Lean module compilation with zero errors and exact expected declaration types for `emitted_dependent_nat_trans`, `emitted_dependent_nat_sofic_return` and the Meta observer, plus explicit no-sorry/source scan.
2. Actual positive/negative Meta fixture execution; inspect complete abstracted `Lean.Expr` and dependent type, especially binder order and free-variable absence.
3. Fresh independent kernel acceptance of both emitted-dependent theorem declarations, and the exact transitive axiom and unsafe/trust audit.
4. A checked source-to-environment identity, with fixed module path/blobs/commit and verified prerequisites. A string, search hit or diffusion mass is not authentication.
5. Separate Noe runtime extractor/refinement proof before automatic graph admission.

Compilation, all three native proof facets, Meta execution and runtime refinement remain **NOT_RUN/OPEN**, not inferred from this document or finite Python checks. The next consumer-backed obligation after these native checks is a sound extraction specification for one generic, quantifier-preserving theorem application beyond the `Nat.le_trans` family.
