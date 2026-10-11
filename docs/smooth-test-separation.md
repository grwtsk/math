# Smooth tests separate continuous residuals

The [separation module](../GRWTSK/RiemannHypothesis/Conversation/BranchSmoothTestSeparation.lean)
and [even-test module](../GRWTSK/RiemannHypothesis/Conversation/BranchEvenSmoothTest.lean)
are complemented by the
[pole-variation module](../GRWTSK/RiemannHypothesis/Conversation/BranchPoleAdmissibleTest.lean).
Together they prove eleven theorems and define the point spike and differential
variation. Their complete stored family has seventeen declarations, including
generated equations and proof helpers. The independent checker compiles these
sources at trust zero and audits the full stored family against `propext`,
`Classical.choice` and `Quot.sound`.

If a continuous real residual is nonzero at a point of an open set, there is a
smooth compactly supported test whose topological support lies inside that set
and whose Lebesgue pairing with the residual is strictly positive. The proof
chooses a neighborhood where the residual has the same sign as its value at the
point, uses a nonnegative smooth bump, and retains integrability of the product.
The residual itself need not have compact support or a globally finite integral.

Consequently, a continuous residual vanishing against every such test is zero
pointwise on the open set. Failure of interior C² supplies a nonzero point and
therefore a smooth separator. Continuity is essential: the checked point spike
is one at zero and zero elsewhere, so it is nonzero while every Lebesgue test
pairing vanishes.

For an even residual on a reflection-invariant open set, replacing a separating
test `g(t)` by `g(t) + g(-t)` keeps its smoothness and compact interior support.
Its pairing is twice the original positive pairing. Thus even smooth tests
already determine an even continuous residual pointwise. The reflection change
of variables uses Lebesgue measure and retains product integrability.

For a smooth compactly supported profile `h`, two integrations by parts give

```text
integral exp(c*t) * h''(t) = c^2 * integral exp(c*t) * h(t).
```

Thus `k = h'' - h/4` has zero exponentially weighted moments at both `c = 1/2`
and `c = -1/2`, with product integrability proved. These are necessary constraints
for the native profile variation. They also explain a checked obstruction:
the even, continuous function `exp(t/2) + exp(-t/2)` is nonzero but annihilates
every differential-image test `k`. Ordinary even-test separation cannot by
itself establish nonstationarity on that constrained space.

A source-bound native prototype separately checks continuity and evenness of the
complete compensated Mangoldt translation and gives an even smooth separator
for every real scalar compensation when `A > log(2)/2`. That preparation uses
the captured original project objects and checks their source bindings;
canonical dependency migration remains pending. The public generic modules do
not instantiate the native operator. The manuscript's profile variation requires
`k = h'' - h/4` for an even smooth interior profile `h`; an arbitrary even test
`g` need not have that form. Existence of a separating differential-image test,
identification of the first-variation coefficient and the normalized admissible
profile path remain separate obligations. No uniform signed arithmetic price, CCC pickup
identification, P04, P05 or unconditional RH result is claimed.

Run the independent public check with:

```sh
python3 scripts/check_smooth_test_separation.py
```

The selected environment is Lean 4.33.0 with Mathlib revision
`db584cd6d46c92f209a44c0f1c829460d327499d`. Classical smooth-bump and Lebesgue
integral arguments and pinned Mathlib formalizations retain their upstream
identities and authorship; no mathematical originality claim is made.
grwtsk contributors supplied mathematical direction, with OpenAI Codex
formalization and verification assistance. Local source is MIT.

The [source binding](../evidence/citation-smooth-test-separation.json) and
[verification receipt](../evidence/smooth-test-separation-checks.json) retain the
exact public declarations, source hashes, hypotheses and transitive axioms.
