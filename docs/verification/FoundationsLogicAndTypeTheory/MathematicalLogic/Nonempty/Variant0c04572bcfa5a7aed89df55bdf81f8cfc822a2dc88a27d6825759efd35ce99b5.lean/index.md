# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Nonempty.Variant0c04572bcfa5a7aed89df55bdf81f8cfc822a2dc88a27d6825759efd35ce99b5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0134c08032aaa3946e6bf9fa4b8a1832d1d091e3",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant0c04572bcfa5a7aed89df55bdf81f8cfc822a2dc88a27d6825759efd35ce99b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant0c04572bcfa5a7aed89df55bdf81f8cfc822a2dc88a27d6825759efd35ce99b5.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant0c04572bcfa5a7aed89df55bdf81f8cfc822a2dc88a27d6825759efd35ce99b5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0134c08032aaa3946e6bf9fa4b8a1832d1d091e3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant0c04572bcfa5a7aed89df55bdf81f8cfc822a2dc88a27d6825759efd35ce99b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant0c04572bcfa5a7aed89df55bdf81f8cfc822a2dc88a27d6825759efd35ce99b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Function.Defs` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Nonempty.forall](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant0c04572bcfa5a7aed89df55bdf81f8cfc822a2dc88a27d6825759efd35ce99b5.lean/declarations/nonempty-forall--baaffc804d90edecb6435be8.md) | 32 | `result-track:baaffc804d90edecb6435be849add1e2fc96de6627dece48d0d3c380c3b573df` |
| 2 | `theorem` | [Nonempty.exists](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant0c04572bcfa5a7aed89df55bdf81f8cfc822a2dc88a27d6825759efd35ce99b5.lean/declarations/nonempty-exists--2209e0e614e4c1da448ce64f.md) | 36 | `result-track:2209e0e614e4c1da448ce64f3467596a618adaaebef80cd8fa8d2fd0c43b3635` |
| 3 | `theorem` | [exists_const_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant0c04572bcfa5a7aed89df55bdf81f8cfc822a2dc88a27d6825759efd35ce99b5.lean/declarations/exists-const-iff--dcc9e9e0165234e2dd697f23.md) | 42 | `result-track:dcc9e9e0165234e2dd697f23eecff2f278681c322435be41b12eead3a748ef98` |
| 4 | `theorem` | [exists_true_iff_nonempty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant0c04572bcfa5a7aed89df55bdf81f8cfc822a2dc88a27d6825759efd35ce99b5.lean/declarations/exists-true-iff-nonempty--99e16346f956623eb00b01e7.md) | 45 | `result-track:99e16346f956623eb00b01e7c579d26379a85a885bda735de14db8528722a8d0` |
| 5 | `theorem` | [Nonempty.imp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant0c04572bcfa5a7aed89df55bdf81f8cfc822a2dc88a27d6825759efd35ce99b5.lean/declarations/nonempty-imp--7c0b748b9076f30a79d1ab4c.md) | 48 | `result-track:7c0b748b9076f30a79d1ab4c8f6caade7abf3ebd1a0aca60ba441fc3c63b6fe5` |
| 6 | `theorem` | [not_nonempty_iff_imp_false](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant0c04572bcfa5a7aed89df55bdf81f8cfc822a2dc88a27d6825759efd35ce99b5.lean/declarations/not-nonempty-iff-imp-false--1769ac5c2c14cae686ae95c0.md) | 51 | `result-track:1769ac5c2c14cae686ae95c07e38483af8990855160453d90b844f45c9dc4add` |
| 7 | `theorem` | [nonempty_psigma](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant0c04572bcfa5a7aed89df55bdf81f8cfc822a2dc88a27d6825759efd35ce99b5.lean/declarations/nonempty-psigma--76105b1f2222343c373effde.md) | 55 | `result-track:76105b1f2222343c373effde9b6450d367825d7d7131e6585d14644019ac3e9c` |
| 8 | `theorem` | [nonempty_subtype](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant0c04572bcfa5a7aed89df55bdf81f8cfc822a2dc88a27d6825759efd35ce99b5.lean/declarations/nonempty-subtype--01690a10eab3c9c83f9d82be.md) | 59 | `result-track:01690a10eab3c9c83f9d82beb43910a9aadd8ddd29ae5e3777ddd6ac76a8ef2a` |
| 9 | `theorem` | [nonempty_pprod](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant0c04572bcfa5a7aed89df55bdf81f8cfc822a2dc88a27d6825759efd35ce99b5.lean/declarations/nonempty-pprod--eaaecc6d1eef461930f6466c.md) | 63 | `result-track:eaaecc6d1eef461930f6466c0ad1ebddd90b993abac58d1f31addae3bcf11cff` |
| 10 | `theorem` | [nonempty_psum](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant0c04572bcfa5a7aed89df55bdf81f8cfc822a2dc88a27d6825759efd35ce99b5.lean/declarations/nonempty-psum--559ff72188ff028019aba0cc.md) | 67 | `result-track:559ff72188ff028019aba0ccba90074ce21541cbbd767f971bd73339a263f56d` |
| 11 | `theorem` | [nonempty_plift](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant0c04572bcfa5a7aed89df55bdf81f8cfc822a2dc88a27d6825759efd35ce99b5.lean/declarations/nonempty-plift--1b412eeef46c6c4c82c2c851.md) | 79 | `result-track:1b412eeef46c6c4c82c2c851db6e8024bcbc139f21e7e32a9516d55263e86a1a` |
| 12 | `def` | [Classical.inhabited_of_nonempty'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant0c04572bcfa5a7aed89df55bdf81f8cfc822a2dc88a27d6825759efd35ce99b5.lean/declarations/classical-inhabited-of-nonempty--d37be354702c0d072e6d71df.md) | 85 | `declaration-track:d37be354702c0d072e6d71df31ec4e2f9e3bb91c1601b3ca67ad32e29426db1f` |
| 13 | `abbrev` | [Nonempty.some](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant0c04572bcfa5a7aed89df55bdf81f8cfc822a2dc88a27d6825759efd35ce99b5.lean/declarations/nonempty-some--42f00a038e3bc21cbbcad36f.md) | 89 | `declaration-track:42f00a038e3bc21cbbcad36f40e5442917af6df0917b3e265674954d379c004b` |
| 14 | `abbrev` | [Classical.arbitrary](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant0c04572bcfa5a7aed89df55bdf81f8cfc822a2dc88a27d6825759efd35ce99b5.lean/declarations/classical-arbitrary--8f4512170e3d9d83081dbe56.md) | 93 | `declaration-track:8f4512170e3d9d83081dbe56bb3d6e3091dad06f8c49123e8ac6343fc6f30d2a` |
| 15 | `theorem` | [Nonempty.map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant0c04572bcfa5a7aed89df55bdf81f8cfc822a2dc88a27d6825759efd35ce99b5.lean/declarations/nonempty-map--968ccb1581f5cfad6294bccc.md) | 98 | `result-track:968ccb1581f5cfad6294bccca72a4041b592867e6fc49c52026b7b5ecbf60f2c` |
| 16 | `theorem` | [Nonempty.map2](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant0c04572bcfa5a7aed89df55bdf81f8cfc822a2dc88a27d6825759efd35ce99b5.lean/declarations/nonempty-map2--4cccdf70e35ba77687826a7f.md) | 101 | `result-track:4cccdf70e35ba77687826a7f3400584b6a0720451388a19b4bdefd6fbe704607` |
| 17 | `theorem` | [Nonempty.congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant0c04572bcfa5a7aed89df55bdf81f8cfc822a2dc88a27d6825759efd35ce99b5.lean/declarations/nonempty-congr--0f2a68adf95e3193ed225e25.md) | 105 | `result-track:0f2a68adf95e3193ed225e250c7d7f598eb8a40f9ea5bcefd56b3460f6eb4330` |
| 18 | `theorem` | [Nonempty.elim_to_inhabited](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant0c04572bcfa5a7aed89df55bdf81f8cfc822a2dc88a27d6825759efd35ce99b5.lean/declarations/nonempty-elim-to-inhabited--0a309963efd1bb4ab1647b56.md) | 108 | `result-track:0a309963efd1bb4ab1647b56044768e6a6f18a7c7a03f5622da17b5357714de1` |
| 19 | `theorem` | [Classical.nonempty_pi](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant0c04572bcfa5a7aed89df55bdf81f8cfc822a2dc88a27d6825759efd35ce99b5.lean/declarations/classical-nonempty-pi--720037b3400f4fed35f6ceee.md) | 112 | `result-track:720037b3400f4fed35f6ceeeb6d7a5db02672d650453be5ad9b50e09e5cc23f4` |
| 20 | `theorem` | [subsingleton_of_not_nonempty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant0c04572bcfa5a7aed89df55bdf81f8cfc822a2dc88a27d6825759efd35ce99b5.lean/declarations/subsingleton-of-not-nonempty--d8c1cea869e0865e301ba661.md) | 115 | `result-track:d8c1cea869e0865e301ba661dc768d7cc7fd82ae50015806cefd94cddb75166e` |
| 21 | `theorem` | [Function.Surjective.nonempty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant0c04572bcfa5a7aed89df55bdf81f8cfc822a2dc88a27d6825759efd35ce99b5.lean/declarations/function-surjective-nonempty--c67fa2d75e8df54e28bf8f10.md) | 118 | `result-track:c67fa2d75e8df54e28bf8f10aff910a542730d80a0184ad8b1ea608e56cc4235` |
| 22 | `theorem` | [nonempty_sigma](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant0c04572bcfa5a7aed89df55bdf81f8cfc822a2dc88a27d6825759efd35ce99b5.lean/declarations/nonempty-sigma--244bfa13804880a639318e7a.md) | 130 | `result-track:244bfa13804880a639318e7a165330b4b4ef233dd139e09b9b10e3906a7b3c3a` |
| 23 | `theorem` | [nonempty_sum](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant0c04572bcfa5a7aed89df55bdf81f8cfc822a2dc88a27d6825759efd35ce99b5.lean/declarations/nonempty-sum--e06ae394efdf607b3a540c05.md) | 134 | `result-track:e06ae394efdf607b3a540c05bd326fb7c76d43c486bad92aa309e1f7758fa722` |
| 24 | `theorem` | [nonempty_prod](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant0c04572bcfa5a7aed89df55bdf81f8cfc822a2dc88a27d6825759efd35ce99b5.lean/declarations/nonempty-prod--e9f721907f2206c1414f4fd6.md) | 146 | `result-track:e9f721907f2206c1414f4fd6a690f5526ab99f115f26c7e3a0bbd5a8d1665f44` |
| 25 | `theorem` | [nonempty_ulift](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant0c04572bcfa5a7aed89df55bdf81f8cfc822a2dc88a27d6825759efd35ce99b5.lean/declarations/nonempty-ulift--43dc17787f22dc56ca681eb9.md) | 150 | `result-track:43dc17787f22dc56ca681eb99567b35772b3cc1835df92e9a0dec720c148ae52` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
