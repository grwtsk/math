# Verification target: GRWTSK.Algebra.Weakly.Variantd4525a67c3ae7fbbc4e1d8350f38b81933f187af2b81e44b4de768e3434fbfb1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec2607928279b60b2eacaf26b7ce5b7ca07739cd",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Weakly/Variantd4525a67c3ae7fbbc4e1d8350f38b81933f187af2b81e44b4de768e3434fbfb1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Weakly/Variantd4525a67c3ae7fbbc4e1d8350f38b81933f187af2b81e44b4de768e3434fbfb1.lean/index.md) · [Full source](../../../../mathematics/Algebra/Weakly/Variantd4525a67c3ae7fbbc4e1d8350f38b81933f187af2b81e44b4de768e3434fbfb1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec2607928279b60b2eacaf26b7ce5b7ca07739cd`.

Source path: `GRWTSK/Algebra/Weakly/Variantd4525a67c3ae7fbbc4e1d8350f38b81933f187af2b81e44b4de768e3434fbfb1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Weakly/Variantd4525a67c3ae7fbbc4e1d8350f38b81933f187af2b81e44b4de768e3434fbfb1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Algebra.WeaklyQuasiFiniteAt](../../../../mathematics/Algebra/Weakly/Variantd4525a67c3ae7fbbc4e1d8350f38b81933f187af2b81e44b4de768e3434fbfb1.lean/declarations/algebra-weaklyquasifiniteat--e1fbe1d7a5ba3cfce5e0c10e.md) | 50 | `declaration-track:e1fbe1d7a5ba3cfce5e0c10e0e8a769d9fb8ce224441bc98e39c614dd47115ec` |
| 2 | `lemma` | [Algebra.weaklyQuasiFiniteAt_iff](../../../../mathematics/Algebra/Weakly/Variantd4525a67c3ae7fbbc4e1d8350f38b81933f187af2b81e44b4de768e3434fbfb1.lean/declarations/algebra-weaklyquasifiniteat-iff--137bdda42a32818f28b46572.md) | 54 | `result-track:137bdda42a32818f28b46572f2a05aad31554b42d24b458f03655c609ffec7fa` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Weakly/Variantd4525a67c3ae7fbbc4e1d8350f38b81933f187af2b81e44b4de768e3434fbfb1.lean/declarations/instance--91d7e3ab41581a14874fa60b.md) | 78 | `declaration-track:91d7e3ab41581a14874fa60b2f5ebdcaece2cf4a2740f3aa901baf2cbafb42f9` |
| 4 | `lemma` | [of_algHom_localization](../../../../mathematics/Algebra/Weakly/Variantd4525a67c3ae7fbbc4e1d8350f38b81933f187af2b81e44b4de768e3434fbfb1.lean/declarations/of-alghom-localization--f468bd8cc99386a9ecf5e084.md) | 83 | `result-track:f468bd8cc99386a9ecf5e084d88f621170fa9fba6cbd54923d1a59f87e27391e` |
| 5 | `lemma` | [of_surjectiveOnStalks](../../../../mathematics/Algebra/Weakly/Variantd4525a67c3ae7fbbc4e1d8350f38b81933f187af2b81e44b4de768e3434fbfb1.lean/declarations/of-surjectiveonstalks--9173a036aae23c40454996d5.md) | 107 | `result-track:9173a036aae23c40454996d5421bacff5fce1b95e0202eeea46aa698cd4e0d41` |
| 6 | `instance` | [comap_algEquiv](../../../../mathematics/Algebra/Weakly/Variantd4525a67c3ae7fbbc4e1d8350f38b81933f187af2b81e44b4de768e3434fbfb1.lean/declarations/comap-algequiv--4df496e722f5abe56fda3876.md) | 115 | `declaration-track:4df496e722f5abe56fda38767128e830a2fd6083a64efe969822c60501a950b0` |
| 7 | `lemma` | [finite_residueField](../../../../mathematics/Algebra/Weakly/Variantd4525a67c3ae7fbbc4e1d8350f38b81933f187af2b81e44b4de768e3434fbfb1.lean/declarations/finite-residuefield--ae591da3163e904d0b354939.md) | 122 | `result-track:ae591da3163e904d0b354939f96fff054a7e3d91725d5b74154875847adcee2f` |
| 8 | `lemma` | [finite_locoalization](../../../../mathematics/Algebra/Weakly/Variantd4525a67c3ae7fbbc4e1d8350f38b81933f187af2b81e44b4de768e3434fbfb1.lean/declarations/finite-locoalization--cbfd951a7f122f7aed01492e.md) | 137 | `result-track:cbfd951a7f122f7aed01492ef532a371a17ee209e5360013455df67822c0fc34` |
| 9 | `lemma` | [eq_of_le_of_under_eq](../../../../mathematics/Algebra/Weakly/Variantd4525a67c3ae7fbbc4e1d8350f38b81933f187af2b81e44b4de768e3434fbfb1.lean/declarations/eq-of-le-of-under-eq--17b137aa785ae83062bc4b86.md) | 146 | `result-track:17b137aa785ae83062bc4b865549e23c5462981488a277039e1e9a7ab19dc665` |
| 10 | `lemma` | [baseChange](../../../../mathematics/Algebra/Weakly/Variantd4525a67c3ae7fbbc4e1d8350f38b81933f187af2b81e44b4de768e3434fbfb1.lean/declarations/basechange--0f33bfd87dcf8cb4d26753f2.md) | 168 | `result-track:0f33bfd87dcf8cb4d26753f236435e0172f6fbe6680ed93ad7e03d0b9abbf6a3` |
| 11 | `lemma` | [of_restrictScalars](../../../../mathematics/Algebra/Weakly/Variantd4525a67c3ae7fbbc4e1d8350f38b81933f187af2b81e44b4de768e3434fbfb1.lean/declarations/of-restrictscalars--2c192d8693ec76514868c81b.md) | 211 | `result-track:2c192d8693ec76514868c81baed0b88b2de90ee5a859b2b13daaa29556945575` |
| 12 | `lemma` | [of_quasiFiniteAt_residueField](../../../../mathematics/Algebra/Weakly/Variantd4525a67c3ae7fbbc4e1d8350f38b81933f187af2b81e44b4de768e3434fbfb1.lean/declarations/of-quasifiniteat-residuefield--869154e64fe8be8f80c6b6ae.md) | 230 | `result-track:869154e64fe8be8f80c6b6ae34bed1913f1010e836bb17ffcd60ec4ac4f675c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
