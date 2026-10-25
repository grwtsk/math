# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.AxGrothendieck.Variant6f5e70f5b8c9de7b762d1e1eff0cd090c8f2368ad1f04333266edc63f1f92403

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d026e6f7b6cb1eae2235db811c7d012d9add6ec3",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/AxGrothendieck/Variant6f5e70f5b8c9de7b762d1e1eff0cd090c8f2368ad1f04333266edc63f1f92403.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/AxGrothendieck/Variant6f5e70f5b8c9de7b762d1e1eff0cd090c8f2368ad1f04333266edc63f1f92403.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/AxGrothendieck/Variant6f5e70f5b8c9de7b762d1e1eff0cd090c8f2368ad1f04333266edc63f1f92403.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d026e6f7b6cb1eae2235db811c7d012d9add6ec3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/AxGrothendieck/Variant6f5e70f5b8c9de7b762d1e1eff0cd090c8f2368ad1f04333266edc63f1f92403.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/AxGrothendieck/Variant6f5e70f5b8c9de7b762d1e1eff0cd090c8f2368ad1f04333266edc63f1f92403.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Algebraic.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Pigeonhole` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.ModelTheory.Algebra.Field.IsAlgClosed` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.ModelTheory.Algebra.Ring.Definability` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ax_grothendieck_of_locally_finite](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/AxGrothendieck/Variant6f5e70f5b8c9de7b762d1e1eff0cd090c8f2368ad1f04333266edc63f1f92403.lean/declarations/ax-grothendieck-of-locally-finite--110401cc27d770ca1e7c99e8.md) | 54 | `result-track:110401cc27d770ca1e7c99e834c78a46920d140837e80e2ed3d1ce3647499e8e` |
| 2 | `def` | [genericPolyMapSurjOnOfInjOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/AxGrothendieck/Variant6f5e70f5b8c9de7b762d1e1eff0cd090c8f2368ad1f04333266edc63f1f92403.lean/declarations/genericpolymapsurjonofinjon--e2dcbc6547c6c4225501eb39.md) | 104 | `declaration-track:e2dcbc6547c6c4225501eb3940777fbcb203f4a86ed1b2ccde437707a40bd7cc` |
| 3 | `theorem` | [realize_genericPolyMapSurjOnOfInjOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/AxGrothendieck/Variant6f5e70f5b8c9de7b762d1e1eff0cd090c8f2368ad1f04333266edc63f1f92403.lean/declarations/realize-genericpolymapsurjonofinjon--4699b655c840144ebfaf4bab.md) | 151 | `result-track:4699b655c840144ebfaf4bab87bf0fe721c73908a2c791a85ebf0c784f02f4ca` |
| 4 | `theorem` | [ACF_models_genericPolyMapSurjOnOfInjOn_of_prime](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/AxGrothendieck/Variant6f5e70f5b8c9de7b762d1e1eff0cd090c8f2368ad1f04333266edc63f1f92403.lean/declarations/acf-models-genericpolymapsurjonofinjon-of-prime--ce7c08b8439257d87369f5b3.md) | 177 | `result-track:ce7c08b8439257d87369f5b3d735a9ec5a7519f7c048c57bc999865ee5314134` |
| 5 | `theorem` | [ACF_models_genericPolyMapSurjOnOfInjOn_of_prime_or_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/AxGrothendieck/Variant6f5e70f5b8c9de7b762d1e1eff0cd090c8f2368ad1f04333266edc63f1f92403.lean/declarations/acf-models-genericpolymapsurjonofinjon-of-prime-or-zero--908bd9d4da98f67b1bc53f5f.md) | 191 | `result-track:908bd9d4da98f67b1bc53f5f119663e7e7d9a0035cd8e06736a428daa44cae2b` |
| 6 | `theorem` | [ax_grothendieck_of_definable](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/AxGrothendieck/Variant6f5e70f5b8c9de7b762d1e1eff0cd090c8f2368ad1f04333266edc63f1f92403.lean/declarations/ax-grothendieck-of-definable--3ff3a33f86b589d4aa3055ae.md) | 213 | `result-track:3ff3a33f86b589d4aa3055aea3710da915b8d608417c494d0188a1d3dc55e400` |
| 7 | `theorem` | [ax_grothendieck_zeroLocus](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/AxGrothendieck/Variant6f5e70f5b8c9de7b762d1e1eff0cd090c8f2368ad1f04333266edc63f1f92403.lean/declarations/ax-grothendieck-zerolocus--bacb7c6d625fc2659c215e19.md) | 238 | `result-track:bacb7c6d625fc2659c215e19ade18e83568272627c6459ce3eabcff2f652540c` |
| 8 | `theorem` | [ax_grothendieck_univ](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/AxGrothendieck/Variant6f5e70f5b8c9de7b762d1e1eff0cd090c8f2368ad1f04333266edc63f1f92403.lean/declarations/ax-grothendieck-univ--3cec74b54c90b5cdd8ede1bc.md) | 254 | `result-track:3cec74b54c90b5cdd8ede1bcecc585c7a523d2e483f824236092b59fd9d5f6db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
