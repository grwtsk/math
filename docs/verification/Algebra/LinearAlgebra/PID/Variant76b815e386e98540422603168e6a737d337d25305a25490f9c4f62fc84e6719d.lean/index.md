# Verification target: GRWTSK.Algebra.LinearAlgebra.PID.Variant76b815e386e98540422603168e6a737d337d25305a25490f9c4f62fc84e6719d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12d968e39c8216e9e0b328f258228adf9b13d121",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PID/Variant76b815e386e98540422603168e6a737d337d25305a25490f9c4f62fc84e6719d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variant76b815e386e98540422603168e6a737d337d25305a25490f9c4f62fc84e6719d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variant76b815e386e98540422603168e6a737d337d25305a25490f9c4f62fc84e6719d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12d968e39c8216e9e0b328f258228adf9b13d121`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PID/Variant76b815e386e98540422603168e6a737d337d25305a25490f9c4f62fc84e6719d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PID/Variant76b815e386e98540422603168e6a737d337d25305a25490f9c4f62fc84e6719d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.DedekindDomain` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.PID` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Projective` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Biproducts` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.SimpleModule.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Submodule.isSemisimple_torsionBy_of_irreducible](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variant76b815e386e98540422603168e6a737d337d25305a25490f9c4f62fc84e6719d.lean/declarations/submodule-issemisimple-torsionby-of-irreducible--b6ae8c9ce91b2d99abcf10fd.md) | 71 | `result-track:b6ae8c9ce91b2d99abcf10fd87b23ad592b1d634432d4e89088090eea2e102a2` |
| 2 | `theorem` | [Submodule.isInternal_prime_power_torsion_of_pid](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variant76b815e386e98540422603168e6a737d337d25305a25490f9c4f62fc84e6719d.lean/declarations/submodule-isinternal-prime-power-torsion-of-pid--eda3efa262a28a782506b5c7.md) | 81 | `result-track:eda3efa262a28a782506b5c7e800eb6604ee2d388ff5bf87ba2a1e0593988a5b` |
| 3 | `theorem` | [Submodule.exists_isInternal_prime_power_torsion_of_pid](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variant76b815e386e98540422603168e6a737d337d25305a25490f9c4f62fc84e6719d.lean/declarations/submodule-exists-isinternal-prime-power-torsion-of-pid--646af98ba071e0d19586bcdb.md) | 94 | `result-track:646af98ba071e0d19586bcdba7e00edfcdb1a495f2cb2a5c089dd3ddbe358f88` |
| 4 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.SubmoduleIsSemisimpleTorsionByOfIrreducible.Variant39ad844fc425eeba5713ebe57d1f9b07b88b00862c955a51e7bdbfeea493ca54.Ideal.torsionOf_eq_span_pow_pOrder](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variant76b815e386e98540422603168e6a737d337d25305a25490f9c4f62fc84e6719d.lean/declarations/root-grwtsk-algebra-linearalgebra-submoduleissemisimpletorsionbyofirredu--ccf8390b7f892d53aed3a00f.md) | 117 | `result-track:ccf8390b7f892d53aed3a00fb197c5eb3f5ea4ab68621b4173dfa6dcbeec9201` |
| 5 | `theorem` | [p_pow_smul_lift](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variant76b815e386e98540422603168e6a737d337d25305a25490f9c4f62fc84e6719d.lean/declarations/p-pow-smul-lift--782f3bd4328a7f8699fa9774.md) | 131 | `result-track:782f3bd4328a7f8699fa97743b91166a5f86999dd51276ba4156b182e620aa73` |
| 6 | `theorem` | [exists_smul_eq_zero_and_mk_eq](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variant76b815e386e98540422603168e6a737d337d25305a25490f9c4f62fc84e6719d.lean/declarations/exists-smul-eq-zero-and-mk-eq--28ca4c45ce6e19979c3098d3.md) | 157 | `result-track:28ca4c45ce6e19979c3098d334833f7e25896527d81f9af8e6f22d8404147e95` |
| 7 | `theorem` | [torsion_by_prime_power_decomposition](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variant76b815e386e98540422603168e6a737d337d25305a25490f9c4f62fc84e6719d.lean/declarations/torsion-by-prime-power-decomposition--1de3e37f89bf080331054f59.md) | 176 | `result-track:1de3e37f89bf080331054f5934755c9ceddcc3481ec761a90a1ec8a5ee9ffe5f` |
| 8 | `theorem` | [equiv_directSum_of_isTorsion](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variant76b815e386e98540422603168e6a737d337d25305a25490f9c4f62fc84e6719d.lean/declarations/equiv-directsum-of-istorsion--749e15005f8016947ada8495.md) | 236 | `result-track:749e15005f8016947ada8495d92fabed7a713c2030eec8bfcbde58f4f937955b` |
| 9 | `theorem` | [equiv_free_prod_directSum](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variant76b815e386e98540422603168e6a737d337d25305a25490f9c4f62fc84e6719d.lean/declarations/equiv-free-prod-directsum--9beb470dcbc5ac93ca1aee32.md) | 263 | `result-track:9beb470dcbc5ac93ca1aee325b20b9038b4cd937ff5c933425fa4b22dce87b8a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
