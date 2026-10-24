# Verification target: GRWTSK.Algebra.Discriminant.Variant62235d62d1a3e19b83414b4edf23356d69b9d13f0f11f842e46da0dc87863d3f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e7e67968de2680d6596a996c2d47f76e2149192d",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Discriminant/Variant62235d62d1a3e19b83414b4edf23356d69b9d13f0f11f842e46da0dc87863d3f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Discriminant/Variant62235d62d1a3e19b83414b4edf23356d69b9d13f0f11f842e46da0dc87863d3f.lean/index.md) · [Full source](../../../../mathematics/Algebra/Discriminant/Variant62235d62d1a3e19b83414b4edf23356d69b9d13f0f11f842e46da0dc87863d3f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e7e67968de2680d6596a996c2d47f76e2149192d`.

Source path: `GRWTSK/Algebra/Discriminant/Variant62235d62d1a3e19b83414b4edf23356d69b9d13f0f11f842e46da0dc87863d3f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Discriminant/Variant62235d62d1a3e19b83414b4edf23356d69b9d13f0f11f842e46da0dc87863d3f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Cyclotomic.PrimitiveRoots` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DedekindDomain.Dvr` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.NumberField.Discriminant.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [discr_zeta_eq_discr_zeta_sub_one](../../../../mathematics/Algebra/Discriminant/Variant62235d62d1a3e19b83414b4edf23356d69b9d13f0f11f842e46da0dc87863d3f.lean/declarations/discr-zeta-eq-discr-zeta-sub-one--9ceee54ce2bbaf3a479f1fe6.md) | 36 | `result-track:9ceee54ce2bbaf3a479f1fe6e1d29d7b1b8e408317fda06b809a192a9d08522a` |
| 2 | `theorem` | [discr_prime_pow_ne_two](../../../../mathematics/Algebra/Discriminant/Variant62235d62d1a3e19b83414b4edf23356d69b9d13f0f11f842e46da0dc87863d3f.lean/declarations/discr-prime-pow-ne-two--a39ba67b470b1bd662d8dad2.md) | 59 | `result-track:a39ba67b470b1bd662d8dad259d8a72bc4252d7d58afe4427d6abf469b16f8fd` |
| 3 | `theorem` | [discr_prime_pow_ne_two'](../../../../mathematics/Algebra/Discriminant/Variant62235d62d1a3e19b83414b4edf23356d69b9d13f0f11f842e46da0dc87863d3f.lean/declarations/discr-prime-pow-ne-two--b4b0478735b6bb819428bf9f.md) | 119 | `result-track:b4b0478735b6bb819428bf9f63bcf73a1d26331eb4125b00794934c0a2ce8bca` |
| 4 | `theorem` | [discr_prime_pow](../../../../mathematics/Algebra/Discriminant/Variant62235d62d1a3e19b83414b4edf23356d69b9d13f0f11f842e46da0dc87863d3f.lean/declarations/discr-prime-pow--95070f091ede95a6301bb73e.md) | 130 | `result-track:95070f091ede95a6301bb73e8becb1d793d335353474b03545985c994aa2343f` |
| 5 | `theorem` | [discr_prime_pow_eq_unit_mul_pow](../../../../mathematics/Algebra/Discriminant/Variant62235d62d1a3e19b83414b4edf23356d69b9d13f0f11f842e46da0dc87863d3f.lean/declarations/discr-prime-pow-eq-unit-mul-pow--59d861eed6763f1c0b03e0ec.md) | 180 | `result-track:59d861eed6763f1c0b03e0ec515cf2a22b9a6bc9de172c7c4bb93a5155295a29` |
| 6 | `theorem` | [discr_odd_prime](../../../../mathematics/Algebra/Discriminant/Variant62235d62d1a3e19b83414b4edf23356d69b9d13f0f11f842e46da0dc87863d3f.lean/declarations/discr-odd-prime--d08add2d1c7ef75003ac0e94.md) | 193 | `result-track:d08add2d1c7ef75003ac0e94ff93faaf8076e63ae1ee206bdfdf0fea2aa49e03` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
