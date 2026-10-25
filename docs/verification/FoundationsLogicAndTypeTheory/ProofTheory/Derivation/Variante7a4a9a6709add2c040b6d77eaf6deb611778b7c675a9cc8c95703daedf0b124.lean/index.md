# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.Derivation.Variante7a4a9a6709add2c040b6d77eaf6deb611778b7c675a9cc8c95703daedf0b124

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad8bceb8591b6a399ea5a490859b5c366379c029",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variante7a4a9a6709add2c040b6d77eaf6deb611778b7c675a9cc8c95703daedf0b124.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variante7a4a9a6709add2c040b6d77eaf6deb611778b7c675a9cc8c95703daedf0b124.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variante7a4a9a6709add2c040b6d77eaf6deb611778b7c675a9cc8c95703daedf0b124.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad8bceb8591b6a399ea5a490859b5c366379c029`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variante7a4a9a6709add2c040b6d77eaf6deb611778b7c675a9cc8c95703daedf0b124.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variante7a4a9a6709add2c040b6d77eaf6deb611778b7c675a9cc8c95703daedf0b124.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.Derivative` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Derivation.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.AlgebraMap` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [derivative'](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variante7a4a9a6709add2c040b6d77eaf6deb611778b7c675a9cc8c95703daedf0b124.lean/declarations/derivative--3712b5585fe5ad72517db0e7.md) | 29 | `declaration-track:3712b5585fe5ad72517db0e78eb49d569afd2ad91e394480c492b561b0a60373` |
| 2 | `theorem` | [derivation_C](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variante7a4a9a6709add2c040b6d77eaf6deb611778b7c675a9cc8c95703daedf0b124.lean/declarations/derivation-c--c3a9275c4c92116c3eff0a16.md) | 39 | `result-track:c3a9275c4c92116c3eff0a16cd0743bd8442cd3f578862f99846c0134d08197b` |
| 3 | `theorem` | [C_smul_derivation_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variante7a4a9a6709add2c040b6d77eaf6deb611778b7c675a9cc8c95703daedf0b124.lean/declarations/c-smul-derivation-apply--9e0411312a728ab4459da141.md) | 43 | `result-track:9e0411312a728ab4459da14165b13f8870775ba8e37a6b22b419855c3e79b7e3` |
| 4 | `theorem` | [derivation_ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variante7a4a9a6709add2c040b6d77eaf6deb611778b7c675a9cc8c95703daedf0b124.lean/declarations/derivation-ext--eddd39e89ede04b12b7db7e2.md) | 49 | `result-track:eddd39e89ede04b12b7db7e2cd19a99a405b1b368fcab687f0ec3d08cc183882` |
| 5 | `def` | [mkDerivation](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variante7a4a9a6709add2c040b6d77eaf6deb611778b7c675a9cc8c95703daedf0b124.lean/declarations/mkderivation--e6e6ef840a2a7fb172156d79.md) | 58 | `declaration-track:e6e6ef840a2a7fb172156d792bb33e83f07743e38c89ffc150da46423e453917` |
| 6 | `lemma` | [mkDerivation_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variante7a4a9a6709add2c040b6d77eaf6deb611778b7c675a9cc8c95703daedf0b124.lean/declarations/mkderivation-apply--03712013ab39687cdf9ab58d.md) | 63 | `result-track:03712013ab39687cdf9ab58d6628f3c65d4e8dc07be0c80c9eff094adac2e7d5` |
| 7 | `theorem` | [mkDerivation_X](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variante7a4a9a6709add2c040b6d77eaf6deb611778b7c675a9cc8c95703daedf0b124.lean/declarations/mkderivation-x--dbee2b947fc1c3d6404852ab.md) | 68 | `result-track:dbee2b947fc1c3d6404852abb895965aeae5d36177a676f80d713c461db5fc5a` |
| 8 | `lemma` | [mkDerivation_one_eq_derivative'](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variante7a4a9a6709add2c040b6d77eaf6deb611778b7c675a9cc8c95703daedf0b124.lean/declarations/mkderivation-one-eq-derivative--51266b4f48f6705172b75db9.md) | 70 | `result-track:51266b4f48f6705172b75db9da071da6111967252bba80404db954154fe4da19` |
| 9 | `lemma` | [mkDerivation_one_eq_derivative](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variante7a4a9a6709add2c040b6d77eaf6deb611778b7c675a9cc8c95703daedf0b124.lean/declarations/mkderivation-one-eq-derivative--a6de6619b00ef9f0501fe99d.md) | 74 | `result-track:a6de6619b00ef9f0501fe99d1dc4cf48ef56c59489c5a51acd0ac5724df79125` |
| 10 | `def` | [mkDerivationEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variante7a4a9a6709add2c040b6d77eaf6deb611778b7c675a9cc8c95703daedf0b124.lean/declarations/mkderivationequiv--115721746ea18b47ee1ffeaa.md) | 79 | `declaration-track:115721746ea18b47ee1ffeaa328d72ebd07270b7056c12a282fdfdc1127c01ed` |
| 11 | `lemma` | [mkDerivationEquiv_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variante7a4a9a6709add2c040b6d77eaf6deb611778b7c675a9cc8c95703daedf0b124.lean/declarations/mkderivationequiv-apply--053deed176b6004046bae524.md) | 88 | `result-track:053deed176b6004046bae52465f56df69f4f99b8cbecc38044d880c975b14657` |
| 12 | `lemma` | [mkDerivationEquiv_symm_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variante7a4a9a6709add2c040b6d77eaf6deb611778b7c675a9cc8c95703daedf0b124.lean/declarations/mkderivationequiv-symm-apply--d3cf1d6b6a7bdf58b8b1a845.md) | 92 | `result-track:d3cf1d6b6a7bdf58b8b1a845df951513cdfeb13f14db574cd463d2d3ad7201a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
