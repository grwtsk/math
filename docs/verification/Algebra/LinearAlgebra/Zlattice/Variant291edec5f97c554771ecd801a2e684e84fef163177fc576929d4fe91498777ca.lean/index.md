# Verification target: GRWTSK.Algebra.LinearAlgebra.Zlattice.Variant291edec5f97c554771ecd801a2e684e84fef163177fc576929d4fe91498777ca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a93d0fc8296db60ce64bd3dce748436d87e39926",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Zlattice/Variant291edec5f97c554771ecd801a2e684e84fef163177fc576929d4fe91498777ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant291edec5f97c554771ecd801a2e684e84fef163177fc576929d4fe91498777ca.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant291edec5f97c554771ecd801a2e684e84fef163177fc576929d4fe91498777ca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a93d0fc8296db60ce64bd3dce748436d87e39926`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Zlattice/Variant291edec5f97c554771ecd801a2e684e84fef163177fc576929d4fe91498777ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Zlattice/Variant291edec5f97c554771ecd801a2e684e84fef163177fc576929d4fe91498777ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.FreeModule.PID` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.FundamentalDomain` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Module` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fundamentalDomain](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant291edec5f97c554771ecd801a2e684e84fef163177fc576929d4fe91498777ca.lean/declarations/fundamentaldomain--1e1e104dc291e6360007e37c.md) | 59 | `declaration-track:1e1e104dc291e6360007e37ce1b46b6714c18a9d856eee737c4e2ab7bc86e9c3` |
| 2 | `theorem` | [mem_fundamentalDomain](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant291edec5f97c554771ecd801a2e684e84fef163177fc576929d4fe91498777ca.lean/declarations/mem-fundamentaldomain--5e7681e92abb0cf973599da2.md) | 63 | `result-track:5e7681e92abb0cf973599da20b63a76b3ee45a33245e396a6347912678469a76` |
| 3 | `def` | [floor](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant291edec5f97c554771ecd801a2e684e84fef163177fc576929d4fe91498777ca.lean/declarations/floor--671c24839a581683ce9cc728.md) | 75 | `declaration-track:671c24839a581683ce9cc72884eaf80658fb5bf5f17cf0e8d3474d35fb465eb3` |
| 4 | `def` | [ceil](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant291edec5f97c554771ecd801a2e684e84fef163177fc576929d4fe91498777ca.lean/declarations/ceil--528ccb8b2e48e44aa2d880f7.md) | 80 | `declaration-track:528ccb8b2e48e44aa2d880f7fc008cd25e9efa258ad2906fc97143dc3bd3cf22` |
| 5 | `theorem` | [repr_floor_apply](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant291edec5f97c554771ecd801a2e684e84fef163177fc576929d4fe91498777ca.lean/declarations/repr-floor-apply--8abc0ad37adae34687b91598.md) | 84 | `result-track:8abc0ad37adae34687b91598ec2fad4b5d80beb202b6f7e05bd0b3b04a9e2432` |
| 6 | `theorem` | [repr_ceil_apply](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant291edec5f97c554771ecd801a2e684e84fef163177fc576929d4fe91498777ca.lean/declarations/repr-ceil-apply--66c4820e42485d7250a7160c.md) | 91 | `result-track:66c4820e42485d7250a7160c7490a618e1ab1383ab32a1960d537de47869c2eb` |
| 7 | `theorem` | [floor_eq_self_of_mem](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant291edec5f97c554771ecd801a2e684e84fef163177fc576929d4fe91498777ca.lean/declarations/floor-eq-self-of-mem--e2e99c4e67109b7d7d2c9de4.md) | 98 | `result-track:e2e99c4e67109b7d7d2c9de41320acc0b4b6fb2a0583e7ecb059a94efa0ddbd5` |
| 8 | `theorem` | [ceil_eq_self_of_mem](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant291edec5f97c554771ecd801a2e684e84fef163177fc576929d4fe91498777ca.lean/declarations/ceil-eq-self-of-mem--703633c2d3e5a7a170e2f6c0.md) | 108 | `result-track:703633c2d3e5a7a170e2f6c0fb5e65157361c8b6cf41ba7e4fc349f114495899` |
| 9 | `def` | [fract](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant291edec5f97c554771ecd801a2e684e84fef163177fc576929d4fe91498777ca.lean/declarations/fract--ff32669cb5856c1f2e666fd4.md) | 120 | `declaration-track:ff32669cb5856c1f2e666fd4a1c6ff1ba44085a34ebd07ee0e205c352fa21dd2` |
| 10 | `theorem` | [fract_apply](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant291edec5f97c554771ecd801a2e684e84fef163177fc576929d4fe91498777ca.lean/declarations/fract-apply--70e88e00867d2db75d4cbfe3.md) | 123 | `result-track:70e88e00867d2db75d4cbfe33301eb60d5c8617aa127307b220b421bbf031c10` |
| 11 | `theorem` | [repr_fract_apply](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant291edec5f97c554771ecd801a2e684e84fef163177fc576929d4fe91498777ca.lean/declarations/repr-fract-apply--171db26beaa0a5c05cd0902e.md) | 127 | `result-track:171db26beaa0a5c05cd0902e15a6fae0e1e78c4321a7a0db684d24d1e3a497ba` |
| 12 | `theorem` | [fract_fract](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant291edec5f97c554771ecd801a2e684e84fef163177fc576929d4fe91498777ca.lean/declarations/fract-fract--10bd0dce9c410d7b9efb5878.md) | 132 | `result-track:10bd0dce9c410d7b9efb587846b8bbadd71f73e54cd8146bc3743baaef04f5fa` |
| 13 | `theorem` | [fract_zspan_add](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant291edec5f97c554771ecd801a2e684e84fef163177fc576929d4fe91498777ca.lean/declarations/fract-zspan-add--7ba508eb14a04ca2a1a85712.md) | 137 | `result-track:7ba508eb14a04ca2a1a857122da6b70179e605acc70e026e2499db565b178a3b` |
| 14 | `theorem` | [fract_add_zspan](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant291edec5f97c554771ecd801a2e684e84fef163177fc576929d4fe91498777ca.lean/declarations/fract-add-zspan--83a6b5bef5a2561b33a8235f.md) | 148 | `result-track:83a6b5bef5a2561b33a8235f3da1ab3ec805802bcb40c2fa0e487ec0ed230c7b` |
| 15 | `theorem` | [fract_eq_self](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant291edec5f97c554771ecd801a2e684e84fef163177fc576929d4fe91498777ca.lean/declarations/fract-eq-self--af61bad1db26f63396eb9c1c.md) | 154 | `result-track:af61bad1db26f63396eb9c1cc73d77e711016e48e8f3bf1b2a88b23f80abd0cc` |
| 16 | `theorem` | [fract_mem_fundamentalDomain](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant291edec5f97c554771ecd801a2e684e84fef163177fc576929d4fe91498777ca.lean/declarations/fract-mem-fundamentaldomain--7e42c9329ed106d7e48bae75.md) | 161 | `result-track:7e42c9329ed106d7e48bae75b73ca03fc1907a34fe7b76b5414c7f5b64a6d44e` |
| 17 | `def` | [fract_restrict](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant291edec5f97c554771ecd801a2e684e84fef163177fc576929d4fe91498777ca.lean/declarations/fract-restrict--dac54dcbf4df22374e34ed7e.md) | 166 | `declaration-track:dac54dcbf4df22374e34ed7e2ac32c93001d8c547432db980cea8fd53c5603a0` |
| 18 | `theorem` | [fract_restrict_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant291edec5f97c554771ecd801a2e684e84fef163177fc576929d4fe91498777ca.lean/declarations/fract-restrict-surjective--214c1785209911f333356540.md) | 168 | `result-track:214c1785209911f333356540c09647d0cfbb705f3198b64996f3e4a657f59b48` |
| 19 | `theorem` | [fract_restrict_apply](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant291edec5f97c554771ecd801a2e684e84fef163177fc576929d4fe91498777ca.lean/declarations/fract-restrict-apply--330ed5bf7e7b134fd67045e1.md) | 172 | `result-track:330ed5bf7e7b134fd67045e1f570eb24e0168940c3324167aed6c35019c2fcb7` |
| 20 | `theorem` | [fract_eq_fract](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant291edec5f97c554771ecd801a2e684e84fef163177fc576929d4fe91498777ca.lean/declarations/fract-eq-fract--40ba1e8803f34acac1d9964e.md) | 174 | `result-track:40ba1e8803f34acac1d9964e551626acb1fa9646cd48c9750c0db5f327fb60b0` |
| 21 | `theorem` | [norm_fract_le](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant291edec5f97c554771ecd801a2e684e84fef163177fc576929d4fe91498777ca.lean/declarations/norm-fract-le--678d8290aa9fedba21dbea4d.md) | 182 | `result-track:678d8290aa9fedba21dbea4dac1b401a1ee2ea91adba375ff8b72474d1c07a83` |
| 22 | `theorem` | [coe_floor_self](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant291edec5f97c554771ecd801a2e684e84fef163177fc576929d4fe91498777ca.lean/declarations/coe-floor-self--3126079093f429a27299b2b3.md) | 204 | `result-track:3126079093f429a27299b2b394df49392ebc54ff2567b927fc2dbce060db39e0` |
| 23 | `theorem` | [coe_fract_self](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant291edec5f97c554771ecd801a2e684e84fef163177fc576929d4fe91498777ca.lean/declarations/coe-fract-self--ac3c6673ba4f0d8a6832327e.md) | 209 | `result-track:ac3c6673ba4f0d8a6832327e498d0827d462d1f754e6ce91d24c30c9a0910e93` |
| 24 | `theorem` | [fundamentalDomain_bounded](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant291edec5f97c554771ecd801a2e684e84fef163177fc576929d4fe91498777ca.lean/declarations/fundamentaldomain-bounded--2464ba08f94958a6e37f1292.md) | 217 | `result-track:2464ba08f94958a6e37f12922db800ef4e5d1d3f09e906b5b314e8be339ac2b5` |
| 25 | `theorem` | [vadd_mem_fundamentalDomain](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant291edec5f97c554771ecd801a2e684e84fef163177fc576929d4fe91498777ca.lean/declarations/vadd-mem-fundamentaldomain--7e09f108ea30d626e39abf4a.md) | 228 | `result-track:7e09f108ea30d626e39abf4a8e011ce53fb9d2beea4c8d8be982e1340e600d09` |
| 26 | `theorem` | [exist_unique_vadd_mem_fundamentalDomain](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant291edec5f97c554771ecd801a2e684e84fef163177fc576929d4fe91498777ca.lean/declarations/exist-unique-vadd-mem-fundamentaldomain--aa7fc69099e008961ddaab13.md) | 235 | `result-track:aa7fc69099e008961ddaab13ad80b27485844765f4ca5f0292bd255ec3606c0a` |
| 27 | `def` | [QuotientEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant291edec5f97c554771ecd801a2e684e84fef163177fc576929d4fe91498777ca.lean/declarations/quotientequiv--eb8bb3cc6282bf338a4b0ae9.md) | 245 | `declaration-track:eb8bb3cc6282bf338a4b0ae92945abc583648a9537bb1abe5b42382fa059f420` |
| 28 | `theorem` | [quotientEquiv_apply_mk](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant291edec5f97c554771ecd801a2e684e84fef163177fc576929d4fe91498777ca.lean/declarations/quotientequiv-apply-mk--32b4aee4bc3a908641f60c6e.md) | 261 | `result-track:32b4aee4bc3a908641f60c6eedad88dcc304eb0725f5129a7590ac99714c716f` |
| 29 | `theorem` | [quotientEquiv.symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant291edec5f97c554771ecd801a2e684e84fef163177fc576929d4fe91498777ca.lean/declarations/quotientequiv-symm-apply--882b6583d69951374178e92d.md) | 265 | `result-track:882b6583d69951374178e92d763a03eef0c9697da82c063ee0926cda9994389b` |
| 30 | `theorem` | [fundamentalDomain_measurableSet](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant291edec5f97c554771ecd801a2e684e84fef163177fc576929d4fe91498777ca.lean/declarations/fundamentaldomain-measurableset--bc94bcbe68a103aaca0da6f2.md) | 279 | `result-track:bc94bcbe68a103aaca0da6f2e95692eaf9a561e6521f2f6f944cdc27d1c098a4` |
| 31 | `theorem` | [isAddFundamentalDomain](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant291edec5f97c554771ecd801a2e684e84fef163177fc576929d4fe91498777ca.lean/declarations/isaddfundamentaldomain--8400c60312561a2e8af49b83.md) | 295 | `result-track:8400c60312561a2e8af49b83e0812d55a490ad3829ba45860d06297f3d23be78` |
| 32 | `theorem` | [Zlattice.FG](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant291edec5f97c554771ecd801a2e684e84fef163177fc576929d4fe91498777ca.lean/declarations/zlattice-fg--05d24841f1d3ed4cfdf94165.md) | 316 | `result-track:05d24841f1d3ed4cfdf941651eeb2240b376af45f1986c0833a67c882085db94` |
| 33 | `theorem` | [Zlattice.module_finite](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant291edec5f97c554771ecd801a2e684e84fef163177fc576929d4fe91498777ca.lean/declarations/zlattice-module-finite--540bde333363faa41e20feab.md) | 351 | `result-track:540bde333363faa41e20feabffb3ee7b7fbb6d7bd6933cbf20c9e9bf86153117` |
| 34 | `theorem` | [Zlattice.module_free](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant291edec5f97c554771ecd801a2e684e84fef163177fc576929d4fe91498777ca.lean/declarations/zlattice-module-free--016224ad599cccc7c480af8a.md) | 354 | `result-track:016224ad599cccc7c480af8a59ac4cd7706ea58d17fbb2feb17d5a14ff264499` |
| 35 | `theorem` | [Zlattice.rank](../../../../../mathematics/Algebra/LinearAlgebra/Zlattice/Variant291edec5f97c554771ecd801a2e684e84fef163177fc576929d4fe91498777ca.lean/declarations/zlattice-rank--ff0912aba7bae40d26332a42.md) | 365 | `result-track:ff0912aba7bae40d26332a427670f8035c98c69c2806ce5cea60ffe5459cb9b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
