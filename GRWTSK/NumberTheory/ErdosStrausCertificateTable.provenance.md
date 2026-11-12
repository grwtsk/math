# Erdős #242: finite certificate source candidate

Authors: grwtsk contributors. Date: 2026-11-11 (America/Los_Angeles).
Owning mathematical layer: Diophantine equations / Egyptian fractions.
Coordination: https://github.com/grwtsk/math/issues/1431.

## Source identity and admission

Maintained source: `GRWTSK/NumberTheory/ErdosStrausCertificateTable.lean`.
Namespace prefix below is
`GRWTSK.NumberTheory.DiophantineEquations.ErdosStraus.CertificateTable.`
All declaration identifiers in the table are relative to that prefix.

Base: `grwtsk/math` main `d980f553aca7f636c267d022b4604e487f40b424`;
complete root tree `4428452d49668a9e714df0a4ef25f9248f8fa25e`.
Existing target source: `GRWTSK/NumberTheory/ErdosStraus.lean`, blob
`a087a095b8a674f55e9dd2cd3dd90fc0ece0e40e`.
Lean: `leanprover/lean4:v4.34.1`.
Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.
No dependency pin, aggregate import, existing declaration, or workflow is changed.

This is an isolated **SOURCE CANDIDATE**, not an accepted Lean proof. The exact
arithmetic checks below are distinct from compilation and kernel evidence.

## Sources and exact statement

S1. The user's 2026-11-11 submission in the requesting conversation, namespace
`Erdos242`, from `HasErdosStrausNat` through `cert_1000_valid`. It supplied the
advancing-cursor checker, intended soundness lemmas and seven purported witnesses.
There is no public paper edition or upstream Git revision for that submission;
none is invented. The original seven data rows are retained in `suppliedTable1000`.

S2. Thomas Bloom, Erdős Problems, Problem 242,
https://www.erdosproblems.com/242, consulted 2026-11-11. The target is every integer
`n > 2`, with **distinct positive** denominators. The standard non-distinct
variant starting at `n = 2` is not silently substituted.

S3. The canonical source identified above, especially its `Representation`,
`Conjecture`, four explicit families, scaling theorem and
`conjecture_iff_residue_one_mod_twentyfour`. These are reused source candidates;
this module does not upgrade their verification status.

The strongest new finite source statement is

```lean
representation_le_1000 (n : ℕ) (hn : 2 < n) (hN : n ≤ 1000) : Representation n
```

`Representation` is the existing existential assertion of `0 < x < y < z` and
`(4 : ℚ) / n = 1/x + 1/y + 1/z`. Its exact arithmetic source is preserved.

## Declaration correspondence

Each row records an individual proof claim, its source or local construction,
and its consumer. Definitions and data are described after the table.

| Declaration | Source / exact locator; retained scope | Consumer |
|---|---|---|
| `hasErdosStrausNat_iff_representation` | Local denominator-clearing argument; S1 `HasErdosStrausNat`, S3 `Representation`; explicit `0 < n`, strict ordering | Both rational finite conclusions |
| `noSelectedInGap_eq` | S1 `noHardInGap` recursion equation; local structural recursion on `hi-lo`; arbitrary Boolean selector | Exact algorithm correspondence |
| `noSelectedFor_sound` | Local induction on interval length; every `lo ≤ m < lo+len` | Gap soundness |
| `noSelectedInGap_sound` | Local specialization of previous lemma to `len=hi-lo` | Sorted-table soundness |
| `noHardInGap_sound` | S1 same-name intended lemma; specialization to six specified residues | Submitted interface |
| `isValidTriple_sound` | S1 same-name lemma; reflection of decidable exact integer equality and strict ordering | Table soundness |
| `verifySelectedAux_sound` | S1 `verifyCertAux_sound`, repaired structural list induction; arbitrary selector; all `cur < p ≤ N` | General table soundness |
| `verifyCertAux_sound` | S1 same-name intended lemma, selector specialization | Submitted interface |
| `verifySelectedTable_sound` | Local initialization at cursor 1; all selected `2 ≤ p ≤ N` | Both finite certificates |
| `hasErdosStrausNat_of_certTable` | S1 same-name finite conditional theorem, all six residue alternatives unchanged | Original requested certificate API |
| `suppliedTable1000_rejected` | S1 original data; exact negative regression | Prevent false certificate promotion |
| `suppliedTable1000_all_entries_invalid` | S1 original data; each row rejected individually | Prevent masking six failures behind the first |
| `cert_1000_valid` | Replacement data from local exact integer search; seven selected inputs through 1000 | Finite modulo-840 result |
| `representation_hard_le_1000` | Local composition of finite soundness and denominator-clearing return | Canonical rational target for all seven inputs |
| `residue24_1000_valid` | Local exact integer search; all 41 selected inputs through 1000 | Full finite bound, via S3 families |
| `representation_of_bounded_residue24` | Bounded local consequence of S3 explicit families; every bound `N`, without dropping `n ≤ N` | Full finite bound |
| `representation_le_1000` | Local composition of preceding three interfaces and the 41-entry data | Exact finite Erdős #242 statement |

`HasErdosStrausNat` is an auxiliary arithmetic encoding, not a replacement
conjecture. `isHardMod840` denotes exactly the six supplied residue classes; no
unproved theorem about all remaining residue classes is used. `isResidueOneMod24`
selects the actual remaining class of S3. `noSelectedFor`, `noSelectedInGap`,
`verifySelectedAux`, and `verifySelectedTable` are executable definitions.
`noHardInGap`, `verifyCertAux`, and `verifyCertTable` retain the submitted
interfaces by specialization, without duplicating the soundness proof.
`Entry` is the submitted natural quadruple type. `certTable1000` and
`residue24Table1000` are finite mathematical witness data. Neither their existence
nor their validation asserts an infinite certificate family.

## Primary mathematical argument

For positive `n,x,y,z`, multiplication by their product gives an equivalence
between the rational identity and `4xyz=n(yz+xz+xy)`. Strict ordering implies
positivity of every denominator, so no totalized division at zero is involved.

The gap scanner visits exactly `hi-lo` integers. Induction on this length proves
that every accepted gap contains no selected input. Its displayed recursion
equation matches the submitted cursor algorithm. Induction on the witness list
then divides any selected `p` into three cases: before the next key (contradicted
by gap soundness), equal to the key (use its exact witness), or after the key
(use the inductive hypothesis). The final gap checks the entire tail through
`N`, including the upper endpoint via exclusive endpoint `N+1`.

For the full finite bound, apply the canonical explicit families when `n` is
even, `n ≡ 3 (mod 4)`, `n ≡ 5 (mod 8)`, `n ≡ 2 (mod 3)`, or `3 ∣ n`.
In the last case scale the representation of 3. Inputs greater than two not
in those cases satisfy `n ≡ 1 (mod 24)`. The table supplies all 41 such inputs
between 3 and 1000; the same checker proves coverage, not merely membership.
Return every arithmetic witness to the canonical rational predicate.

For independent witness discovery, after choosing `x > n/4` write
`4/n - 1/x = a/b` in lowest terms. Two remaining denominators solve the equation
exactly when `(ay-b)(az-b)=b²`. Search positive divisor pairs of `b²` satisfying
the divisibility and ordering constraints. The generator is not part of the
trusted Lean proof: only its concrete data are used by the checker.

## Falsification and comparison

All seven user-supplied entries are invalid. In the first, the exact sides are
`727725620124` and `727720930123`, differing by `4690001`.
The corrected seven rows are:

```
(121, 31, 1254, 427614)
(169, 44, 1066, 304876)
(289, 73, 7038, 8734158)
(361, 92, 4750, 4151500)
(529, 133, 23460, 71764140)
(841, 211, 59160, 362000040)
(961, 242, 33232, 124653232)
```

Exact integer cross-multiplication and exact `fractions.Fraction` summation both
accepted all replacement data. A direct enumeration of selected integers agreed
with each table's keys. Hostile tests rejected the original table, omitted first
and last entries, duplicate keys, reversed keys, an out-of-range final key, and
an empty table. These are finite Python observations, not certified Lean results
and not independent mathematical proofs. No independent reviewer is asserted.

The source corrects the malformed well-founded induction by structural length
induction and uses a propositional bounds guard. It does not assert constant
bit complexity for unbounded integer multiplication, or a measured linear bound
on Lean kernel reduction. No novelty is claimed; novelty assessment UNASSESSED.

## Evidence and remaining obligations

- Mathematical argument: WRITTEN, with finite exact-arithmetic checks.
- Lean elaboration/typechecking: NOT_RUN.
- Fresh kernel replay: NOT_RUN.
- Transitive axiom audit: NOT_RUN.
- Independent mathematical review: NOT_RUN.
- Full unbounded `Conjecture`: NOT_PROVED.
- Source inspection: no `sorry`, `admit`, new axiom declaration, `native_decide`,
  or native evaluation trust shortcut is introduced.

The explicit next mathematical premise in the existing reduction is
`∀ n, 2 < n → n % 24 = 1 → Representation n`, without the upper bound. One
sufficient certificate route would establish, for **every** `N`, existence of an
accepted `verifySelectedTable isResidueOneMod24 N` table. No such universal
existence theorem is present. The seven modulo-840 entries and the 41 modulo-24
entries cannot discharge it. A proof of checker soundness is not a proof that
certificates exist for arbitrary bounds.

The current session has no Lean installation. Required canonical
`noe-proof-automation` skill access at `grwtsk/noeaaeue` revision
`31fb509105d39ad557a0f9816a34e6a748071539` returned 404 at the prescribed path.
Dependent automation was not run. The older compiler-policy preparation failure
in issue #1431 is retained and is not reclassified as a theorem failure or a
successful check. No new schedule or execution request was dispatched.

At the exact pins, the source-check command still to run is

```
lake env lean GRWTSK/NumberTheory/ErdosStrausCertificateTable.lean
```

Subsequent evidence must include the full dependency closure, fresh kernel replay,
and `#print axioms` for every theorem listed above, including the canonical
family dependencies. Publication and source hashes do not substitute for these
checks. Keep the unbounded conjecture separate even after all finite checks pass.
