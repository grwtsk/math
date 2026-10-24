# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NodupEquivFin.Variant09840a3aaff8506384c75f796224a65bed267266986f8241084924b08297d9ff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e505a1df92012d1a458ec76c3962090f12605757",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NodupEquivFin/Variant09840a3aaff8506384c75f796224a65bed267266986f8241084924b08297d9ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NodupEquivFin/Variant09840a3aaff8506384c75f796224a65bed267266986f8241084924b08297d9ff.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NodupEquivFin/Variant09840a3aaff8506384c75f796224a65bed267266986f8241084924b08297d9ff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e505a1df92012d1a458ec76c3962090f12605757`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NodupEquivFin/Variant09840a3aaff8506384c75f796224a65bed267266986f8241084924b08297d9ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NodupEquivFin/Variant09840a3aaff8506384c75f796224a65bed267266986f8241084924b08297d9ff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Duplicate` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Sort` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [getBijectionOfForallMemList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NodupEquivFin/Variant09840a3aaff8506384c75f796224a65bed267266986f8241084924b08297d9ff.lean/declarations/getbijectionofforallmemlist--cfe13fb2afc56c773a4b667a.md) | 39 | `declaration-track:cfe13fb2afc56c773a4b667a60efa77e2783e4b162fb2b3a695088d0930c53c0` |
| 2 | `def` | [getEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NodupEquivFin/Variant09840a3aaff8506384c75f796224a65bed267266986f8241084924b08297d9ff.lean/declarations/getequiv--20e8e912a07c35f6422240a9.md) | 51 | `declaration-track:20e8e912a07c35f6422240a90e08ce768bdcd24edb3871fc59564aeb622e79b6` |
| 3 | `def` | [getEquivOfForallMemList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NodupEquivFin/Variant09840a3aaff8506384c75f796224a65bed267266986f8241084924b08297d9ff.lean/declarations/getequivofforallmemlist--43e862ae6c059fe5534773dd.md) | 63 | `declaration-track:43e862ae6c059fe5534773ddafb28aa59c075be49be445b40738663176179907` |
| 4 | `theorem` | [get_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NodupEquivFin/Variant09840a3aaff8506384c75f796224a65bed267266986f8241084924b08297d9ff.lean/declarations/get-mono--f9debfec78a69465ce852115.md) | 76 | `result-track:f9debfec78a69465ce852115369e7b7317a38c92794fa495c55b6498abdcec72` |
| 5 | `theorem` | [get_strictMono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NodupEquivFin/Variant09840a3aaff8506384c75f796224a65bed267266986f8241084924b08297d9ff.lean/declarations/get-strictmono--1e32c8969bc519f579494fe9.md) | 78 | `result-track:1e32c8969bc519f579494fe96772851cb06ff63e4ee457634d0e8fcce4d4f063` |
| 6 | `def` | [getIso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NodupEquivFin/Variant09840a3aaff8506384c75f796224a65bed267266986f8241084924b08297d9ff.lean/declarations/getiso--f731eba143b2fa15199155d4.md) | 84 | `declaration-track:f731eba143b2fa15199155d4e532bdd2515a7f6aae6009c98c1172696e258205` |
| 7 | `theorem` | [coe_getIso_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NodupEquivFin/Variant09840a3aaff8506384c75f796224a65bed267266986f8241084924b08297d9ff.lean/declarations/coe-getiso-apply--df239d58b1ebbdce27c27b30.md) | 91 | `result-track:df239d58b1ebbdce27c27b303bc778b7a8f3e1102617ffa307b8095cf73a5295` |
| 8 | `theorem` | [coe_getIso_symm_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NodupEquivFin/Variant09840a3aaff8506384c75f796224a65bed267266986f8241084924b08297d9ff.lean/declarations/coe-getiso-symm-apply--f49b9107ec71acfe7336dc5e.md) | 95 | `result-track:f49b9107ec71acfe7336dc5eb094808c8122c1c88e750d906d709723a51ee6b4` |
| 9 | `theorem` | [sublist_of_orderEmbedding_getElem?_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NodupEquivFin/Variant09840a3aaff8506384c75f796224a65bed267266986f8241084924b08297d9ff.lean/declarations/sublist-of-orderembedding-getelem-eq--fef549e23801d1fdd977dd50.md) | 106 | `result-track:fef549e23801d1fdd977dd50f94d7582bd5aa29b00bc07e7f56ac0c810385f05` |
| 10 | `theorem` | [sublist_iff_exists_orderEmbedding_getElem?_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NodupEquivFin/Variant09840a3aaff8506384c75f796224a65bed267266986f8241084924b08297d9ff.lean/declarations/sublist-iff-exists-orderembedding-getelem-eq--e4160ce08fc66754e9e4a307.md) | 137 | `result-track:e4160ce08fc66754e9e4a307dde2a384631222562a72eec52278741d43b102e8` |
| 11 | `theorem` | [sublist_iff_exists_fin_orderEmbedding_get_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NodupEquivFin/Variant09840a3aaff8506384c75f796224a65bed267266986f8241084924b08297d9ff.lean/declarations/sublist-iff-exists-fin-orderembedding-get-eq--8455a9cf92446f3df25d15f6.md) | 165 | `result-track:8455a9cf92446f3df25d15f606bd80b6daa6a4692f68872fa7fbd2418101cf24` |
| 12 | `theorem` | [duplicate_iff_exists_distinct_get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NodupEquivFin/Variant09840a3aaff8506384c75f796224a65bed267266986f8241084924b08297d9ff.lean/declarations/duplicate-iff-exists-distinct-get--0f4c23df63a97e6869c00d20.md) | 207 | `result-track:0f4c23df63a97e6869c00d20ae763579f0288c5c74ee630809a820c080b67a9b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
