# Verification target: GRWTSK.Algebra.Algebra.Variant9890919bf2f45742b5669948c22d54fec67ec24c8a510f3b18628adfdd924d7f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "24834727ea737bf8ece1d93441a461212cd525a6",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Algebra/Variant9890919bf2f45742b5669948c22d54fec67ec24c8a510f3b18628adfdd924d7f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Algebra/Variant9890919bf2f45742b5669948c22d54fec67ec24c8a510f3b18628adfdd924d7f.lean/index.md) · [Full source](../../../../mathematics/Algebra/Algebra/Variant9890919bf2f45742b5669948c22d54fec67ec24c8a510f3b18628adfdd924d7f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `24834727ea737bf8ece1d93441a461212cd525a6`.

Source path: `GRWTSK/Algebra/Algebra/Variant9890919bf2f45742b5669948c22d54fec67ec24c8a510f3b18628adfdd924d7f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Algebra/Variant9890919bf2f45742b5669948c22d54fec67ec24c8a510f3b18628adfdd924d7f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Flat.FaithfullyFlat.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Over` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.RingHom.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.RingHom` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Quotient` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Module.FaithfullyFlat.of_specComap_surjective](../../../../mathematics/Algebra/Algebra/Variant9890919bf2f45742b5669948c22d54fec67ec24c8a510f3b18628adfdd924d7f.lean/declarations/module-faithfullyflat-of-speccomap-surjective--ca61aed888e9de2f7e1fb459.md) | 46 | `result-track:ca61aed888e9de2f7e1fb459b4da616159d5a927ae3241bcdb3a72eeac6f223b` |
| 2 | `lemma` | [Module.FaithfullyFlat.of_flat_of_isLocalHom](../../../../mathematics/Algebra/Algebra/Variant9890919bf2f45742b5669948c22d54fec67ec24c8a510f3b18628adfdd924d7f.lean/declarations/module-faithfullyflat-of-flat-of-islocalhom--e38c23fdf2c2e492e2c22d3c.md) | 58 | `result-track:e38c23fdf2c2e492e2c22d3c839b56c4c62b8fe6cb5b8a8bcb9692b2196a67f0` |
| 3 | `lemma` | [Module.FaithfullyFlat.tensorProduct_mk_injective](../../../../mathematics/Algebra/Algebra/Variant9890919bf2f45742b5669948c22d54fec67ec24c8a510f3b18628adfdd924d7f.lean/declarations/module-faithfullyflat-tensorproduct-mk-injective--b350c52c57f1aaef98dde96d.md) | 73 | `result-track:b350c52c57f1aaef98dde96d561fdbfb57d28981633b94b97ac1c11b4d0de828` |
| 4 | `lemma` | [Ideal.comap_map_eq_self_of_faithfullyFlat](../../../../mathematics/Algebra/Algebra/Variant9890919bf2f45742b5669948c22d54fec67ec24c8a510f3b18628adfdd924d7f.lean/declarations/ideal-comap-map-eq-self-of-faithfullyflat--5433b5aa0393eb6a6e1adb01.md) | 87 | `result-track:5433b5aa0393eb6a6e1adb01ca73a6940873766b349c837cf7944b3f5fa74208` |
| 5 | `lemma` | [Ideal.comap_surjective_of_faithfullyFlat](../../../../mathematics/Algebra/Algebra/Variant9890919bf2f45742b5669948c22d54fec67ec24c8a510f3b18628adfdd924d7f.lean/declarations/ideal-comap-surjective-of-faithfullyflat--292dd184ccd19c6455638ebc.md) | 107 | `result-track:292dd184ccd19c6455638ebc72c0f72c1594b9d626ea8c10299f2e51550bd49d` |
| 6 | `lemma` | [Ideal.exists_isPrime_liesOver_of_faithfullyFlat](../../../../mathematics/Algebra/Algebra/Variant9890919bf2f45742b5669948c22d54fec67ec24c8a510f3b18628adfdd924d7f.lean/declarations/ideal-exists-isprime-liesover-of-faithfullyflat--16ff5eb65f04f9f7cc051d95.md) | 112 | `result-track:16ff5eb65f04f9f7cc051d9528e3bd80fec7c06765708d3675e32baa757fbcbb` |
| 7 | `lemma` | [PrimeSpectrum.specComap_surjective_of_faithfullyFlat](../../../../mathematics/Algebra/Algebra/Variant9890919bf2f45742b5669948c22d54fec67ec24c8a510f3b18628adfdd924d7f.lean/declarations/primespectrum-speccomap-surjective-of-faithfullyflat--33e2b0c9dc725c671296aa1f.md) | 120 | `result-track:33e2b0c9dc725c671296aa1fa2ff323cff02bd0bd482e93bbedbb492801a1dc4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
