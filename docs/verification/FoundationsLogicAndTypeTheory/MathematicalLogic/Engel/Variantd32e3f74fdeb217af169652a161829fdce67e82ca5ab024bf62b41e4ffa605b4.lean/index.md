# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Engel.Variantd32e3f74fdeb217af169652a161829fdce67e82ca5ab024bf62b41e4ffa605b4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6eb8124bd3544fda957c017ee7b875e6d4284068",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variantd32e3f74fdeb217af169652a161829fdce67e82ca5ab024bf62b41e4ffa605b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variantd32e3f74fdeb217af169652a161829fdce67e82ca5ab024bf62b41e4ffa605b4.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variantd32e3f74fdeb217af169652a161829fdce67e82ca5ab024bf62b41e4ffa605b4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6eb8124bd3544fda957c017ee7b875e6d4284068`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variantd32e3f74fdeb217af169652a161829fdce67e82ca5ab024bf62b41e4ffa605b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variantd32e3f74fdeb217af169652a161829fdce67e82ca5ab024bf62b41e4ffa605b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Nilpotent` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Normalizer` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_smul_add_of_span_sup_eq_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variantd32e3f74fdeb217af169652a161829fdce67e82ca5ab024bf62b41e4ffa605b4.lean/declarations/exists-smul-add-of-span-sup-eq-top--85bc88e5e43d23d0aa714515.md) | 84 | `result-track:85bc88e5e43d23d0aa7145155eeecfdbdfa4fdf7f7a2281b20fe45ba9db08ea9` |
| 2 | `theorem` | [lie_top_eq_of_span_sup_eq_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variantd32e3f74fdeb217af169652a161829fdce67e82ca5ab024bf62b41e4ffa605b4.lean/declarations/lie-top-eq-of-span-sup-eq-top--5b165ea1d81061c825424972.md) | 91 | `result-track:5b165ea1d81061c8254249729deecf4e9fa6f459c81a08fbe1af1cc75fdd214b` |
| 3 | `theorem` | [lcs_le_lcs_of_is_nilpotent_span_sup_eq_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variantd32e3f74fdeb217af169652a161829fdce67e82ca5ab024bf62b41e4ffa605b4.lean/declarations/lcs-le-lcs-of-is-nilpotent-span-sup-eq-top--006072c98681b78d70825bc5.md) | 107 | `result-track:006072c98681b78d70825bc54ca6a6e29835cb62845f250e294c86b0e6904e65` |
| 4 | `theorem` | [isNilpotentOfIsNilpotentSpanSupEqTop](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variantd32e3f74fdeb217af169652a161829fdce67e82ca5ab024bf62b41e4ffa605b4.lean/declarations/isnilpotentofisnilpotentspansupeqtop--feb93946db9e45848d72aa82.md) | 130 | `result-track:feb93946db9e45848d72aa827443debc1b6bef9a0c1eda8b07a1018d2cc08a55` |
| 5 | `def` | [LieAlgebra.IsEngelian](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variantd32e3f74fdeb217af169652a161829fdce67e82ca5ab024bf62b41e4ffa605b4.lean/declarations/liealgebra-isengelian--269656438b1b1cc678dc674a.md) | 160 | `declaration-track:269656438b1b1cc678dc674ae63c17ecfe5b6dd0ea38b346fe904bfe0e85b40f` |
| 6 | `theorem` | [LieAlgebra.isEngelian_of_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variantd32e3f74fdeb217af169652a161829fdce67e82ca5ab024bf62b41e4ffa605b4.lean/declarations/liealgebra-isengelian-of-subsingleton--3c02692c6d43acde3c7c28ac.md) | 169 | `result-track:3c02692c6d43acde3c7c28acd77ebe10a005fc275122bd6f95ff27e862bb759f` |
| 7 | `theorem` | [Function.Surjective.isEngelian](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variantd32e3f74fdeb217af169652a161829fdce67e82ca5ab024bf62b41e4ffa605b4.lean/declarations/function-surjective-isengelian--efbaf6bffa3f083d2f626083.md) | 177 | `result-track:efbaf6bffa3f083d2f626083ed8447c949288205cb485b36272a551b168bb20f` |
| 8 | `theorem` | [LieEquiv.isEngelian_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variantd32e3f74fdeb217af169652a161829fdce67e82ca5ab024bf62b41e4ffa605b4.lean/declarations/lieequiv-isengelian-iff--f9887ba00dc328806c23a9a7.md) | 190 | `result-track:f9887ba00dc328806c23a9a7e03049434a64116b0a8c988385c9d9f1a18a73e7` |
| 9 | `theorem` | [LieAlgebra.exists_engelian_lieSubalgebra_of_lt_normalizer](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variantd32e3f74fdeb217af169652a161829fdce67e82ca5ab024bf62b41e4ffa605b4.lean/declarations/liealgebra-exists-engelian-liesubalgebra-of-lt-normalizer--a3534ecb047a300b3061dd03.md) | 196 | `result-track:a3534ecb047a300b3061dd030b3955faf851b3020c7f83c4a9a4669203ef0f81` |
| 10 | `theorem` | [LieAlgebra.isEngelian_of_isNoetherian](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variantd32e3f74fdeb217af169652a161829fdce67e82ca5ab024bf62b41e4ffa605b4.lean/declarations/liealgebra-isengelian-of-isnoetherian--55a1232d96eedb61e3e5aeed.md) | 232 | `result-track:55a1232d96eedb61e3e5aeed3e664c354afb1cd8bd026509d0c6bc98e211e6bd` |
| 11 | `theorem` | [LieModule.isNilpotent_iff_forall](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variantd32e3f74fdeb217af169652a161829fdce67e82ca5ab024bf62b41e4ffa605b4.lean/declarations/liemodule-isnilpotent-iff-forall--b074bf4f4f2d5c9d2b9c2c36.md) | 287 | `result-track:b074bf4f4f2d5c9d2b9c2c3653c248da2410dddea6c656f110d14ebf3832f8c5` |
| 12 | `theorem` | [LieAlgebra.isNilpotent_iff_forall](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variantd32e3f74fdeb217af169652a161829fdce67e82ca5ab024bf62b41e4ffa605b4.lean/declarations/liealgebra-isnilpotent-iff-forall--6b3ef3a48e16ef8f1cebd762.md) | 294 | `result-track:6b3ef3a48e16ef8f1cebd762fac4ebf7647496c2126f12ac4bf8596a0a76d54d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
