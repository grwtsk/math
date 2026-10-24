# Verification target: GRWTSK.Algebra.LinearAlgebra.Lemmas.Variant24ca0fcaed4009a4b4c62340f97809f9cc8dd34d3698eb63551c61aee2cd982b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "893c8f1a30d2fd96fbdb0fdd113999bb005cc6d1",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant24ca0fcaed4009a4b4c62340f97809f9cc8dd34d3698eb63551c61aee2cd982b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant24ca0fcaed4009a4b4c62340f97809f9cc8dd34d3698eb63551c61aee2cd982b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant24ca0fcaed4009a4b4c62340f97809f9cc8dd34d3698eb63551c61aee2cd982b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `893c8f1a30d2fd96fbdb0fdd113999bb005cc6d1`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant24ca0fcaed4009a4b4c62340f97809f9cc8dd34d3698eb63551c61aee2cd982b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Lemmas/Variant24ca0fcaed4009a4b4c62340f97809f9cc8dd34d3698eb63551c61aee2cd982b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Quotient.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Maps` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nilpotent.Defs` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [RingHom.ker_isRadical_iff_reduced_of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant24ca0fcaed4009a4b4c62340f97809f9cc8dd34d3698eb63551c61aee2cd982b.lean/declarations/ringhom-ker-isradical-iff-reduced-of-surjective--bebf2790d64ab237a0e7ead1.md) | 23 | `result-track:bebf2790d64ab237a0e7ead1c8c19346a6e6732a28edce5d3749088cf21a1181` |
| 2 | `theorem` | [isRadical_iff_span_singleton](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant24ca0fcaed4009a4b4c62340f97809f9cc8dd34d3698eb63551c61aee2cd982b.lean/declarations/isradical-iff-span-singleton--49b643163d7fff1ee203b6a3.md) | 29 | `result-track:49b643163d7fff1ee203b6a3f88078ee19757cb6aac51757c708b38380f74347` |
| 3 | `theorem` | [isNilpotent_iff_zero_mem_powers](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant24ca0fcaed4009a4b4c62340f97809f9cc8dd34d3698eb63551c61aee2cd982b.lean/declarations/isnilpotent-iff-zero-mem-powers--ecd10cffd8082693897c5e98.md) | 34 | `result-track:ecd10cffd8082693897c5e9814148a0f449da0c9d9eaaedfa8bc8a9a8ca19dff` |
| 4 | `def` | [nilradical](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant24ca0fcaed4009a4b4c62340f97809f9cc8dd34d3698eb63551c61aee2cd982b.lean/declarations/nilradical--d1068be1918e435538f4c19e.md) | 42 | `declaration-track:d1068be1918e435538f4c19ebaafa15e5227c35fe278667e6bbec929ffad5658` |
| 5 | `theorem` | [mem_nilradical](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant24ca0fcaed4009a4b4c62340f97809f9cc8dd34d3698eb63551c61aee2cd982b.lean/declarations/mem-nilradical--e8bd47eb56e6a36a0629ebfa.md) | 45 | `result-track:e8bd47eb56e6a36a0629ebfadd449772b66c5fc89d28c737bde05f2085f024bd` |
| 6 | `theorem` | [nilradical_eq_sInf](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant24ca0fcaed4009a4b4c62340f97809f9cc8dd34d3698eb63551c61aee2cd982b.lean/declarations/nilradical-eq-sinf--e2937bea3db756746b3efa7e.md) | 48 | `result-track:e2937bea3db756746b3efa7ee61b9a3be4002e48848911e1aa96ea4f0fbaddec` |
| 7 | `theorem` | [nilpotent_iff_mem_prime](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant24ca0fcaed4009a4b4c62340f97809f9cc8dd34d3698eb63551c61aee2cd982b.lean/declarations/nilpotent-iff-mem-prime--bd23fe1055da60e40cf67069.md) | 52 | `result-track:bd23fe1055da60e40cf670695a227f9738343e4ab1a6371b45a96b67ba178dba` |
| 8 | `theorem` | [nilradical_le_prime](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant24ca0fcaed4009a4b4c62340f97809f9cc8dd34d3698eb63551c61aee2cd982b.lean/declarations/nilradical-le-prime--dd841a8a7272a59abe107c44.md) | 56 | `result-track:dd841a8a7272a59abe107c445558f7902b997f203f4e91a0be06ebded165c670` |
| 9 | `theorem` | [nilradical_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant24ca0fcaed4009a4b4c62340f97809f9cc8dd34d3698eb63551c61aee2cd982b.lean/declarations/nilradical-eq-zero--68df78f0e5009b21666929af.md) | 60 | `result-track:68df78f0e5009b21666929af46f797e81c36b4c7e82e8073fa6f765f0fa8d71b` |
| 10 | `theorem` | [nilradical_eq_bot_iff](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant24ca0fcaed4009a4b4c62340f97809f9cc8dd34d3698eb63551c61aee2cd982b.lean/declarations/nilradical-eq-bot-iff--1b2888f00f5e27842acf7dc7.md) | 63 | `result-track:1b2888f00f5e27842acf7dc71cd6402c2d801e01af2f787ae67eb6fbbd81a5f0` |
| 11 | `theorem` | [isNilpotent_mulLeft_iff](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant24ca0fcaed4009a4b4c62340f97809f9cc8dd34d3698eb63551c61aee2cd982b.lean/declarations/isnilpotent-mulleft-iff--a5fc043c24812b49d7f1a883.md) | 73 | `result-track:a5fc043c24812b49d7f1a8836069f3bc82e16dcaf27db5d5859ad062a10e6065` |
| 12 | `theorem` | [isNilpotent_mulRight_iff](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant24ca0fcaed4009a4b4c62340f97809f9cc8dd34d3698eb63551c61aee2cd982b.lean/declarations/isnilpotent-mulright-iff--8b9e80ef2ea01c7c4908cf4c.md) | 79 | `result-track:8b9e80ef2ea01c7c4908cf4c28e0c458ee44aef78312d406e29c5ccf2cb371cc` |
| 13 | `lemma` | [isNilpotent_toMatrix_iff](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant24ca0fcaed4009a4b4c62340f97809f9cc8dd34d3698eb63551c61aee2cd982b.lean/declarations/isnilpotent-tomatrix-iff--e9d685fd80b4de9e05955c9e.md) | 88 | `result-track:e9d685fd80b4de9e05955c9e73499646693900ba3ebc0b270baeb78f0427bc82` |
| 14 | `lemma` | [isNilpotent_restrict_of_le](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant24ca0fcaed4009a4b4c62340f97809f9cc8dd34d3698eb63551c61aee2cd982b.lean/declarations/isnilpotent-restrict-of-le--7b6cda91d8f99453990c23dc.md) | 102 | `result-track:7b6cda91d8f99453990c23dc744f734cec0ed9bac146805e80262e94b0d4784e` |
| 15 | `lemma` | [isNilpotent.restrict](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant24ca0fcaed4009a4b4c62340f97809f9cc8dd34d3698eb63551c61aee2cd982b.lean/declarations/isnilpotent-restrict--a7af4fcee206b90e7396b186.md) | 114 | `result-track:a7af4fcee206b90e7396b186486fce4463d34598848496b91eaf4e4dde896367` |
| 16 | `theorem` | [IsNilpotent.mapQ](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variant24ca0fcaed4009a4b4c62340f97809f9cc8dd34d3698eb63551c61aee2cd982b.lean/declarations/isnilpotent-mapq--2a2aef08acba7f6b85a295f4.md) | 126 | `result-track:2a2aef08acba7f6b85a295f451e947dfe36af59a36dc26c45ffaadd04af1c93e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
