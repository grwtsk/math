# Verification target: GRWTSK.NumberTheory.Chebyshev.CanonicalTentPrimeCriterion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9343f6b16e6c0789a304307849e3b7e418b5df3",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/CanonicalTentPrimeCriterion.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentPrimeCriterion.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentPrimeCriterion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9343f6b16e6c0789a304307849e3b7e418b5df3`.

Source path: `GRWTSK/NumberTheory/Chebyshev/CanonicalTentPrimeCriterion.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/CanonicalTentPrimeCriterion.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Chebyshev.CanonicalTentExplicitFormula`](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentExplicitFormula.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.SignedTentCorrection`](../../../../mathematics/NumberTheory/Chebyshev/SignedTentCorrection.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic.Linarith` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Omega` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [canonicalPrimeMargin](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentPrimeCriterion.lean/declarations/canonicalprimemargin--ef77676cc45c85ada81f06a6.md) | 37 | `declaration-track:ef77676cc45c85ada81f06a6129a8f6df83315eaaf90174ef6ea55639ee4d039` |
| 2 | `theorem` | [head_re_le_of_norm_enclosure](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentPrimeCriterion.lean/declarations/head-re-le-of-norm-enclosure--bd61dac7d75b69b5c8ed179b.md) | 42 | `result-track:bd61dac7d75b69b5c8ed179b6bfbc3d88f6537c6043cbaf2c8f07f9ed98e6541` |
| 3 | `theorem` | [mass_lower_of_real_enclosures](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentPrimeCriterion.lean/declarations/mass-lower-of-real-enclosures--4e494015163f321a2568ec25.md) | 56 | `result-track:4e494015163f321a2568ec25ad2d044a27f9b9d6c4748bd82e9285ece51cb779` |
| 4 | `theorem` | [prime_in_square_of_real_enclosures](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentPrimeCriterion.lean/declarations/prime-in-square-of-real-enclosures--d02e6ac2698781884e0c2c6c.md) | 75 | `result-track:d02e6ac2698781884e0c2c6ce3e4c495d59073a66bc14b6ae5a478f62de96ca2` |
| 5 | `theorem` | [prime_in_square_of_canonical_tent](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentPrimeCriterion.lean/declarations/prime-in-square-of-canonical-tent--eea697368a8b77e59d32f9ec.md) | 89 | `result-track:eea697368a8b77e59d32f9ec528ec7c4e10be3e46e3345e085237e2b98d89195` |
| 6 | `theorem` | [prime_in_square_of_exact_inventory](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentPrimeCriterion.lean/declarations/prime-in-square-of-exact-inventory--c2140640b1e729deaa8dd7ad.md) | 101 | `result-track:c2140640b1e729deaa8dd7addb0ace7024e550dcec873de11bcac00b1792edd3` |
| 7 | `theorem` | [correction_lower_of_prefix_enclosure](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentPrimeCriterion.lean/declarations/correction-lower-of-prefix-enclosure--70f1a9d4e5e46813813a2f1c.md) | 114 | `result-track:70f1a9d4e5e46813813a2f1cbbd567b12227f42f984edeb7097949afa886cfad` |
| 8 | `theorem` | [prime_in_square_of_correction_prefix](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentPrimeCriterion.lean/declarations/prime-in-square-of-correction-prefix--954a66185d6dfce9b68af2a1.md) | 126 | `result-track:954a66185d6dfce9b68af2a1435368de2e707aec1d128442667bfdc2f32bb91f` |
| 9 | `theorem` | [prime_free_obstructs_margin](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentPrimeCriterion.lean/declarations/prime-free-obstructs-margin--6f006f6d16367a4ca3c2c666.md) | 141 | `result-track:6f006f6d16367a4ca3c2c6660c96fd7d93eeecda6bc0ccf4d451a4d9feb3ceb9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
