# Verification target: GRWTSK.Algebra.Groebner.Variant5851127316bc7cba5bf7c15d22e5b7e4d83599b04065a67660ba996442975697

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8337bca23d2ac52efb8d03da4c083e54618453b6",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Groebner/Variant5851127316bc7cba5bf7c15d22e5b7e4d83599b04065a67660ba996442975697.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Groebner/Variant5851127316bc7cba5bf7c15d22e5b7e4d83599b04065a67660ba996442975697.lean/index.md) · [Full source](../../../../mathematics/Algebra/Groebner/Variant5851127316bc7cba5bf7c15d22e5b7e4d83599b04065a67660ba996442975697.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8337bca23d2ac52efb8d03da4c083e54618453b6`.

Source path: `GRWTSK/Algebra/Groebner/Variant5851127316bc7cba5bf7c15d22e5b7e4d83599b04065a67660ba996442975697.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Groebner/Variant5851127316bc7cba5bf7c15d22e5b7e4d83599b04065a67660ba996442975697.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finsupp.Lex` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.MonomialOrder` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.WellFounded` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.TFAE` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPolynomial.Homogeneous` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPolynomial.MonomialOrder` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [subLTerm](../../../../mathematics/Algebra/Groebner/Variant5851127316bc7cba5bf7c15d22e5b7e4d83599b04065a67660ba996442975697.lean/declarations/sublterm--4130d4c18f076ca0941d11de.md) | 66 | `declaration-track:4130d4c18f076ca0941d11debcb35a8f6701be51cc0a56c41eb62abf75cf5a02` |
| 2 | `theorem` | [degree_sub_LTerm_le](../../../../mathematics/Algebra/Groebner/Variant5851127316bc7cba5bf7c15d22e5b7e4d83599b04065a67660ba996442975697.lean/declarations/degree-sub-lterm-le--fd37ccba57e442664c85ace4.md) | 69 | `result-track:fd37ccba57e442664c85ace4e2c0e6b530d8d5c3a2f5513fe774148d5e510abb` |
| 3 | `theorem` | [degree_sub_LTerm_lt](../../../../mathematics/Algebra/Groebner/Variant5851127316bc7cba5bf7c15d22e5b7e4d83599b04065a67660ba996442975697.lean/declarations/degree-sub-lterm-lt--b1eb73ee4cdcf6b059b5d92f.md) | 75 | `result-track:b1eb73ee4cdcf6b059b5d92f4adafd640c2ff26725ab3a261ca1355d46d83e8a` |
| 4 | `def` | [reduce](../../../../mathematics/Algebra/Groebner/Variant5851127316bc7cba5bf7c15d22e5b7e4d83599b04065a67660ba996442975697.lean/declarations/reduce--762e474323509b59326234a1.md) | 93 | `declaration-track:762e474323509b59326234a115222e3055944aaae941b66f6986aaf0a18f9441` |
| 5 | `theorem` | [degree_reduce_lt](../../../../mathematics/Algebra/Groebner/Variant5851127316bc7cba5bf7c15d22e5b7e4d83599b04065a67660ba996442975697.lean/declarations/degree-reduce-lt--2aee4daeef60f5c6957872d7.md) | 97 | `result-track:2aee4daeef60f5c6957872d76b31d1c22c3bff1d9569c0ee5bd7935a122fc563` |
| 6 | `theorem` | [div](../../../../mathematics/Algebra/Groebner/Variant5851127316bc7cba5bf7c15d22e5b7e4d83599b04065a67660ba996442975697.lean/declarations/div--b9e11d3ec297328752f5c078.md) | 131 | `result-track:b9e11d3ec297328752f5c0780b58a1b53496e19bbb47da264214d33429816307` |
| 7 | `theorem` | [div_set](../../../../mathematics/Algebra/Groebner/Variant5851127316bc7cba5bf7c15d22e5b7e4d83599b04065a67660ba996442975697.lean/declarations/div-set--418b521e8d3e5fba62d17b87.md) | 233 | `result-track:418b521e8d3e5fba62d17b87b36ed4c1eb22fa219fc1b8b8d13fbfd489f93c73` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
