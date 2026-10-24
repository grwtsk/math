# Verification target: GRWTSK.Algebra.GroupTheory.QuotientGroup.Variant5b53b1acbcabb9863ce900d248782fd1a4ac9035d65e357ef2bd17e1a9fc2b40

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c92f7d7f91480e66f932305f77733c8bd135c3e5",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/QuotientGroup/Variant5b53b1acbcabb9863ce900d248782fd1a4ac9035d65e357ef2bd17e1a9fc2b40.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/QuotientGroup/Variant5b53b1acbcabb9863ce900d248782fd1a4ac9035d65e357ef2bd17e1a9fc2b40.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/QuotientGroup/Variant5b53b1acbcabb9863ce900d248782fd1a4ac9035d65e357ef2bd17e1a9fc2b40.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c92f7d7f91480e66f932305f77733c8bd135c3e5`.

Source path: `GRWTSK/Algebra/GroupTheory/QuotientGroup/Variant5b53b1acbcabb9863ce900d248782fd1a4ac9035d65e357ef2bd17e1a9fc2b40.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/QuotientGroup/Variant5b53b1acbcabb9863ce900d248782fd1a4ac9035d65e357ef2bd17e1a9fc2b40.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ZMod.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quotientZMultiplesNatEquivZMod](../../../../../mathematics/Algebra/GroupTheory/QuotientGroup/Variant5b53b1acbcabb9863ce900d248782fd1a4ac9035d65e357ef2bd17e1a9fc2b40.lean/declarations/quotientzmultiplesnatequivzmod--509d1d2dc350266e3a44c6d5.md) | 34 | `declaration-track:509d1d2dc350266e3a44c6d58b7cd37f715504870d993b2e9593718d3fc23a39` |
| 2 | `def` | [quotientZMultiplesEquivZMod](../../../../../mathematics/Algebra/GroupTheory/QuotientGroup/Variant5b53b1acbcabb9863ce900d248782fd1a4ac9035d65e357ef2bd17e1a9fc2b40.lean/declarations/quotientzmultiplesequivzmod--05364f8d9c6fb5cf57e7095e.md) | 39 | `declaration-track:05364f8d9c6fb5cf57e7095ee6574955d88b0bb95933ccbfd7a50f2959fe3089` |
| 3 | `lemma` | [index_zmultiples](../../../../../mathematics/Algebra/GroupTheory/QuotientGroup/Variant5b53b1acbcabb9863ce900d248782fd1a4ac9035d65e357ef2bd17e1a9fc2b40.lean/declarations/index-zmultiples--d1747e39343481bd369f5d31.md) | 43 | `result-track:d1747e39343481bd369f5d3161da93239c88becef0319fb483a3a2fe02a38dc5` |
| 4 | `def` | [zmultiplesQuotientStabilizerEquiv](../../../../../mathematics/Algebra/GroupTheory/QuotientGroup/Variant5b53b1acbcabb9863ce900d248782fd1a4ac9035d65e357ef2bd17e1a9fc2b40.lean/declarations/zmultiplesquotientstabilizerequiv--3a816374b5ed580cd1e6bdb9.md) | 56 | `declaration-track:3a816374b5ed580cd1e6bdb9edcaa21b3459edc6943341a47ed42b8e26132951` |
| 5 | `theorem` | [zmultiplesQuotientStabilizerEquiv_symm_apply](../../../../../mathematics/Algebra/GroupTheory/QuotientGroup/Variant5b53b1acbcabb9863ce900d248782fd1a4ac9035d65e357ef2bd17e1a9fc2b40.lean/declarations/zmultiplesquotientstabilizerequiv-symm-apply--ca9dc69c9bfc6a983597f4a5.md) | 73 | `result-track:ca9dc69c9bfc6a983597f4a5c6bf1a2024c6f9783d6d5a50546148df1c78db2b` |
| 6 | `def` | [zpowersQuotientStabilizerEquiv](../../../../../mathematics/Algebra/GroupTheory/QuotientGroup/Variant5b53b1acbcabb9863ce900d248782fd1a4ac9035d65e357ef2bd17e1a9fc2b40.lean/declarations/zpowersquotientstabilizerequiv--906b6e6d254674c1b180eefd.md) | 87 | `declaration-track:906b6e6d254674c1b180eefd68236c3d0245a1b595d67149e9930485df505130` |
| 7 | `theorem` | [zpowersQuotientStabilizerEquiv_symm_apply](../../../../../mathematics/Algebra/GroupTheory/QuotientGroup/Variant5b53b1acbcabb9863ce900d248782fd1a4ac9035d65e357ef2bd17e1a9fc2b40.lean/declarations/zpowersquotientstabilizerequiv-symm-apply--94b5fd11259e656fd8dbd2ec.md) | 92 | `result-track:94b5fd11259e656fd8dbd2ec3184e0827e4f3009b750fa2d722d4f23e9cd8f73` |
| 8 | `def` | [orbitZPowersEquiv](../../../../../mathematics/Algebra/GroupTheory/QuotientGroup/Variant5b53b1acbcabb9863ce900d248782fd1a4ac9035d65e357ef2bd17e1a9fc2b40.lean/declarations/orbitzpowersequiv--e5de594376c9b8c2b7ff6a97.md) | 97 | `declaration-track:e5de594376c9b8c2b7ff6a97b5e5536c1b6ccf367cb03877e1f20e1e1aa655a7` |
| 9 | `def` | [_root_.AddAction.orbitZMultiplesEquiv](../../../../../mathematics/Algebra/GroupTheory/QuotientGroup/Variant5b53b1acbcabb9863ce900d248782fd1a4ac9035d65e357ef2bd17e1a9fc2b40.lean/declarations/root-addaction-orbitzmultiplesequiv--cfaa7200f7eabcabe743e35a.md) | 101 | `declaration-track:cfaa7200f7eabcabe743e35ac9307ae22c33d6a94e54e91fe5345f9fccbe9341` |
| 10 | `theorem` | [orbitZPowersEquiv_symm_apply](../../../../../mathematics/Algebra/GroupTheory/QuotientGroup/Variant5b53b1acbcabb9863ce900d248782fd1a4ac9035d65e357ef2bd17e1a9fc2b40.lean/declarations/orbitzpowersequiv-symm-apply--9c84d15661d604966c574645.md) | 110 | `result-track:9c84d15661d604966c574645a9cef07333e3effdcffd9e0f2910ed11fc71d819` |
| 11 | `theorem` | [orbitZPowersEquiv_symm_apply'](../../../../../mathematics/Algebra/GroupTheory/QuotientGroup/Variant5b53b1acbcabb9863ce900d248782fd1a4ac9035d65e357ef2bd17e1a9fc2b40.lean/declarations/orbitzpowersequiv-symm-apply--e173088ff7d8b51b036dfa90.md) | 115 | `result-track:e173088ff7d8b51b036dfa905c8d5cfa30f8d84299e94634e7cc29ff9777eaca` |
| 12 | `theorem` | [_root_.AddAction.orbitZMultiplesEquiv_symm_apply'](../../../../../mathematics/Algebra/GroupTheory/QuotientGroup/Variant5b53b1acbcabb9863ce900d248782fd1a4ac9035d65e357ef2bd17e1a9fc2b40.lean/declarations/root-addaction-orbitzmultiplesequiv-symm-apply--40166829ccf096e8f31255a1.md) | 121 | `result-track:40166829ccf096e8f31255a16064fcc3ff3b393278536efaeaa8081b6914a4f2` |
| 13 | `theorem` | [minimalPeriod_eq_card](../../../../../mathematics/Algebra/GroupTheory/QuotientGroup/Variant5b53b1acbcabb9863ce900d248782fd1a4ac9035d65e357ef2bd17e1a9fc2b40.lean/declarations/minimalperiod-eq-card--b96418cb022c6ed8adc02fe7.md) | 133 | `result-track:b96418cb022c6ed8adc02fe7af91aad86abe4d06c2e84a1ad8da3e87cacb69ca` |
| 14 | `instance` | [minimalPeriod_pos](../../../../../mathematics/Algebra/GroupTheory/QuotientGroup/Variant5b53b1acbcabb9863ce900d248782fd1a4ac9035d65e357ef2bd17e1a9fc2b40.lean/declarations/minimalperiod-pos--2ceecfe238bce8e53a2e28d9.md) | 138 | `declaration-track:2ceecfe238bce8e53a2e28d99296862bc6fdd3ad43aca6101f6fc5a054f6a681` |
| 15 | `theorem` | [Nat.card_zpowers](../../../../../mathematics/Algebra/GroupTheory/QuotientGroup/Variant5b53b1acbcabb9863ce900d248782fd1a4ac9035d65e357ef2bd17e1a9fc2b40.lean/declarations/nat-card-zpowers--964200a8ea4b5b5adf5bd4be.md) | 156 | `result-track:964200a8ea4b5b5adf5bd4be214673a2e7eab99282b1be3ac040d222ad603bbe` |
| 16 | `lemma` | [finite_zpowers](../../../../../mathematics/Algebra/GroupTheory/QuotientGroup/Variant5b53b1acbcabb9863ce900d248782fd1a4ac9035d65e357ef2bd17e1a9fc2b40.lean/declarations/finite-zpowers--d0d816297a4f9856cedb469d.md) | 163 | `result-track:d0d816297a4f9856cedb469d3dd5e7c1180921e5f030be3774d0f3627b87f44a` |
| 17 | `lemma` | [infinite_zpowers](../../../../../mathematics/Algebra/GroupTheory/QuotientGroup/Variant5b53b1acbcabb9863ce900d248782fd1a4ac9035d65e357ef2bd17e1a9fc2b40.lean/declarations/infinite-zpowers--eee4de41a59cf07536229b1a.md) | 168 | `result-track:eee4de41a59cf07536229b1ae361a0f89d88c9a10bd48cdfe73bac6b8450417e` |
| 18 | `def` | [quotientEquivSigmaZMod](../../../../../mathematics/Algebra/GroupTheory/QuotientGroup/Variant5b53b1acbcabb9863ce900d248782fd1a4ac9035d65e357ef2bd17e1a9fc2b40.lean/declarations/quotientequivsigmazmod--fc82d7fae11bc3ce0e1fa947.md) | 181 | `declaration-track:fc82d7fae11bc3ce0e1fa947188d48f5ac1c995d722eff74f4315675938daf95` |
| 19 | `lemma` | [quotientEquivSigmaZMod_symm_apply](../../../../../mathematics/Algebra/GroupTheory/QuotientGroup/Variant5b53b1acbcabb9863ce900d248782fd1a4ac9035d65e357ef2bd17e1a9fc2b40.lean/declarations/quotientequivsigmazmod-symm-apply--02f87385152da8263445438e.md) | 186 | `result-track:02f87385152da8263445438ecc1cce169037a2b407602dd99bb4be90d4503661` |
| 20 | `lemma` | [quotientEquivSigmaZMod_apply](../../../../../mathematics/Algebra/GroupTheory/QuotientGroup/Variant5b53b1acbcabb9863ce900d248782fd1a4ac9035d65e357ef2bd17e1a9fc2b40.lean/declarations/quotientequivsigmazmod-apply--d5a3998ad02e6577e572edee.md) | 190 | `result-track:d5a3998ad02e6577e572edee47909bda5b7d6f3721cde5c165eaa9b2d4c6e9fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
