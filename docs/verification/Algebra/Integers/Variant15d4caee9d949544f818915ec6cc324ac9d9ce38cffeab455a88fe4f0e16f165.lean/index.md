# Verification target: GRWTSK.Algebra.Integers.Variant15d4caee9d949544f818915ec6cc324ac9d9ce38cffeab455a88fe4f0e16f165

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d078f171769974bcb0e70159548ebdd693715aa",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Integers/Variant15d4caee9d949544f818915ec6cc324ac9d9ce38cffeab455a88fe4f0e16f165.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Integers/Variant15d4caee9d949544f818915ec6cc324ac9d9ce38cffeab455a88fe4f0e16f165.lean/index.md) · [Full source](../../../../mathematics/Algebra/Integers/Variant15d4caee9d949544f818915ec6cc324ac9d9ce38cffeab455a88fe4f0e16f165.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d078f171769974bcb0e70159548ebdd693715aa`.

Source path: `GRWTSK/Algebra/Integers/Variant15d4caee9d949544f818915ec6cc324ac9d9ce38cffeab455a88fe4f0e16f165.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Integers/Variant15d4caee9d949544f818915ec6cc324ac9d9ce38cffeab455a88fe4f0e16f165.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Valuation.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [integer](../../../../mathematics/Algebra/Integers/Variant15d4caee9d949544f818915ec6cc324ac9d9ce38cffeab455a88fe4f0e16f165.lean/declarations/integer--2fded9e8ae191349bb994a35.md) | 38 | `declaration-track:2fded9e8ae191349bb994a350ce63f70b1a5e35fa6dc8da05a632620ff0a28ba` |
| 2 | `structure` | [Integers](../../../../mathematics/Algebra/Integers/Variant15d4caee9d949544f818915ec6cc324ac9d9ce38cffeab455a88fe4f0e16f165.lean/declarations/integers--662d4f37c2c87f67a1ff0a21.md) | 59 | `declaration-track:662d4f37c2c87f67a1ff0a21b607f9ff69634ef826d2b5abc66d34e9a77c8edc` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Integers/Variant15d4caee9d949544f818915ec6cc324ac9d9ce38cffeab455a88fe4f0e16f165.lean/declarations/instance--280f5ed4ee2fa2e301f37f17.md) | 66 | `declaration-track:280f5ed4ee2fa2e301f37f177e63156ee7623cf7980f029dbca4aad858e52d66` |
| 4 | `theorem` | [integer.integers](../../../../mathematics/Algebra/Integers/Variant15d4caee9d949544f818915ec6cc324ac9d9ce38cffeab455a88fe4f0e16f165.lean/declarations/integer-integers--bf50554ff42048a539abe3b5.md) | 69 | `result-track:bf50554ff42048a539abe3b5e776e2ef3853abd1d0262b868032131bae07bebf` |
| 5 | `theorem` | [one_of_isUnit](../../../../mathematics/Algebra/Integers/Variant15d4caee9d949544f818915ec6cc324ac9d9ce38cffeab455a88fe4f0e16f165.lean/declarations/one-of-isunit--844ede760eea95a426373afd.md) | 80 | `result-track:844ede760eea95a426373afdeb8d6516f265dd390fd5c9876f4c1b00279e7669` |
| 6 | `theorem` | [isUnit_of_one](../../../../mathematics/Algebra/Integers/Variant15d4caee9d949544f818915ec6cc324ac9d9ce38cffeab455a88fe4f0e16f165.lean/declarations/isunit-of-one--52138ab7b1c0a8bfdd149c47.md) | 88 | `result-track:52138ab7b1c0a8bfdd149c47c1b20e0a0973546cc8f4bb438266aceca2540111` |
| 7 | `theorem` | [le_of_dvd](../../../../mathematics/Algebra/Integers/Variant15d4caee9d949544f818915ec6cc324ac9d9ce38cffeab455a88fe4f0e16f165.lean/declarations/le-of-dvd--d54be9cb274c67cc4d46bb54.md) | 101 | `result-track:d54be9cb274c67cc4d46bb5414bd0486276c4823d55ba9d769966a778aa0f9d2` |
| 8 | `theorem` | [dvd_of_le](../../../../mathematics/Algebra/Integers/Variant15d4caee9d949544f818915ec6cc324ac9d9ce38cffeab455a88fe4f0e16f165.lean/declarations/dvd-of-le--0580520ab8d99e40adc91385.md) | 119 | `result-track:0580520ab8d99e40adc91385c442b2016f4d3e6f64befea32bf75ba3805596c9` |
| 9 | `theorem` | [dvd_iff_le](../../../../mathematics/Algebra/Integers/Variant15d4caee9d949544f818915ec6cc324ac9d9ce38cffeab455a88fe4f0e16f165.lean/declarations/dvd-iff-le--78d1cc66d25ce81ef574eddd.md) | 134 | `result-track:78d1cc66d25ce81ef574eddd4827c2e94f798d0c32ece5767cfa8cfc72dbcf30` |
| 10 | `theorem` | [le_iff_dvd](../../../../mathematics/Algebra/Integers/Variant15d4caee9d949544f818915ec6cc324ac9d9ce38cffeab455a88fe4f0e16f165.lean/declarations/le-iff-dvd--7df2b8e0a84d0ab084ce13f2.md) | 138 | `result-track:7df2b8e0a84d0ab084ce13f2572881ff9e8c71b68568d18be5c53bf8457d2ea2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
