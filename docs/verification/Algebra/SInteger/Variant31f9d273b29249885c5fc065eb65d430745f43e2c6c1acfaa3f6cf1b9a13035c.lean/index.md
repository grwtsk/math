# Verification target: GRWTSK.Algebra.SInteger.Variant31f9d273b29249885c5fc065eb65d430745f43e2c6c1acfaa3f6cf1b9a13035c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "46495bc7396a6e00b25c55c4d8ec826d25fde366",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/SInteger/Variant31f9d273b29249885c5fc065eb65d430745f43e2c6c1acfaa3f6cf1b9a13035c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/SInteger/Variant31f9d273b29249885c5fc065eb65d430745f43e2c6c1acfaa3f6cf1b9a13035c.lean/index.md) · [Full source](../../../../mathematics/Algebra/SInteger/Variant31f9d273b29249885c5fc065eb65d430745f43e2c6c1acfaa3f6cf1b9a13035c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `46495bc7396a6e00b25c55c4d8ec826d25fde366`.

Source path: `GRWTSK/Algebra/SInteger/Variant31f9d273b29249885c5fc065eb65d430745f43e2c6c1acfaa3f6cf1b9a13035c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/SInteger/Variant31f9d273b29249885c5fc065eb65d430745f43e2c6c1acfaa3f6cf1b9a13035c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.DedekindDomain.AdicValuation` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [integer](../../../../mathematics/Algebra/SInteger/Variant31f9d273b29249885c5fc065eb65d430745f43e2c6c1acfaa3f6cf1b9a13035c.lean/declarations/integer--2e19748cadce03b2095c4970.md) | 61 | `declaration-track:2e19748cadce03b2095c4970d202224d09bb26397a7b76adba84d29c7dd8fc88` |
| 2 | `theorem` | [integer_eq](../../../../mathematics/Algebra/SInteger/Variant31f9d273b29249885c5fc065eb65d430745f43e2c6c1acfaa3f6cf1b9a13035c.lean/declarations/integer-eq--b3ac47a0286da41008d942ed.md) | 68 | `result-track:b3ac47a0286da41008d942ed8c3ce4e067793d3f68e0603d48866e88285173bc` |
| 3 | `theorem` | [integer_valuation_le_one](../../../../mathematics/Algebra/SInteger/Variant31f9d273b29249885c5fc065eb65d430745f43e2c6c1acfaa3f6cf1b9a13035c.lean/declarations/integer-valuation-le-one--5cc71fb1aafda841837cb905.md) | 73 | `result-track:5cc71fb1aafda841837cb9052e6eeb64272805880a1e83cc24cfd1906e29f0f7` |
| 4 | `lemma` | [integer_univ](../../../../mathematics/Algebra/SInteger/Variant31f9d273b29249885c5fc065eb65d430745f43e2c6c1acfaa3f6cf1b9a13035c.lean/declarations/integer-univ--0884875ee8f2bac5b348a992.md) | 84 | `result-track:0884875ee8f2bac5b348a9923f82376b3e6d63fd8cd29b2f71e25230e1c9f03d` |
| 5 | `lemma` | [integer_empty](../../../../mathematics/Algebra/SInteger/Variant31f9d273b29249885c5fc065eb65d430745f43e2c6c1acfaa3f6cf1b9a13035c.lean/declarations/integer-empty--c1bb5af4f3ee32bc8a7d942e.md) | 90 | `result-track:c1bb5af4f3ee32bc8a7d942e82e573bdeaa69e277dc1cafdca15780dbabd216f` |
| 6 | `def` | [unit](../../../../mathematics/Algebra/SInteger/Variant31f9d273b29249885c5fc065eb65d430745f43e2c6c1acfaa3f6cf1b9a13035c.lean/declarations/unit--f8c03a9abce1aafcdd43842a.md) | 104 | `declaration-track:f8c03a9abce1aafcdd43842a76d57109c743b519b14998fca51a1b2edb7295ef` |
| 7 | `theorem` | [unit_eq](../../../../mathematics/Algebra/SInteger/Variant31f9d273b29249885c5fc065eb65d430745f43e2c6c1acfaa3f6cf1b9a13035c.lean/declarations/unit-eq--f2f6ce57e6520e5228a74962.md) | 112 | `result-track:f2f6ce57e6520e5228a74962fa6247012b8ae076d1039776d5c5909ccd25ca60` |
| 8 | `theorem` | [unit_valuation_eq_one](../../../../mathematics/Algebra/SInteger/Variant31f9d273b29249885c5fc065eb65d430745f43e2c6c1acfaa3f6cf1b9a13035c.lean/declarations/unit-valuation-eq-one--fa73906ef7efae62df1e4aff.md) | 116 | `result-track:fa73906ef7efae62df1e4afff99ae9c49eeda782740c661ddf21e6ba7f91d7fe` |
| 9 | `def` | [unitEquivUnitsInteger](../../../../mathematics/Algebra/SInteger/Variant31f9d273b29249885c5fc065eb65d430745f43e2c6c1acfaa3f6cf1b9a13035c.lean/declarations/unitequivunitsinteger--d130cf12013594a65179f43e.md) | 122 | `declaration-track:d130cf12013594a65179f43e317b0a1dfacfd771c64c70104373e84ea40f7c8b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
