# Verification target: GRWTSK.Algebra.UniversalAlgebra.Indicator.Variant9dd734947bbc2aad4aa2257de1a97faf07e648a87e2c7b807426baf24ecafb36

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b63daa90dccce5e4f923d3583173ba4be5d84fb1",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Indicator/Variant9dd734947bbc2aad4aa2257de1a97faf07e648a87e2c7b807426baf24ecafb36.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant9dd734947bbc2aad4aa2257de1a97faf07e648a87e2c7b807426baf24ecafb36.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant9dd734947bbc2aad4aa2257de1a97faf07e648a87e2c7b807426baf24ecafb36.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b63daa90dccce5e4f923d3583173ba4be5d84fb1`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Indicator/Variant9dd734947bbc2aad4aa2257de1a97faf07e648a87e2c7b807426baf24ecafb36.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Indicator/Variant9dd734947bbc2aad4aa2257de1a97faf07e648a87e2c7b807426baf24ecafb36.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Indicator` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ConditionallyCompleteLattice.Indexed` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Synonym` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Unbundled.Abs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Canonical.Defs` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [mulSupport_sup](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant9dd734947bbc2aad4aa2257de1a97faf07e648a87e2c7b807426baf24ecafb36.lean/declarations/mulsupport-sup--0049b048823024be2ecddb8b.md) | 36 | `result-track:0049b048823024be2ecddb8b924614552de3f1266a72fd0a348a8bfc96b3c934` |
| 2 | `lemma` | [mulSupport_inf](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant9dd734947bbc2aad4aa2257de1a97faf07e648a87e2c7b807426baf24ecafb36.lean/declarations/mulsupport-inf--19706871a16af38630e38371.md) | 41 | `result-track:19706871a16af38630e38371051f7c177fa5cc5740096f33c1edf0535888271a` |
| 3 | `lemma` | [mulSupport_max](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant9dd734947bbc2aad4aa2257de1a97faf07e648a87e2c7b807426baf24ecafb36.lean/declarations/mulsupport-max--5b79f1a52f3206c933c12c22.md) | 46 | `result-track:5b79f1a52f3206c933c12c22d1f10cf9df72b2659c14aa1212b47c15ff3809b5` |
| 4 | `lemma` | [mulSupport_min](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant9dd734947bbc2aad4aa2257de1a97faf07e648a87e2c7b807426baf24ecafb36.lean/declarations/mulsupport-min--c105cd35a5300504a734c6bb.md) | 50 | `result-track:c105cd35a5300504a734c6bbe1acdea2674c6b4bbfc120d6ff1dc8ce89427b87` |
| 5 | `lemma` | [mulSupport_iSup](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant9dd734947bbc2aad4aa2257de1a97faf07e648a87e2c7b807426baf24ecafb36.lean/declarations/mulsupport-isup--7fb699869d3aad5d44bc0d4f.md) | 54 | `result-track:7fb699869d3aad5d44bc0d4fbcf683c575aecddf8c9260e139304426eb8dba7e` |
| 6 | `lemma` | [mulSupport_iInf](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant9dd734947bbc2aad4aa2257de1a97faf07e648a87e2c7b807426baf24ecafb36.lean/declarations/mulsupport-iinf--7fa79911a46e0b7341615263.md) | 61 | `result-track:7fa79911a46e0b7341615263736b78b688a21a0afa96f88deba01e9a46d6196e` |
| 7 | `lemma` | [mulIndicator_apply_le'](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant9dd734947bbc2aad4aa2257de1a97faf07e648a87e2c7b807426baf24ecafb36.lean/declarations/mulindicator-apply-le--49fae901aff8c9dc8abfdd1a.md) | 72 | `result-track:49fae901aff8c9dc8abfdd1a59266658917b751472d3f228e2b338b3dec03a7b` |
| 8 | `lemma` | [mulIndicator_le'](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant9dd734947bbc2aad4aa2257de1a97faf07e648a87e2c7b807426baf24ecafb36.lean/declarations/mulindicator-le--efd997b75a0a7c3496ecc799.md) | 79 | `result-track:efd997b75a0a7c3496ecc799cab57d1ff6025b62a4317e21d02731ec5e5f6d49` |
| 9 | `lemma` | [le_mulIndicator_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant9dd734947bbc2aad4aa2257de1a97faf07e648a87e2c7b807426baf24ecafb36.lean/declarations/le-mulindicator-apply--14efde57eca86357604feaf3.md) | 83 | `result-track:14efde57eca86357604feaf3af708eb7eb48af596213666e5cbf5f668b2de7be` |
| 10 | `lemma` | [le_mulIndicator](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant9dd734947bbc2aad4aa2257de1a97faf07e648a87e2c7b807426baf24ecafb36.lean/declarations/le-mulindicator--df2517578933db0f9ae66ad0.md) | 87 | `result-track:df2517578933db0f9ae66ad0be1d49a2a6e2f271310da9e4d6e11cb4a60fce07` |
| 11 | `lemma` | [one_le_mulIndicator_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant9dd734947bbc2aad4aa2257de1a97faf07e648a87e2c7b807426baf24ecafb36.lean/declarations/one-le-mulindicator-apply--a8b27798f33f9551257ba533.md) | 96 | `result-track:a8b27798f33f9551257ba533a8f26b5e1bd03f61561013b929febf1b18818a48` |
| 12 | `lemma` | [one_le_mulIndicator](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant9dd734947bbc2aad4aa2257de1a97faf07e648a87e2c7b807426baf24ecafb36.lean/declarations/one-le-mulindicator--82cb6d26d04f949f9b68367a.md) | 100 | `result-track:82cb6d26d04f949f9b68367a006a3cb29bdd592397af72e8ae5eba0ed1f155d5` |
| 13 | `lemma` | [mulIndicator_apply_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant9dd734947bbc2aad4aa2257de1a97faf07e648a87e2c7b807426baf24ecafb36.lean/declarations/mulindicator-apply-le-one--66a63d8ed1bfebebd3265996.md) | 104 | `result-track:66a63d8ed1bfebebd3265996d5282c7dbc21239e94ed9ca1e31a61d61c3a1268` |
| 14 | `lemma` | [mulIndicator_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant9dd734947bbc2aad4aa2257de1a97faf07e648a87e2c7b807426baf24ecafb36.lean/declarations/mulindicator-le-one--741592dc5b12b3e0b542a1f6.md) | 108 | `result-track:741592dc5b12b3e0b542a1f63473328dc08201c5261ae437639887c370028a4a` |
| 15 | `lemma` | [mulIndicator_le_mulIndicator'](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant9dd734947bbc2aad4aa2257de1a97faf07e648a87e2c7b807426baf24ecafb36.lean/declarations/mulindicator-le-mulindicator--80dd35c024aa8224d580285d.md) | 112 | `result-track:80dd35c024aa8224d580285d1673062dfca679154760ad36592e0b505d199564` |
| 16 | `lemma` | [mulIndicator_le_mulIndicator](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant9dd734947bbc2aad4aa2257de1a97faf07e648a87e2c7b807426baf24ecafb36.lean/declarations/mulindicator-le-mulindicator--7d277d745b4180b20451a9cd.md) | 117 | `result-track:7d277d745b4180b20451a9cdbc17bc8d49268ab157279799a2ef52af35b5daa9` |
| 17 | `lemma` | [mulIndicator_mono](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant9dd734947bbc2aad4aa2257de1a97faf07e648a87e2c7b807426baf24ecafb36.lean/declarations/mulindicator-mono--77771f42310a84b4af21e865.md) | 121 | `result-track:77771f42310a84b4af21e865ccd49c773f47df2e7fc6eeb626266cd4d0c9e5d4` |
| 18 | `lemma` | [mulIndicator_le_mulIndicator_apply_of_subset](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant9dd734947bbc2aad4aa2257de1a97faf07e648a87e2c7b807426baf24ecafb36.lean/declarations/mulindicator-le-mulindicator-apply-of-subset--f7a496bd35a063c623fde61a.md) | 125 | `result-track:f7a496bd35a063c623fde61ae67ef86d12405c278e49cc1d5faa170edc6554bc` |
| 19 | `lemma` | [mulIndicator_le_mulIndicator_of_subset](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant9dd734947bbc2aad4aa2257de1a97faf07e648a87e2c7b807426baf24ecafb36.lean/declarations/mulindicator-le-mulindicator-of-subset--236b8cdb0842b69455e1fd23.md) | 132 | `result-track:236b8cdb0842b69455e1fd23749c7b643232e78ac1ede765db529f4f0f9d87cc` |
| 20 | `lemma` | [mulIndicator_le_self'](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant9dd734947bbc2aad4aa2257de1a97faf07e648a87e2c7b807426baf24ecafb36.lean/declarations/mulindicator-le-self--c82af93b0a33287f76648f23.md) | 137 | `result-track:c82af93b0a33287f76648f23c68b39a03b6dc7f54f5698b529a34e0bb79d22bc` |
| 21 | `lemma` | [indicator_le_indicator_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant9dd734947bbc2aad4aa2257de1a97faf07e648a87e2c7b807426baf24ecafb36.lean/declarations/indicator-le-indicator-nonneg--ad134d0c2913ee9ff2d51543.md) | 145 | `result-track:ad134d0c2913ee9ff2d51543c23cfe7467842cb0762f102dbf33bccededa79db` |
| 22 | `lemma` | [indicator_nonpos_le_indicator](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant9dd734947bbc2aad4aa2257de1a97faf07e648a87e2c7b807426baf24ecafb36.lean/declarations/indicator-nonpos-le-indicator--022c004a2a9e51ec720e5131.md) | 153 | `result-track:022c004a2a9e51ec720e51310727a85a7805a8795a6e5ced4508486d047d181b` |
| 23 | `lemma` | [mulIndicator_iUnion_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant9dd734947bbc2aad4aa2257de1a97faf07e648a87e2c7b807426baf24ecafb36.lean/declarations/mulindicator-iunion-apply--28482a2d6946f5b512f81467.md) | 163 | `result-track:28482a2d6946f5b512f81467852f95285b58e363598060d38c85df55b8271f5a` |
| 24 | `lemma` | [mulIndicator_iInter_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant9dd734947bbc2aad4aa2257de1a97faf07e648a87e2c7b807426baf24ecafb36.lean/declarations/mulindicator-iinter-apply--2d809d0c86a42dbe8fd40e94.md) | 178 | `result-track:2d809d0c86a42dbe8fd40e942d24d69e668dc5f5bc0b396e3862c26f4d1e92b2` |
| 25 | `lemma` | [iSup_mulIndicator](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant9dd734947bbc2aad4aa2257de1a97faf07e648a87e2c7b807426baf24ecafb36.lean/declarations/isup-mulindicator--df9b03422110d5997f48d3c3.md) | 192 | `result-track:df9b03422110d5997f48d3c3f6eb2a5fd20c5487b409f69694470711b45a6ca6` |
| 26 | `lemma` | [mulIndicator_le_self](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant9dd734947bbc2aad4aa2257de1a97faf07e648a87e2c7b807426baf24ecafb36.lean/declarations/mulindicator-le-self--1c9c05acad3e8aba5b580529.md) | 215 | `result-track:1c9c05acad3e8aba5b580529457126c85381d297309b482d715cbd64b57c7606` |
| 27 | `lemma` | [mulIndicator_apply_le](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant9dd734947bbc2aad4aa2257de1a97faf07e648a87e2c7b807426baf24ecafb36.lean/declarations/mulindicator-apply-le--54261e094eaefb7c5a9ac3b6.md) | 219 | `result-track:54261e094eaefb7c5a9ac3b68589af0b4f432e250ada3075fcb0c9e1e737c433` |
| 28 | `lemma` | [mulIndicator_le](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant9dd734947bbc2aad4aa2257de1a97faf07e648a87e2c7b807426baf24ecafb36.lean/declarations/mulindicator-le--d9cecfc8b310abc15a5b84d9.md) | 224 | `result-track:d9cecfc8b310abc15a5b84d9d6263b5e6f81f4e8218d00db4d57e3b2e912f8fc` |
| 29 | `lemma` | [mabs_mulIndicator_symmDiff](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant9dd734947bbc2aad4aa2257de1a97faf07e648a87e2c7b807426baf24ecafb36.lean/declarations/mabs-mulindicator-symmdiff--82de34fcab03114066f4344f.md) | 236 | `result-track:82de34fcab03114066f4344f644884e61b4916d0e93b939cda76fab0d1d16f3e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
