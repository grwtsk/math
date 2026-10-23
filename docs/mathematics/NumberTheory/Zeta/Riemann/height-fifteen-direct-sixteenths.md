# Four-cell replay decomposition for the height-fifteen contour

Owner #135; finite arithmetic supplier #194; canonical/prime consumer #261.

Parent revision: `cef7df3bce4eee81fe5b1f1f6d485529143cee19`  
Parent tree: `57d6f9b59debb93b32a478e5b772f6b520cf332b`  
Mathlib: `db584cd6d46c92f209a44c0f1c829460d327499d`

**SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.**

This increment adds an alternative replay route for the unchanged 2,379-cell
height-fifteen contour. It does not modify the contour, source formulas, error
allowances, image vertices, signed term, count predicate, or any older replay
route.

## Partition

The new exact widths are

```text
4 repeated 594 times, then 3.
```

Thus

```text
594 * 4 + 3 = 2379.
```

There are 595 local declarations. Sixteenth index 68 covers global cells
`[272,276)` and is the only piece whose signed claim is `+1`; all other claims
are zero. It contains the previously modeled branch crossing at cell 275. This
is a statement about the rational surrogate's signed chart, not the location of
a zeta zero.

The final cells `[2376,2379)` remain a separate three-cell theorem.

## Local scripts

The local theorems are split into six source modules. Each has the form

```lean
theorem sixteenthNNN :
  chunk directTest directTerm start width = some claim := by decide
```

Every theorem uses the unchanged `directTest` and `directTerm`; no canonical
packet expansion or imported PASS label occurs inside the local decision.

`SixteenthObligations` is exactly

```lean
Pieces directTest directTerm 0 sixteenthWidths sixteenthExpected
```

for the displayed widths and claims. The existing `exists_pieces_iff` theorem
then supplies complete predicate coverage and the exact signed total. The
existing `success_iff_ranges` theorem yields precisely the old
`HeightFifteenJetCandidate.Success` proposition.

The closure additionally reconstructs, at exact adjacent cursors, the positive
four-cell piece, eight-cell piece, sixteen-cell quarter, thirty-two-cell half,
and original sixty-four-cell block. No artificial closing edge, cursor reset,
omitted cell, absolute value, or separately supplied total is introduced.

## Scope

Ten new Lean files are selected by the isolated replay target:

- one partition module;
- six local-claim modules;
- one closure module;
- one controls module; and
- one isolated interface root.

The closure contains source declarations for the unchanged canonical checked
result, original `Success`, regional count one, and inherited complete-pair
conclusion. None is a kernel receipt. Every one of the 595 local `by decide`
scripts and every imported dependency remains unexecuted.

This increment does not report a Python rerun, Lean parsing, elaboration,
reduction timing, memory usage, compiler qualification, native dependency audit,
or transitive axiom audit. Future replay must bind to the exact published head
and verify all generated declarations and imports.

Even future acceptance of this finite-height computation would not supply an
arbitrary-height Riemann Hypothesis result, the omitted-zero-divisor tail, or
strict prime margins for every required interval.
