# Verification target: GRWTSK.Algebra.Multiplicity.Variant86715b15d9289674a0e8cae1bf40255f7be19a7d6ab72ceae8c780bae55b8112

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "967ce8a91fcc0362ea62ffdce57dcbadd84075b5",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Multiplicity/Variant86715b15d9289674a0e8cae1bf40255f7be19a7d6ab72ceae8c780bae55b8112.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Multiplicity/Variant86715b15d9289674a0e8cae1bf40255f7be19a7d6ab72ceae8c780bae55b8112.lean/index.md) · [Full source](../../../../mathematics/Algebra/Multiplicity/Variant86715b15d9289674a0e8cae1bf40255f7be19a7d6ab72ceae8c780bae55b8112.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `967ce8a91fcc0362ea62ffdce57dcbadd84075b5`.

Source path: `GRWTSK/Algebra/Multiplicity/Variant86715b15d9289674a0e8cae1bf40255f7be19a7d6ab72ceae8c780bae55b8112.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Multiplicity/Variant86715b15d9289674a0e8cae1bf40255f7be19a7d6ab72ceae8c780bae55b8112.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Multiplicity` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.UniqueFactorizationDomain.NormalizedFactors` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [WfDvdMonoid.max_power_factor'](../../../../mathematics/Algebra/Multiplicity/Variant86715b15d9289674a0e8cae1bf40255f7be19a7d6ab72ceae8c780bae55b8112.lean/declarations/wfdvdmonoid-max-power-factor--1eb96c7c4bb40d792bf51e61.md) | 33 | `result-track:1eb96c7c4bb40d792bf51e61ba1cda62cea7bf96557fdb9630b713013d30d156` |
| 2 | `theorem` | [WfDvdMonoid.max_power_factor](../../../../mathematics/Algebra/Multiplicity/Variant86715b15d9289674a0e8cae1bf40255f7be19a7d6ab72ceae8c780bae55b8112.lean/declarations/wfdvdmonoid-max-power-factor--5672ecfbfb56ef407ad7d823.md) | 41 | `result-track:5672ecfbfb56ef407ad7d823085fba051052c0d9519156c6836d0c6659b9bcac` |
| 3 | `theorem` | [FiniteMultiplicity.of_not_isUnit](../../../../mathematics/Algebra/Multiplicity/Variant86715b15d9289674a0e8cae1bf40255f7be19a7d6ab72ceae8c780bae55b8112.lean/declarations/finitemultiplicity-of-not-isunit--acfdbd01d184954340767349.md) | 45 | `result-track:acfdbd01d1849543407673490f73fb00350d3f90ff9443388c325c7a19999f64` |
| 4 | `theorem` | [FiniteMultiplicity.of_prime_left](../../../../mathematics/Algebra/Multiplicity/Variant86715b15d9289674a0e8cae1bf40255f7be19a7d6ab72ceae8c780bae55b8112.lean/declarations/finitemultiplicity-of-prime-left--c90bd6c14e2c0158c875ecf8.md) | 53 | `result-track:c90bd6c14e2c0158c875ecf8c7781d5aa572f0114a02e60a247b11a945d203c0` |
| 5 | `theorem` | [le_emultiplicity_iff_replicate_le_normalizedFactors](../../../../mathematics/Algebra/Multiplicity/Variant86715b15d9289674a0e8cae1bf40255f7be19a7d6ab72ceae8c780bae55b8112.lean/declarations/le-emultiplicity-iff-replicate-le-normalizedfactors--6bc1b4d696db93acb312aee3.md) | 72 | `result-track:6bc1b4d696db93acb312aee3ae4af05a518b80c30ef38ce5af536d87daa8eebb` |
| 6 | `theorem` | [emultiplicity_eq_count_normalizedFactors](../../../../mathematics/Algebra/Multiplicity/Variant86715b15d9289674a0e8cae1bf40255f7be19a7d6ab72ceae8c780bae55b8112.lean/declarations/emultiplicity-eq-count-normalizedfactors--469d2e7219383a3ba9f0ec7a.md) | 96 | `result-track:469d2e7219383a3ba9f0ec7ad69fe43e073d786a52590df321f39221809c015e` |
| 7 | `theorem` | [count_normalizedFactors_eq](../../../../mathematics/Algebra/Multiplicity/Variant86715b15d9289674a0e8cae1bf40255f7be19a7d6ab72ceae8c780bae55b8112.lean/declarations/count-normalizedfactors-eq--b1d6b26a2f6881f4bdc2e092.md) | 112 | `result-track:b1d6b26a2f6881f4bdc2e0924b15facce0d2a8134f3c1ce59f56c75e4aca6c10` |
| 8 | `theorem` | [count_normalizedFactors_eq'](../../../../mathematics/Algebra/Multiplicity/Variant86715b15d9289674a0e8cae1bf40255f7be19a7d6ab72ceae8c780bae55b8112.lean/declarations/count-normalizedfactors-eq--a806588e64b0ebede8c5e206.md) | 128 | `result-track:a806588e64b0ebede8c5e2069dc6212ca171a5366a263d4b81f14e3c6e9e78ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
