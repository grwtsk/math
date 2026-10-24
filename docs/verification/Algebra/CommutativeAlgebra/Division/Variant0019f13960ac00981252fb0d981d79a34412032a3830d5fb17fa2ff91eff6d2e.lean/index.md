# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Division.Variant0019f13960ac00981252fb0d981d79a34412032a3830d5fb17fa2ff91eff6d2e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d505e900d7d2b64172c63b2622242d1218334c1",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Division/Variant0019f13960ac00981252fb0d981d79a34412032a3830d5fb17fa2ff91eff6d2e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant0019f13960ac00981252fb0d981d79a34412032a3830d5fb17fa2ff91eff6d2e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant0019f13960ac00981252fb0d981d79a34412032a3830d5fb17fa2ff91eff6d2e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d505e900d7d2b64172c63b2622242d1218334c1`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Division/Variant0019f13960ac00981252fb0d981d79a34412032a3830d5fb17fa2ff91eff6d2e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Division/Variant0019f13960ac00981252fb0d981d79a34412032a3830d5fb17fa2ff91eff6d2e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MonoidAlgebra.Division` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [divMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant0019f13960ac00981252fb0d981d79a34412032a3830d5fb17fa2ff91eff6d2e.lean/declarations/divmonomial--fe2f0577c42f661aba2cfc4f.md) | 42 | `declaration-track:fe2f0577c42f661aba2cfc4fb1b20094eaf5dd278bb94dc2e5642a82d84ef23a` |
| 2 | `theorem` | [coeff_divMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant0019f13960ac00981252fb0d981d79a34412032a3830d5fb17fa2ff91eff6d2e.lean/declarations/coeff-divmonomial--1937ae4b0b52caab634f2bd5.md) | 48 | `result-track:1937ae4b0b52caab634f2bd56f56d0b1a21bbffe222d65f99f6dc5779edb652e` |
| 3 | `theorem` | [support_divMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant0019f13960ac00981252fb0d981d79a34412032a3830d5fb17fa2ff91eff6d2e.lean/declarations/support-divmonomial--fb0caef9949dfe7a26edc284.md) | 53 | `result-track:fb0caef9949dfe7a26edc284b1889cfede68ffcf30e830f40d2e31c068dedd2f` |
| 4 | `theorem` | [zero_divMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant0019f13960ac00981252fb0d981d79a34412032a3830d5fb17fa2ff91eff6d2e.lean/declarations/zero-divmonomial--25cc3d8a8780a6c5d7afd9c2.md) | 58 | `result-track:25cc3d8a8780a6c5d7afd9c20009cf62cab501058f2b413b15701672bb52c10b` |
| 5 | `theorem` | [divMonomial_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant0019f13960ac00981252fb0d981d79a34412032a3830d5fb17fa2ff91eff6d2e.lean/declarations/divmonomial-zero--530aca35fa6c135ae61931de.md) | 61 | `result-track:530aca35fa6c135ae61931de21461cd52b586e3cbdf1134571230986fc3c49ab` |
| 6 | `theorem` | [add_divMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant0019f13960ac00981252fb0d981d79a34412032a3830d5fb17fa2ff91eff6d2e.lean/declarations/add-divmonomial--bd5f95cc9ff5c078862dd6e5.md) | 64 | `result-track:bd5f95cc9ff5c078862dd6e571d8f38c6bb32e604cb12265e359d0a976c4266a` |
| 7 | `theorem` | [divMonomial_add](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant0019f13960ac00981252fb0d981d79a34412032a3830d5fb17fa2ff91eff6d2e.lean/declarations/divmonomial-add--29680aca3610576ab565de17.md) | 68 | `result-track:29680aca3610576ab565de17b263640f4feea49c2f97364c5319801c91f522db` |
| 8 | `theorem` | [divMonomial_monomial_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant0019f13960ac00981252fb0d981d79a34412032a3830d5fb17fa2ff91eff6d2e.lean/declarations/divmonomial-monomial-mul--0e86c5bbef6f41cafd2a4cf9.md) | 73 | `result-track:0e86c5bbef6f41cafd2a4cf98ff153269f8919e21d365609bee2a2c88ef9c4ce` |
| 9 | `theorem` | [divMonomial_mul_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant0019f13960ac00981252fb0d981d79a34412032a3830d5fb17fa2ff91eff6d2e.lean/declarations/divmonomial-mul-monomial--4787404503a0ba895fffc21b.md) | 78 | `result-track:4787404503a0ba895fffc21b44a9013933b602f5efbb696e0dabd0d1b542f580` |
| 10 | `theorem` | [divMonomial_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant0019f13960ac00981252fb0d981d79a34412032a3830d5fb17fa2ff91eff6d2e.lean/declarations/divmonomial-monomial--17ca9e66e53ccd8c8f10f359.md) | 83 | `result-track:17ca9e66e53ccd8c8f10f359d433f9f90008596761fc4727f26f5315b37d1fa0` |
| 11 | `def` | [modMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant0019f13960ac00981252fb0d981d79a34412032a3830d5fb17fa2ff91eff6d2e.lean/declarations/modmonomial--ef20d9db5d7c2778cc89c9a8.md) | 87 | `declaration-track:ef20d9db5d7c2778cc89c9a8ed2d981e7b395bf5371b30c04c8d614db744d903` |
| 12 | `theorem` | [coeff_modMonomial_of_not_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant0019f13960ac00981252fb0d981d79a34412032a3830d5fb17fa2ff91eff6d2e.lean/declarations/coeff-modmonomial-of-not-le--7e662df421c70dd3f19f1707.md) | 93 | `result-track:7e662df421c70dd3f19f17072f285a50e874391ea95a09b74788b69175b14757` |
| 13 | `theorem` | [coeff_modMonomial_of_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant0019f13960ac00981252fb0d981d79a34412032a3830d5fb17fa2ff91eff6d2e.lean/declarations/coeff-modmonomial-of-le--08261a413f175baa7526b849.md) | 101 | `result-track:08261a413f175baa7526b8498375f2a62734d88217f6fbf801cb465fafaa2df3` |
| 14 | `theorem` | [monomial_mul_modMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant0019f13960ac00981252fb0d981d79a34412032a3830d5fb17fa2ff91eff6d2e.lean/declarations/monomial-mul-modmonomial--015bce6b003fc70bc466534f.md) | 106 | `result-track:015bce6b003fc70bc466534f3ac22c3024ed73f2a399a3157c5695fdd63f3102` |
| 15 | `theorem` | [mul_monomial_modMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant0019f13960ac00981252fb0d981d79a34412032a3830d5fb17fa2ff91eff6d2e.lean/declarations/mul-monomial-modmonomial--71dd48550d5b5626502ef3eb.md) | 111 | `result-track:71dd48550d5b5626502ef3eb8e8cb0fbc4992455c8b1b7b8b4a85e2c7f69c58e` |
| 16 | `theorem` | [monomial_modMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant0019f13960ac00981252fb0d981d79a34412032a3830d5fb17fa2ff91eff6d2e.lean/declarations/monomial-modmonomial--cd035759c995bffacba425ee.md) | 116 | `result-track:cd035759c995bffacba425eeb2396482ee7c18af101bcff8e3eab32ead2498df` |
| 17 | `theorem` | [divMonomial_add_modMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant0019f13960ac00981252fb0d981d79a34412032a3830d5fb17fa2ff91eff6d2e.lean/declarations/divmonomial-add-modmonomial--d123e95e775aab396cff3494.md) | 119 | `result-track:d123e95e775aab396cff3494a962f36d770b0b91930b5feb5da02b0bc5b4b09a` |
| 18 | `theorem` | [modMonomial_add_divMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant0019f13960ac00981252fb0d981d79a34412032a3830d5fb17fa2ff91eff6d2e.lean/declarations/modmonomial-add-divmonomial--de66a2ca2edba30ec2b7502e.md) | 123 | `result-track:de66a2ca2edba30ec2b7502e010bb6592ad6493ba07f21174567e0cfdb3f21fa` |
| 19 | `theorem` | [monomial_one_dvd_iff_modMonomial_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant0019f13960ac00981252fb0d981d79a34412032a3830d5fb17fa2ff91eff6d2e.lean/declarations/monomial-one-dvd-iff-modmonomial-eq-zero--7b80280918f6d497f570e697.md) | 127 | `result-track:7b80280918f6d497f570e6975bacc1b3916688b105eb926175ea7da35685791c` |
| 20 | `theorem` | [X_mul_divMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant0019f13960ac00981252fb0d981d79a34412032a3830d5fb17fa2ff91eff6d2e.lean/declarations/x-mul-divmonomial--7fedb8bb9686aa208cf7b303.md) | 140 | `result-track:7fedb8bb9686aa208cf7b303b317c2f1f9625dba9be3d126196d61e158ae4944` |
| 21 | `theorem` | [X_divMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant0019f13960ac00981252fb0d981d79a34412032a3830d5fb17fa2ff91eff6d2e.lean/declarations/x-divmonomial--95eae9bd305f73c444978dd7.md) | 145 | `result-track:95eae9bd305f73c444978dd76ffd26d1de9e6678a5af07edf91b51a4749f1b2e` |
| 22 | `theorem` | [mul_X_divMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant0019f13960ac00981252fb0d981d79a34412032a3830d5fb17fa2ff91eff6d2e.lean/declarations/mul-x-divmonomial--cd523adc399eb98325f5bb2c.md) | 149 | `result-track:cd523adc399eb98325f5bb2cbb754a8fd5a1d998deae6d5cc7593d3b35cfa88a` |
| 23 | `theorem` | [X_mul_modMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant0019f13960ac00981252fb0d981d79a34412032a3830d5fb17fa2ff91eff6d2e.lean/declarations/x-mul-modmonomial--aa47a206104203f30bb2a9cd.md) | 154 | `result-track:aa47a206104203f30bb2a9cd185304a8153281c7c5ec3ada7e76b2396a08b937` |
| 24 | `theorem` | [mul_X_modMonomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant0019f13960ac00981252fb0d981d79a34412032a3830d5fb17fa2ff91eff6d2e.lean/declarations/mul-x-modmonomial--62b51833cb47be4d9e8722d9.md) | 159 | `result-track:62b51833cb47be4d9e8722d9aa2aa0ac195dfd19df2db44572961ff3b52acfb2` |
| 25 | `theorem` | [modMonomial_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant0019f13960ac00981252fb0d981d79a34412032a3830d5fb17fa2ff91eff6d2e.lean/declarations/modmonomial-x--9aaabdce0d52c5e62838db41.md) | 164 | `result-track:9aaabdce0d52c5e62838db411082c6365e299b3dc87f6e343eb2a4549dac1db9` |
| 26 | `theorem` | [divMonomial_add_modMonomial_single](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant0019f13960ac00981252fb0d981d79a34412032a3830d5fb17fa2ff91eff6d2e.lean/declarations/divmonomial-add-modmonomial-single--734d1779bf5369759ff77c88.md) | 167 | `result-track:734d1779bf5369759ff77c888b7101087030dcf5fedc18066723b40bd4f310e7` |
| 27 | `theorem` | [modMonomial_add_divMonomial_single](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant0019f13960ac00981252fb0d981d79a34412032a3830d5fb17fa2ff91eff6d2e.lean/declarations/modmonomial-add-divmonomial-single--ba82ff9dfd29507ce737e5a6.md) | 171 | `result-track:ba82ff9dfd29507ce737e5a61bb71c8b2fef77b1370a5b2927a436385bde666e` |
| 28 | `theorem` | [X_dvd_iff_modMonomial_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant0019f13960ac00981252fb0d981d79a34412032a3830d5fb17fa2ff91eff6d2e.lean/declarations/x-dvd-iff-modmonomial-eq-zero--f4ec346432705f9bf35b35f3.md) | 175 | `result-track:f4ec346432705f9bf35b35f3bfc389d528af7c525be06ba39f19ac24ccae91a0` |
| 29 | `theorem` | [monomial_dvd_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant0019f13960ac00981252fb0d981d79a34412032a3830d5fb17fa2ff91eff6d2e.lean/declarations/monomial-dvd-monomial--95e35172f8e505448e548d79.md) | 184 | `result-track:95e35172f8e505448e548d7962d79d6483ea77397ba922d9c5719566830783dd` |
| 30 | `theorem` | [monomial_one_dvd_monomial_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant0019f13960ac00981252fb0d981d79a34412032a3830d5fb17fa2ff91eff6d2e.lean/declarations/monomial-one-dvd-monomial-one--59d30c8f60d1ec13bd0fccf8.md) | 206 | `result-track:59d30c8f60d1ec13bd0fccf823982b66a00431f59c340524e2d864dac7b7a735` |
| 31 | `theorem` | [X_dvd_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant0019f13960ac00981252fb0d981d79a34412032a3830d5fb17fa2ff91eff6d2e.lean/declarations/x-dvd-x--8cf050c82b6aab81feb32c0c.md) | 212 | `result-track:8cf050c82b6aab81feb32c0c35cdfec51fd1ed1c20ef1c86992f753f2897689e` |
| 32 | `theorem` | [X_dvd_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Division/Variant0019f13960ac00981252fb0d981d79a34412032a3830d5fb17fa2ff91eff6d2e.lean/declarations/x-dvd-monomial--c80504e1a239fed65f2cc2f3.md) | 219 | `result-track:c80504e1a239fed65f2cc2f3ad7acda45d51ab584d8e81e710d13aa79b635a0f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
