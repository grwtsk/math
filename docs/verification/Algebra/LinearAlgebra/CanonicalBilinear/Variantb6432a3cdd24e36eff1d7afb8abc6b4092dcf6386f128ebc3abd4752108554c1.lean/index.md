# Verification target: GRWTSK.Algebra.LinearAlgebra.CanonicalBilinear.Variantb6432a3cdd24e36eff1d7afb8abc6b4092dcf6386f128ebc3abd4752108554c1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1788fa8b3f0f713d023307b081fa5663c3aa1d01",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CanonicalBilinear/Variantb6432a3cdd24e36eff1d7afb8abc6b4092dcf6386f128ebc3abd4752108554c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantb6432a3cdd24e36eff1d7afb8abc6b4092dcf6386f128ebc3abd4752108554c1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantb6432a3cdd24e36eff1d7afb8abc6b4092dcf6386f128ebc3abd4752108554c1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1788fa8b3f0f713d023307b081fa5663c3aa1d01`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CanonicalBilinear/Variantb6432a3cdd24e36eff1d7afb8abc6b4092dcf6386f128ebc3abd4752108554c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CanonicalBilinear/Variantb6432a3cdd24e36eff1d7afb8abc6b4092dcf6386f128ebc3abd4752108554c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.SumsOfSquares` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.RootSystem.RootPositive` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Polarization](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantb6432a3cdd24e36eff1d7afb8abc6b4092dcf6386f128ebc3abd4752108554c1.lean/declarations/polarization--3faf2c8b91f29a1b39897273.md) | 67 | `declaration-track:3faf2c8b91f29a1b3989727392d60e55183073813cf00544da409fb6cf4561ee` |
| 2 | `lemma` | [Polarization_apply](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantb6432a3cdd24e36eff1d7afb8abc6b4092dcf6386f128ebc3abd4752108554c1.lean/declarations/polarization-apply--7b7c1a92694dabfa2a2b30be.md) | 71 | `result-track:7b7c1a92694dabfa2a2b30be942e4b69b5326249208a34c4906935757d32b95e` |
| 3 | `def` | [CoPolarization](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantb6432a3cdd24e36eff1d7afb8abc6b4092dcf6386f128ebc3abd4752108554c1.lean/declarations/copolarization--f35bb2a049e0a1a6dc3b11ce.md) | 76 | `declaration-track:f35bb2a049e0a1a6dc3b11ceaf8ca500506d7d31c78bf19e5cebb2c0ca50dc5c` |
| 4 | `lemma` | [CoPolarization_apply](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantb6432a3cdd24e36eff1d7afb8abc6b4092dcf6386f128ebc3abd4752108554c1.lean/declarations/copolarization-apply--43ebaa9de025ecb63d614d86.md) | 80 | `result-track:43ebaa9de025ecb63d614d86a95ba8cc8db56ab7596cfdf3f2582f27f1bccabc` |
| 5 | `lemma` | [CoPolarization_eq](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantb6432a3cdd24e36eff1d7afb8abc6b4092dcf6386f128ebc3abd4752108554c1.lean/declarations/copolarization-eq--48a3b5cb54da2c90672d3600.md) | 84 | `result-track:48a3b5cb54da2c90672d3600fbce19202f5bfe4a1ebff141607e700f1a3b545f` |
| 6 | `def` | [RootForm](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantb6432a3cdd24e36eff1d7afb8abc6b4092dcf6386f128ebc3abd4752108554c1.lean/declarations/rootform--eb12644278ab7c0065b63485.md) | 88 | `declaration-track:eb12644278ab7c0065b63485b88cc7c896d84f40bfe731fdd04779e8d0356988` |
| 7 | `def` | [CorootForm](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantb6432a3cdd24e36eff1d7afb8abc6b4092dcf6386f128ebc3abd4752108554c1.lean/declarations/corootform--5c00d0f8bf076c82e7ce7229.md) | 92 | `declaration-track:5c00d0f8bf076c82e7ce72294e2c0a3921ece71a339781c60dd60fa4841f333b` |
| 8 | `lemma` | [rootForm_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantb6432a3cdd24e36eff1d7afb8abc6b4092dcf6386f128ebc3abd4752108554c1.lean/declarations/rootform-apply-apply--4f37eba37202fd34ee83b415.md) | 95 | `result-track:4f37eba37202fd34ee83b41526aa4ee0b6bda708d2181aa4ab78161fa7ab6305` |
| 9 | `lemma` | [corootForm_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantb6432a3cdd24e36eff1d7afb8abc6b4092dcf6386f128ebc3abd4752108554c1.lean/declarations/corootform-apply-apply--9795f7600491ab69e419ea36.md) | 99 | `result-track:9795f7600491ab69e419ea368d8abedc6ac52ad46861550a5c960317f414aef1` |
| 10 | `lemma` | [toPerfectPairing_apply_apply_Polarization](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantb6432a3cdd24e36eff1d7afb8abc6b4092dcf6386f128ebc3abd4752108554c1.lean/declarations/toperfectpairing-apply-apply-polarization--a336a991b950ca3b0f6ea193.md) | 103 | `result-track:a336a991b950ca3b0f6ea193214bfcd919870d83d1ae8610de3a08e6313c9dec` |
| 11 | `lemma` | [toPerfectPairing_apply_CoPolarization](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantb6432a3cdd24e36eff1d7afb8abc6b4092dcf6386f128ebc3abd4752108554c1.lean/declarations/toperfectpairing-apply-copolarization--0c1625ac4645d1d9642c3fc6.md) | 107 | `result-track:0c1625ac4645d1d9642c3fc68a6d248de087147ffd5695422ae876a568258f22` |
| 12 | `lemma` | [flip_comp_polarization_eq_rootForm](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantb6432a3cdd24e36eff1d7afb8abc6b4092dcf6386f128ebc3abd4752108554c1.lean/declarations/flip-comp-polarization-eq-rootform--9f3a5c2738d522a20478f2f7.md) | 112 | `result-track:9f3a5c2738d522a20478f2f7b6fbc951757904210a1722e9ba2e00198eea4d7d` |
| 13 | `lemma` | [self_comp_coPolarization_eq_corootForm](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantb6432a3cdd24e36eff1d7afb8abc6b4092dcf6386f128ebc3abd4752108554c1.lean/declarations/self-comp-copolarization-eq-corootform--ed857f8470d0b511ce503823.md) | 116 | `result-track:ed857f8470d0b511ce5038236dc8bf01673665e17492bde10382ed4cea287e11` |
| 14 | `lemma` | [polarization_apply_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantb6432a3cdd24e36eff1d7afb8abc6b4092dcf6386f128ebc3abd4752108554c1.lean/declarations/polarization-apply-eq-zero-iff--749ee4148f83e13bda7de749.md) | 120 | `result-track:749ee4148f83e13bda7de749378a69a5aa099d69fed3bb25c71ee1d6f1271c24` |
| 15 | `lemma` | [coPolarization_apply_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantb6432a3cdd24e36eff1d7afb8abc6b4092dcf6386f128ebc3abd4752108554c1.lean/declarations/copolarization-apply-eq-zero-iff--a5bdc5bc0f3cf3398a05d732.md) | 128 | `result-track:a5bdc5bc0f3cf3398a05d73225d019f14357c1827cbd65dc9062052806b4eec4` |
| 16 | `lemma` | [ker_polarization_eq_ker_rootForm](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantb6432a3cdd24e36eff1d7afb8abc6b4092dcf6386f128ebc3abd4752108554c1.lean/declarations/ker-polarization-eq-ker-rootform--58f69a955181b8eee81504b5.md) | 132 | `result-track:58f69a955181b8eee81504b5d63c3cd3eb7dd4a0cca3be502768cc171473c413` |
| 17 | `lemma` | [ker_copolarization_eq_ker_corootForm](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantb6432a3cdd24e36eff1d7afb8abc6b4092dcf6386f128ebc3abd4752108554c1.lean/declarations/ker-copolarization-eq-ker-corootform--fe16a9805a543259b6eb58ca.md) | 136 | `result-track:fe16a9805a543259b6eb58ca1b836a04e540f8cfcbb616473d080c97eec29f4e` |
| 18 | `lemma` | [rootForm_symmetric](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantb6432a3cdd24e36eff1d7afb8abc6b4092dcf6386f128ebc3abd4752108554c1.lean/declarations/rootform-symmetric--6015ae473c301072d7e2a548.md) | 140 | `result-track:6015ae473c301072d7e2a5488eb8ea004dcf6023bddb5628abe72def1f220cd5` |
| 19 | `lemma` | [rootForm_reflection_reflection_apply](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantb6432a3cdd24e36eff1d7afb8abc6b4092dcf6386f128ebc3abd4752108554c1.lean/declarations/rootform-reflection-reflection-apply--95179139e370fba438cf1cf6.md) | 145 | `result-track:95179139e370fba438cf1cf6a1d27512119ecd98bfc8b9e3fa510727b7d28ebc` |
| 20 | `lemma` | [rootForm_self_sum_of_squares](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantb6432a3cdd24e36eff1d7afb8abc6b4092dcf6386f128ebc3abd4752108554c1.lean/declarations/rootform-self-sum-of-squares--4dce55be8ecf3b763564a400.md) | 152 | `result-track:4dce55be8ecf3b763564a400d593d77914de5ed037632898cb473c4066f6f8a7` |
| 21 | `lemma` | [rootForm_root_self](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantb6432a3cdd24e36eff1d7afb8abc6b4092dcf6386f128ebc3abd4752108554c1.lean/declarations/rootform-root-self--ad3387334f5a1c6092e7c36e.md) | 156 | `result-track:ad3387334f5a1c6092e7c36eecc0613fb7354aa2dbe9443e0f9dbaeaf3113951` |
| 22 | `theorem` | [range_polarization_domRestrict_le_span_coroot](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantb6432a3cdd24e36eff1d7afb8abc6b4092dcf6386f128ebc3abd4752108554c1.lean/declarations/range-polarization-domrestrict-le-span-coroot--02230dd330a6a491c3c869f4.md) | 160 | `result-track:02230dd330a6a491c3c869f40a195c3cda5b373e94497c4f7cbe8825be497559` |
| 23 | `theorem` | [corootSpan_dualAnnihilator_le_ker_rootForm](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantb6432a3cdd24e36eff1d7afb8abc6b4092dcf6386f128ebc3abd4752108554c1.lean/declarations/corootspan-dualannihilator-le-ker-rootform--5666c62207bc53ca114ec35d.md) | 169 | `result-track:5666c62207bc53ca114ec35d2b03c943b3307b46d532c76e355116249b798468` |
| 24 | `theorem` | [rootSpan_dualAnnihilator_le_ker_rootForm](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantb6432a3cdd24e36eff1d7afb8abc6b4092dcf6386f128ebc3abd4752108554c1.lean/declarations/rootspan-dualannihilator-le-ker-rootform--cbc06114929438c97f26f3b5.md) | 177 | `result-track:cbc06114929438c97f26f3b539842d0fdc3641e11ce599c8e3d5a9766bcb1907` |
| 25 | `def` | [PolarizationIn](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantb6432a3cdd24e36eff1d7afb8abc6b4092dcf6386f128ebc3abd4752108554c1.lean/declarations/polarizationin--56af3163b8cda2d24f557a31.md) | 189 | `declaration-track:56af3163b8cda2d24f557a312a25b653583144c9be14e475613f0647bb9c1576` |
| 26 | `lemma` | [PolarizationIn_apply](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantb6432a3cdd24e36eff1d7afb8abc6b4092dcf6386f128ebc3abd4752108554c1.lean/declarations/polarizationin-apply--f87dd9d07dd2f12a03840561.md) | 193 | `result-track:f87dd9d07dd2f12a03840561425be24f6296a05d2400927ec0807ec8cf526da3` |
| 27 | `lemma` | [PolarizationIn_eq](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantb6432a3cdd24e36eff1d7afb8abc6b4092dcf6386f128ebc3abd4752108554c1.lean/declarations/polarizationin-eq--4249baf3a8d6514825a08021.md) | 197 | `result-track:4249baf3a8d6514825a08021292fcb8529416f73dbfa3c5e7751d2fe08e1b181` |
| 28 | `lemma` | [range_polarizationIn](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantb6432a3cdd24e36eff1d7afb8abc6b4092dcf6386f128ebc3abd4752108554c1.lean/declarations/range-polarizationin--c8886cf5092debfa6483963c.md) | 205 | `result-track:c8886cf5092debfa6483963ca7435e2d7f0dcbfc87927872b4efdf37bf796226` |
| 29 | `def` | [CoPolarizationIn](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantb6432a3cdd24e36eff1d7afb8abc6b4092dcf6386f128ebc3abd4752108554c1.lean/declarations/copolarizationin--d0d993dfa90d18157eb240aa.md) | 211 | `declaration-track:d0d993dfa90d18157eb240aaeb29b467663439abb5049efbde69b6b25fea53a5` |
| 30 | `lemma` | [CoPolarizationIn_apply](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantb6432a3cdd24e36eff1d7afb8abc6b4092dcf6386f128ebc3abd4752108554c1.lean/declarations/copolarizationin-apply--6c48f4d3119227d38baeb6c2.md) | 215 | `result-track:6c48f4d3119227d38baeb6c2cc748727778343f02b1280c8051674d45c41bae6` |
| 31 | `lemma` | [CoPolarizationIn_eq](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantb6432a3cdd24e36eff1d7afb8abc6b4092dcf6386f128ebc3abd4752108554c1.lean/declarations/copolarizationin-eq--891bebad3e79e3c7f5960f98.md) | 219 | `result-track:891bebad3e79e3c7f5960f9806593defa5c78789955929f76e225b5e385ee81d` |
| 32 | `def` | [RootFormIn](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantb6432a3cdd24e36eff1d7afb8abc6b4092dcf6386f128ebc3abd4752108554c1.lean/declarations/rootformin--0a1f55f20db7b2e6660a38b3.md) | 225 | `declaration-track:0a1f55f20db7b2e6660a38b3233b8586de43da8a8613e5c5849dd6e2c9dc11c8` |
| 33 | `lemma` | [algebraMap_rootFormIn](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantb6432a3cdd24e36eff1d7afb8abc6b4092dcf6386f128ebc3abd4752108554c1.lean/declarations/algebramap-rootformin--2e5fcf9555c2fa47b2da5fbb.md) | 230 | `result-track:2e5fcf9555c2fa47b2da5fbb555b402ab838bcd2f2ab01da65ad0e1ba78a7783` |
| 34 | `lemma` | [toPerfectPairing_apply_PolarizationIn](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantb6432a3cdd24e36eff1d7afb8abc6b4092dcf6386f128ebc3abd4752108554c1.lean/declarations/toperfectpairing-apply-polarizationin--bad3792b084a028219828ffb.md) | 234 | `result-track:bad3792b084a028219828ffb9f487155984760b2467e49d76ab52ea6e837fbf3` |
| 35 | `lemma` | [range_polarizationIn_le_span_coroot](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantb6432a3cdd24e36eff1d7afb8abc6b4092dcf6386f128ebc3abd4752108554c1.lean/declarations/range-polarizationin-le-span-coroot--81ef0b9c9321244ca7489c81.md) | 241 | `result-track:81ef0b9c9321244ca7489c81d7aa1de1344f23ffa0fc972e7bd93c5d2fdf9fd2` |
| 36 | `lemma` | [rootFormIn_self_smul_coroot](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantb6432a3cdd24e36eff1d7afb8abc6b4092dcf6386f128ebc3abd4752108554c1.lean/declarations/rootformin-self-smul-coroot--07f8a5c34098f885a1d8c169.md) | 250 | `result-track:07f8a5c34098f885a1d8c1692be59b165773acfd9de655ac75dc38ae818fa914` |
| 37 | `lemma` | [prod_rootFormIn_smul_coroot_mem_range_PolarizationIn](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantb6432a3cdd24e36eff1d7afb8abc6b4092dcf6386f128ebc3abd4752108554c1.lean/declarations/prod-rootformin-smul-coroot-mem-range-polarizationin--9b0dcacc9bf2c7b488640d9d.md) | 273 | `result-track:9b0dcacc9bf2c7b488640d9d490be156c8735c70adb5e244aaa7d0aea0760985` |
| 38 | `lemma` | [rootForm_self_smul_coroot](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantb6432a3cdd24e36eff1d7afb8abc6b4092dcf6386f128ebc3abd4752108554c1.lean/declarations/rootform-self-smul-coroot--d6af53c7cda0922d838d2e9c.md) | 291 | `result-track:d6af53c7cda0922d838d2e9c8dc87a0d3fe848f0b8be8c9081012e51fcf2074a` |
| 39 | `lemma` | [corootForm_self_smul_root](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantb6432a3cdd24e36eff1d7afb8abc6b4092dcf6386f128ebc3abd4752108554c1.lean/declarations/corootform-self-smul-root--facc82d4c46a01d3ec0471ed.md) | 298 | `result-track:facc82d4c46a01d3ec0471ed91cd45bff31f81aa21fc2ad25f062fca88a8b7b5` |
| 40 | `lemma` | [four_nsmul_coPolarization_compl_polarization_apply_root](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantb6432a3cdd24e36eff1d7afb8abc6b4092dcf6386f128ebc3abd4752108554c1.lean/declarations/four-nsmul-copolarization-compl-polarization-apply-root--94c35c930de592c501964be1.md) | 302 | `result-track:94c35c930de592c501964be19deb7fb6b072fa9c1d5acf42d42b3a1f3de9ac84` |
| 41 | `lemma` | [four_smul_rootForm_sq_eq_coxeterWeight_smul](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantb6432a3cdd24e36eff1d7afb8abc6b4092dcf6386f128ebc3abd4752108554c1.lean/declarations/four-smul-rootform-sq-eq-coxeterweight-smul--7fe7b2425471de0ad5bcf18b.md) | 308 | `result-track:7fe7b2425471de0ad5bcf18b3c8f8e31034a9cfc3d7ce0483e1d387299e41ea1` |
| 42 | `lemma` | [prod_rootForm_smul_coroot_mem_range_domRestrict](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantb6432a3cdd24e36eff1d7afb8abc6b4092dcf6386f128ebc3abd4752108554c1.lean/declarations/prod-rootform-smul-coroot-mem-range-domrestrict--fd501e166a007963bc677527.md) | 325 | `result-track:fd501e166a007963bc6775271bd0db0bdf9ec24494c601c89114ce5640c4c148` |
| 43 | `def` | [posRootForm](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantb6432a3cdd24e36eff1d7afb8abc6b4092dcf6386f128ebc3abd4752108554c1.lean/declarations/posrootform--0f089f95b1ddac48896bd6a0.md) | 345 | `declaration-track:0f089f95b1ddac48896bd6a0ce4c53f17c608cdc20b3067f4a3525a74799ec13` |
| 44 | `lemma` | [algebraMap_posRootForm_posForm](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantb6432a3cdd24e36eff1d7afb8abc6b4092dcf6386f128ebc3abd4752108554c1.lean/declarations/algebramap-posrootform-posform--3b9969e6d481503b85c5b594.md) | 354 | `result-track:3b9969e6d481503b85c5b594f9a7aaaf09d4eb30605c31a5c1815b610baa52da` |
| 45 | `lemma` | [posRootForm_eq](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantb6432a3cdd24e36eff1d7afb8abc6b4092dcf6386f128ebc3abd4752108554c1.lean/declarations/posrootform-eq--5ea47699947fe8a274ede6a5.md) | 360 | `result-track:5ea47699947fe8a274ede6a5bf18fad35def24f10c2df4703c32c755494c0f99` |
| 46 | `theorem` | [exists_ge_zero_eq_rootForm](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantb6432a3cdd24e36eff1d7afb8abc6b4092dcf6386f128ebc3abd4752108554c1.lean/declarations/exists-ge-zero-eq-rootform--c81804a9029c49d2f8e0ba59.md) | 366 | `result-track:c81804a9029c49d2f8e0ba594251133ed17758fb257d96be3c8a6d6a20cd9772` |
| 47 | `lemma` | [posRootForm_posForm_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantb6432a3cdd24e36eff1d7afb8abc6b4092dcf6386f128ebc3abd4752108554c1.lean/declarations/posrootform-posform-apply-apply--8f60ad23854477d14200a692.md) | 376 | `result-track:8f60ad23854477d14200a692c9ffc015ca54466cebff3327542cce98e822b028` |
| 48 | `lemma` | [zero_le_posForm](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantb6432a3cdd24e36eff1d7afb8abc6b4092dcf6386f128ebc3abd4752108554c1.lean/declarations/zero-le-posform--da5b7a23a33730163ae54a42.md) | 381 | `result-track:da5b7a23a33730163ae54a42b3a5c43d1696d894437ca00d43fd7a04dedd3a15` |
| 49 | `lemma` | [zero_lt_pairingIn_iff'](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantb6432a3cdd24e36eff1d7afb8abc6b4092dcf6386f128ebc3abd4752108554c1.lean/declarations/zero-lt-pairingin-iff--4b49f6635938d2cd2d7e5416.md) | 391 | `result-track:4b49f6635938d2cd2d7e5416de60d3e305e354df574b56522da8cc7caed605ab` |
| 50 | `lemma` | [pairingIn_lt_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantb6432a3cdd24e36eff1d7afb8abc6b4092dcf6386f128ebc3abd4752108554c1.lean/declarations/pairingin-lt-zero-iff--e554ab0f6741f4d6888e59e4.md) | 396 | `result-track:e554ab0f6741f4d6888e59e4e4e11ab3b3bf3e83d6b3f890afdfc1c2ab87d2cb` |
| 51 | `lemma` | [pairingIn_le_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantb6432a3cdd24e36eff1d7afb8abc6b4092dcf6386f128ebc3abd4752108554c1.lean/declarations/pairingin-le-zero-iff--66ffc1a843f5c6aa25966e8c.md) | 400 | `result-track:66ffc1a843f5c6aa25966e8cde4fa6d4295d401dd26ef1862b5d583d32906047` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
