# Verification target: GRWTSK.Algebra.GroupTheory.QuotientGroup.Variantbbbc905f2f35d528af1e051058fcd8bdf809b8ad1ec8efea4221a3b532cdb089

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba820cb38e5d13c549666f5374f87bcddde3ea79",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/QuotientGroup/Variantbbbc905f2f35d528af1e051058fcd8bdf809b8ad1ec8efea4221a3b532cdb089.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/QuotientGroup/Variantbbbc905f2f35d528af1e051058fcd8bdf809b8ad1ec8efea4221a3b532cdb089.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/QuotientGroup/Variantbbbc905f2f35d528af1e051058fcd8bdf809b8ad1ec8efea4221a3b532cdb089.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba820cb38e5d13c549666f5374f87bcddde3ea79`.

Source path: `GRWTSK/Algebra/GroupTheory/QuotientGroup/Variantbbbc905f2f35d528af1e051058fcd8bdf809b8ad1ec8efea4221a3b532cdb089.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/QuotientGroup/Variantbbbc905f2f35d528af1e051058fcd8bdf809b8ad1ec8efea4221a3b532cdb089.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ZMod.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quotientZMultiplesNatEquivZMod](../../../../../mathematics/Algebra/GroupTheory/QuotientGroup/Variantbbbc905f2f35d528af1e051058fcd8bdf809b8ad1ec8efea4221a3b532cdb089.lean/declarations/quotientzmultiplesnatequivzmod--99e969590f47a585159fadbe.md) | 42 | `declaration-track:99e969590f47a585159fadbeda284a233696d3d75697a37dd32fd272e3835dc7` |
| 2 | `def` | [quotientZMultiplesEquivZMod](../../../../../mathematics/Algebra/GroupTheory/QuotientGroup/Variantbbbc905f2f35d528af1e051058fcd8bdf809b8ad1ec8efea4221a3b532cdb089.lean/declarations/quotientzmultiplesequivzmod--dca15bcb99db63bceb19e0d7.md) | 47 | `declaration-track:dca15bcb99db63bceb19e0d7267398c6f1b131b80643e8acf50daad7d0a1b7b4` |
| 3 | `lemma` | [index_zmultiples](../../../../../mathematics/Algebra/GroupTheory/QuotientGroup/Variantbbbc905f2f35d528af1e051058fcd8bdf809b8ad1ec8efea4221a3b532cdb089.lean/declarations/index-zmultiples--70ec1b7665749abe059cf9f2.md) | 51 | `result-track:70ec1b7665749abe059cf9f2584333b16314aed31f3055b224d40186a5bfb33b` |
| 4 | `def` | [zmultiplesQuotientStabilizerEquiv](../../../../../mathematics/Algebra/GroupTheory/QuotientGroup/Variantbbbc905f2f35d528af1e051058fcd8bdf809b8ad1ec8efea4221a3b532cdb089.lean/declarations/zmultiplesquotientstabilizerequiv--9bbbdbce5011345177d535af.md) | 64 | `declaration-track:9bbbdbce5011345177d535af80f5f824fb1da5feae064f29c5957015ffc4112b` |
| 5 | `theorem` | [zmultiplesQuotientStabilizerEquiv_symm_apply](../../../../../mathematics/Algebra/GroupTheory/QuotientGroup/Variantbbbc905f2f35d528af1e051058fcd8bdf809b8ad1ec8efea4221a3b532cdb089.lean/declarations/zmultiplesquotientstabilizerequiv-symm-apply--192da2d297976d9f350f5667.md) | 81 | `result-track:192da2d297976d9f350f566730e3d0c3654ea356c41ccfb6b55e2228f55ff674` |
| 6 | `def` | [zpowersQuotientStabilizerEquiv](../../../../../mathematics/Algebra/GroupTheory/QuotientGroup/Variantbbbc905f2f35d528af1e051058fcd8bdf809b8ad1ec8efea4221a3b532cdb089.lean/declarations/zpowersquotientstabilizerequiv--588412c5b84f18b80fafcef1.md) | 95 | `declaration-track:588412c5b84f18b80fafcef1b6098fac248997c178713e698f9dd52f1fb2a00c` |
| 7 | `theorem` | [zpowersQuotientStabilizerEquiv_symm_apply](../../../../../mathematics/Algebra/GroupTheory/QuotientGroup/Variantbbbc905f2f35d528af1e051058fcd8bdf809b8ad1ec8efea4221a3b532cdb089.lean/declarations/zpowersquotientstabilizerequiv-symm-apply--355b868800c6ef857fbc3ad0.md) | 100 | `result-track:355b868800c6ef857fbc3ad0454c48d6eb2e5be6e375d127d045ec6219650c7c` |
| 8 | `def` | [orbitZPowersEquiv](../../../../../mathematics/Algebra/GroupTheory/QuotientGroup/Variantbbbc905f2f35d528af1e051058fcd8bdf809b8ad1ec8efea4221a3b532cdb089.lean/declarations/orbitzpowersequiv--4a4efa77ff6cfbce94e96540.md) | 105 | `declaration-track:4a4efa77ff6cfbce94e965404b8857d9978ebed9596b4b2e9d1ab9a4bee91e0a` |
| 9 | `def` | [_root_.GRWTSK.Algebra.GroupTheory.QuotientZMultiplesNatEquivZMod.Variant5b53b1acbcabb9863ce900d248782fd1a4ac9035d65e357ef2bd17e1a9fc2b40.AddAction.orbitZMultiplesEquiv](../../../../../mathematics/Algebra/GroupTheory/QuotientGroup/Variantbbbc905f2f35d528af1e051058fcd8bdf809b8ad1ec8efea4221a3b532cdb089.lean/declarations/root-grwtsk-algebra-grouptheory-quotientzmultiplesnatequivzmod-variant5b--7d51a8522b08a8e38f5b2c29.md) | 109 | `declaration-track:7d51a8522b08a8e38f5b2c29089fb3686e5c0ef616fe530cf88c467825c86d2d` |
| 10 | `theorem` | [orbitZPowersEquiv_symm_apply](../../../../../mathematics/Algebra/GroupTheory/QuotientGroup/Variantbbbc905f2f35d528af1e051058fcd8bdf809b8ad1ec8efea4221a3b532cdb089.lean/declarations/orbitzpowersequiv-symm-apply--a78898e5756e11051842a60a.md) | 118 | `result-track:a78898e5756e11051842a60a2911798f291eee19ff62ba2097403b1110956c55` |
| 11 | `theorem` | [orbitZPowersEquiv_symm_apply'](../../../../../mathematics/Algebra/GroupTheory/QuotientGroup/Variantbbbc905f2f35d528af1e051058fcd8bdf809b8ad1ec8efea4221a3b532cdb089.lean/declarations/orbitzpowersequiv-symm-apply--5891f913f9fd59e3848e9daa.md) | 123 | `result-track:5891f913f9fd59e3848e9daaa79b546ba56559f2622de7a3b91a5d98a0f21259` |
| 12 | `theorem` | [_root_.GRWTSK.Algebra.GroupTheory.QuotientZMultiplesNatEquivZMod.Variant5b53b1acbcabb9863ce900d248782fd1a4ac9035d65e357ef2bd17e1a9fc2b40.AddAction.orbitZMultiplesEquiv_symm_apply'](../../../../../mathematics/Algebra/GroupTheory/QuotientGroup/Variantbbbc905f2f35d528af1e051058fcd8bdf809b8ad1ec8efea4221a3b532cdb089.lean/declarations/root-grwtsk-algebra-grouptheory-quotientzmultiplesnatequivzmod-variant5b--689aa3a38d515d09d3e0ada4.md) | 129 | `result-track:689aa3a38d515d09d3e0ada4e49a1f8f29d86966d4a9877a2280be96b08a0881` |
| 13 | `theorem` | [minimalPeriod_eq_card](../../../../../mathematics/Algebra/GroupTheory/QuotientGroup/Variantbbbc905f2f35d528af1e051058fcd8bdf809b8ad1ec8efea4221a3b532cdb089.lean/declarations/minimalperiod-eq-card--26d75faf7e2322a4be1d7ec7.md) | 141 | `result-track:26d75faf7e2322a4be1d7ec752dc4264a27811703333a06ffc57f8c60a319e06` |
| 14 | `instance` | [minimalPeriod_pos](../../../../../mathematics/Algebra/GroupTheory/QuotientGroup/Variantbbbc905f2f35d528af1e051058fcd8bdf809b8ad1ec8efea4221a3b532cdb089.lean/declarations/minimalperiod-pos--4538e9f6461c9d3ac7662de8.md) | 146 | `declaration-track:4538e9f6461c9d3ac7662de8a845e3da4ab2c2b4d611fcef2570ae4786de5b19` |
| 15 | `theorem` | [Nat.card_zpowers](../../../../../mathematics/Algebra/GroupTheory/QuotientGroup/Variantbbbc905f2f35d528af1e051058fcd8bdf809b8ad1ec8efea4221a3b532cdb089.lean/declarations/nat-card-zpowers--114e190c35629266a5a08656.md) | 164 | `result-track:114e190c35629266a5a0865699ced4c0a45a7cd7fcf0237b0e4a230d21d2bed1` |
| 16 | `lemma` | [finite_zpowers](../../../../../mathematics/Algebra/GroupTheory/QuotientGroup/Variantbbbc905f2f35d528af1e051058fcd8bdf809b8ad1ec8efea4221a3b532cdb089.lean/declarations/finite-zpowers--f223644e44e1aa2be4db767b.md) | 171 | `result-track:f223644e44e1aa2be4db767b904b4613b37ba5ab0d02102c6c5b3c84327796d1` |
| 17 | `lemma` | [infinite_zpowers](../../../../../mathematics/Algebra/GroupTheory/QuotientGroup/Variantbbbc905f2f35d528af1e051058fcd8bdf809b8ad1ec8efea4221a3b532cdb089.lean/declarations/infinite-zpowers--a4fcddabee25434b3cba7a43.md) | 176 | `result-track:a4fcddabee25434b3cba7a4367d65b2b735c5775c41eee75111a5623f4284b90` |
| 18 | `def` | [quotientEquivSigmaZMod](../../../../../mathematics/Algebra/GroupTheory/QuotientGroup/Variantbbbc905f2f35d528af1e051058fcd8bdf809b8ad1ec8efea4221a3b532cdb089.lean/declarations/quotientequivsigmazmod--e7d0d3e94ee99728879f474a.md) | 189 | `declaration-track:e7d0d3e94ee99728879f474a4c40e3af529316b781f52e507ddf7b66336dde0c` |
| 19 | `lemma` | [quotientEquivSigmaZMod_symm_apply](../../../../../mathematics/Algebra/GroupTheory/QuotientGroup/Variantbbbc905f2f35d528af1e051058fcd8bdf809b8ad1ec8efea4221a3b532cdb089.lean/declarations/quotientequivsigmazmod-symm-apply--85a0b55f239568a072e81c91.md) | 194 | `result-track:85a0b55f239568a072e81c912f3d6118ac3cdb31a0bf239dc4c3d8bdd113d25b` |
| 20 | `lemma` | [quotientEquivSigmaZMod_apply](../../../../../mathematics/Algebra/GroupTheory/QuotientGroup/Variantbbbc905f2f35d528af1e051058fcd8bdf809b8ad1ec8efea4221a3b532cdb089.lean/declarations/quotientequivsigmazmod-apply--e9315b8bfa79c13c167ed62a.md) | 198 | `result-track:e9315b8bfa79c13c167ed62a2df8103a4df898224e64c36b2ba2f4ea80fd0c3b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
