# Farey superwalk: return-only scalar channel versus arbitrary positive words

**Classification:** repository-derived elementary finite representation theorem
candidate, `SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED`, 2026-10-23.
No paper proof, external theorem, unbounded cocycle estimate or Lean
kernel result is inferred from the existence of this file.

**Lean module:** `GRWTSK.NumberTheory.Farey.TurnwiseScalarObstruction`,
source `GRWTSK/NumberTheory/Farey/TurnwiseScalarObstruction.lean`,
integrated on the existing math `main` in
`98bada8f6029c75df85402c9ba7f6b7ec00da111`,
source Git blob `ba99ad673f032e44eb14a4564f5488cfd31af0f1`.
Direct source import:
`GRWTSK.NumberTheory.Farey.ProjectiveQuadraticChannel`,
and `Mathlib.Tactic`.
The parent quadratic source blob is
`b07cb18412f3e64f42d2916fea91b1e59b2228c2`.
All earlier source hypotheses and verification states remain as
recorded in their source-bound literature and verification ledgers.

## Exact mathematical object and one-source-vector obstruction

Use the same positive Farey turn alphabet as in the **actual**
`GroupSuperwalk.frame_walk`, whose chronological words
multiply the integral frame on the **right**. Reduce the actual
shears to `ZMod 3` and act on column vectors:
`L=[[1,0],[1,1]]`, `R=[[1,1],[0,1]]`,
`H=LR=[[1,1],[1,2]]`.
The selected sign-invariant projective quadratic readout from the
parent module is
`Q(x,y)=x(x+y)` over `F₃`, with the
explicit complex lift `χ(0)=0`, `χ(1)=1`, `χ(2)=-1`,
and `f(v)=χ(Q(v))`.
The parent proof candidate asserts `f(Hv)=-f(v)` for
**every** vector, including zero, and `f(1,0)=1`.

The actual **single-generator** orbit beginning at `v0=(1,0)`
is distinct from the H orbit:

    v0=(1,0) --L--> v1=(1,1) --L--> v2=(1,2) --L--> v0
    f(v0)=1          f(v1)=-1         f(v2)=0.

The return H sends `v0` to `v1`. Suppose **an arbitrary**
complex observable `g:F₃²→ℂ` satisfies exactly:
(1) `g(Lv)=a*g(v)` **for all v** and one scalar `a:ℂ`;
(2) `g(Hv0)=-g(v0)`;
(3) `g(v0) != 0`.
Since `L v0=H v0=v1`, hypotheses imply
`a*g(v0)=-g(v0)` and therefore `a=-1`.
The genuine L three-cycle, however, gives
`g(v0)=a³*g(v0)=-g(v0)`, impossible for
the nonzero complex value `g(v0)`.
The proof does NOT assume `a` is a cube root,
a character, nonzero, or positive; the orbit forces
the relevant arithmetic.

### Exact formal declarations and scope

The new module provides
`leftStep`, `rightStep`, `leftThird`,
`leftStep_zero`, `leftStep_one`, `leftStep_two`,
`returnStep_zero`,
`no_scalar_left_extension_of_negative_return`,
`quadraticReadout_no_scalar_left`, and
`quadraticReadout_no_turnwise_scalars`.
The generic theorem preserves the three hypotheses
above. The last theorem adds a separately named
scalar for R, but the left-only obstruction
already refutes the pair.

Thus no choice of two **constant scalar multipliers**
produces the specific quadratic `f` under **both**
genuine Farey shear generators. This does NOT say
there is no global *matrix-valued* representation,
no other complex observable or no channel in
an enlarged noncommutative representation.

## Correct arbitrary-word replacement and ordering

The existing source `ReturnAngularChannel.modThreeWord`
returns the ordered matrix product for the actual
positive word, and the new
`modThreeWord_append` proof candidate states

    M(u++v) = M(u) M(v).

For a fixed **column** input `x` define
`wordState(w,x)=M(w).mulVec x` and
`wordSignal(w,x)=f(wordState(w,x))`.
The newly authored lemmas state

    wordState(u++v,x) = wordState(u,wordState(v,x)),
    wordSignal(u++v,x) = wordSignal(u,wordState(v,x)),
    wordSignal(w,-x) = wordSignal(w,x),
    wordSignal([left,right],x) = -f(x).

The first identity encodes an important **order convention**:
`GroupSuperwalk.walk` takes turns chronologically left-to-right
and multiplies the Farey **frame on the right** by
`M(u)M(v)`, whereas the same product applied to a
**column on the left** acts on that column with the
later factor `M(v)` first. Do not silently interpret
`M(u++v).mulVec x` as the chronological sequence
of `M(u)` followed by `M(v)` on column states.
A source-preserving chronological column cocycle
would need the correct opposite/right-action
representation or a proved dual transport.

Exact new declarations:
`modThreeWord_append`, `wordState`,
`wordState_append`, `anyMatrix_mulVec_neg`,
`wordSignal`, `wordSignal_append`,
`wordSignal_sign_invariant`, and
`wordSignal_selected_return`.
These supply a finite **matrix-valued** observation channel
for any finite positive Farey word, not a constant scalar
factorization for every letter.

## Verification and independent preflight

Independent exact SymPy 1.14.0 arithmetic:
- genuine L orbit `(1,0),(1,1),(1,2),(1,0)`;
  readouts `1,-1,0,1` and `Hv0=Lv0`;
- all `127` L/R words of lengths `0..6`,
  all `1,143` word/sign observation checks over `F₃²`;
- all `769` word-splitting checks, including
  `M(u++v)=M(u)M(v)` and the right-block-first
  column action on supplied vectors.

This is exact *finite computation*, not Lean checking.
The source contains no literal proof-hole/axiom
declaration; that is only source inspection.
Pinned `leanprover/lean4:v4.33.0`,
Mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`.
**Lean elaboration, warning-clean compilation,
fresh kernel checking, and the full transitive
axiom/native/unsafe audit are PENDING**.
`GRWTSK.lean` deliberately does not import
the new module until source-bound acceptance.

## Paper comparison: precise absence of a direct external theorem

No external paper is cited as the *source* of
this specific mod-three left-generator scalar no-go;
it is a new elementary repository construction.

**Peter Sarnak**, *Three Lectures on the Mobius Function:
Randomness and Dynamics* (2011 IAS lectures),
https://publications.ias.edu/sarnak/paper/506,
Definition 3 and Conjecture 4: a compact metric
flow with **zero topological entropy**, actual
continuous sampling, a genuine Möbius weight,
and ordinary-average cancellation are not
supplied here. **ANALOGY_ONLY / UNRESOLVED**,
not a theorem implication.

**Ram Band, Siegfried Beckus, Raphael Loewy**,
*The Dry Ten Martini Problem for Sturmian Hamiltonians*
(2024, arXiv:2402.16703,
https://arxiv.org/abs/2402.16703),
equation (1.1) describes the rotation-coded
Schrödinger model, Theorem 1.1 its gap-opening
theorem for **irrational frequency and nonzero
coupling**. The present finite `F₃`
word readout has neither a Sturmian potential
nor that theorem's operator/spectral hypotheses.
**MODEL/METHOD COMPARISON ONLY**, not import
or proved bridge.

## Next unresolved supplier

Construct a **source-identified nonperiodic
Farey or continued-fraction base dynamics**
with a correct chronological representation,
an admissible gauge class and a proved
intertwining observation on a genuine
analytic spectral space. The present
finite-state word channel is compatible
with an arbitrary finite drive but does
not establish infinite-time convergence,
entropy, spectral gaps, Möbius disjointness,
a geometric spiral, Siegel-zero bounds,
zeta zeros or RH.
