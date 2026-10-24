# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Expand.Variant4c7037e5a83595eba67fa0c7e4cdfaead0d21de94f445e157e17a76ceb604256

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d4d09e673cc59ce46be8e388e40a617dfff4a19",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Expand/Variant4c7037e5a83595eba67fa0c7e4cdfaead0d21de94f445e157e17a76ceb604256.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant4c7037e5a83595eba67fa0c7e4cdfaead0d21de94f445e157e17a76ceb604256.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant4c7037e5a83595eba67fa0c7e4cdfaead0d21de94f445e157e17a76ceb604256.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d4d09e673cc59ce46be8e388e40a617dfff4a19`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Expand/Variant4c7037e5a83595eba67fa0c7e4cdfaead0d21de94f445e157e17a76ceb604256.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Expand/Variant4c7037e5a83595eba67fa0c7e4cdfaead0d21de94f445e157e17a76ceb604256.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.ZMod` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Cyclotomic.Roots` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cyclotomic_expand_eq_cyclotomic_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant4c7037e5a83595eba67fa0c7e4cdfaead0d21de94f445e157e17a76ceb604256.lean/declarations/cyclotomic-expand-eq-cyclotomic-mul--29ceaa733ba43d1f8da32495.md) | 34 | `result-track:29ceaa733ba43d1f8da3249520114e517e99211d4bf7818bbc3087b37a8598ad` |
| 2 | `theorem` | [cyclotomic_expand_eq_cyclotomic](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant4c7037e5a83595eba67fa0c7e4cdfaead0d21de94f445e157e17a76ceb604256.lean/declarations/cyclotomic-expand-eq-cyclotomic--53cd5f9c5d2063d4b057c737.md) | 75 | `result-track:53cd5f9c5d2063d4b057c737b5a713123ba8eddafc55bbef7b8b36e6fd63bdd6` |
| 3 | `theorem` | [cyclotomic_irreducible_pow_of_irreducible_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant4c7037e5a83595eba67fa0c7e4cdfaead0d21de94f445e157e17a76ceb604256.lean/declarations/cyclotomic-irreducible-pow-of-irreducible-pow--d02b7bb7dc0187c56363a32d.md) | 96 | `result-track:d02b7bb7dc0187c56363a32d4f3c9b43fe25182c931c58a830da3e0b21048896` |
| 4 | `theorem` | [cyclotomic_irreducible_of_irreducible_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant4c7037e5a83595eba67fa0c7e4cdfaead0d21de94f445e157e17a76ceb604256.lean/declarations/cyclotomic-irreducible-of-irreducible-pow--f01a1b7d6c096e8a727ca652.md) | 109 | `result-track:f01a1b7d6c096e8a727ca652d97a109084d94bb941c69e3fe5da4c88154d1f3b` |
| 5 | `theorem` | [cyclotomic_mul_prime_eq_pow_of_not_dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant4c7037e5a83595eba67fa0c7e4cdfaead0d21de94f445e157e17a76ceb604256.lean/declarations/cyclotomic-mul-prime-eq-pow-of-not-dvd--ab5e6e830a5a1f3ab0654671.md) | 118 | `result-track:ab5e6e830a5a1f3ab0654671909029cd630088f150721deab0480e86dec7e771` |
| 6 | `theorem` | [cyclotomic_mul_prime_dvd_eq_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant4c7037e5a83595eba67fa0c7e4cdfaead0d21de94f445e157e17a76ceb604256.lean/declarations/cyclotomic-mul-prime-dvd-eq-pow--78432b2eb1991d3cd103c3d4.md) | 132 | `result-track:78432b2eb1991d3cd103c3d4cf533a99dac8e5d5d5079bc7addc4ebe311b1498` |
| 7 | `theorem` | [cyclotomic_mul_prime_pow_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant4c7037e5a83595eba67fa0c7e4cdfaead0d21de94f445e157e17a76ceb604256.lean/declarations/cyclotomic-mul-prime-pow-eq--10862770cbe58aee9848f985.md) | 143 | `result-track:10862770cbe58aee9848f985dd72e836c10d120ae7181645d31103a47791561d` |
| 8 | `theorem` | [isRoot_cyclotomic_prime_pow_mul_iff_of_charP](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant4c7037e5a83595eba67fa0c7e4cdfaead0d21de94f445e157e17a76ceb604256.lean/declarations/isroot-cyclotomic-prime-pow-mul-iff-of-charp--560940ce359015d591ac9ad8.md) | 157 | `result-track:560940ce359015d591ac9ad8e2b449abab2c130df19801a2a10aa91f62677229` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
