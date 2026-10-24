# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.KernelCokernelComp.Variant718ce65b462121703efe67f9fb5c65389d39e3641c28eade3c0f23e6f3a12e4c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f9c4aebd7705bafd0969e9008759044a64f793a",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant718ce65b462121703efe67f9fb5c65389d39e3641c28eade3c0f23e6f3a12e4c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant718ce65b462121703efe67f9fb5c65389d39e3641c28eade3c0f23e6f3a12e4c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant718ce65b462121703efe67f9fb5c65389d39e3641c28eade3c0f23e6f3a12e4c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f9c4aebd7705bafd0969e9008759044a64f793a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant718ce65b462121703efe67f9fb5c65389d39e3641c28eade3c0f23e6f3a12e4c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant718ce65b462121703efe67f9fb5c65389d39e3641c28eade3c0f23e6f3a12e4c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ShortComplex.SnakeLemma` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant718ce65b462121703efe67f9fb5c65389d39e3641c28eade3c0f23e6f3a12e4c.lean/declarations/anonymous--80609637caf51e33e8db65cf.md) | 57 | `declaration-track:80609637caf51e33e8db65cf6e7ef34165e95981fd966ffa09f3da316acf9af0` |
| 2 | `lemma` | [ι_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant718ce65b462121703efe67f9fb5c65389d39e3641c28eade3c0f23e6f3a12e4c.lean/declarations/fst--99f85bff9c7eaae3dae8dd86.md) | 61 | `result-track:99f85bff9c7eaae3dae8dd86bc1af932d7244151959a1bc17159ad9cbc9b1f11` |
| 3 | `lemma` | [ι_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant718ce65b462121703efe67f9fb5c65389d39e3641c28eade3c0f23e6f3a12e4c.lean/declarations/snd--4d5f43ff870ccb0e99883c44.md) | 64 | `result-track:4d5f43ff870ccb0e99883c44b002a0fbae8081099eedf6e40cb8ab22a98674bd` |
| 4 | `def` | [φ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant718ce65b462121703efe67f9fb5c65389d39e3641c28eade3c0f23e6f3a12e4c.lean/declarations/anonymous--7d509ae390e62b244c87089b.md) | 73 | `declaration-track:7d509ae390e62b244c87089b8668e236b65a4113b2798bdc3958599ea9553b8b` |
| 5 | `lemma` | [inl_φ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant718ce65b462121703efe67f9fb5c65389d39e3641c28eade3c0f23e6f3a12e4c.lean/declarations/inl--536a84fa5ea28f598727dceb.md) | 77 | `result-track:536a84fa5ea28f598727dceb304f4e520b3fd3f40e2f998e90733916718e85cc` |
| 6 | `lemma` | [inr_φ_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant718ce65b462121703efe67f9fb5c65389d39e3641c28eade3c0f23e6f3a12e4c.lean/declarations/inr-fst--071ba28b0ed7529e5d4622ef.md) | 80 | `result-track:071ba28b0ed7529e5d4622ef0d3a35b29093319125e2626657342fe9dcfc0d01` |
| 7 | `lemma` | [φ_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant718ce65b462121703efe67f9fb5c65389d39e3641c28eade3c0f23e6f3a12e4c.lean/declarations/snd--eb529e91543a7702dd1f96f4.md) | 83 | `result-track:eb529e91543a7702dd1f96f44573b20c7ebabed66c6efbbc39b0b0be51dc8204` |
| 8 | `def` | [π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant718ce65b462121703efe67f9fb5c65389d39e3641c28eade3c0f23e6f3a12e4c.lean/declarations/anonymous--eed1b82e4bcf039a7c248e5d.md) | 90 | `declaration-track:eed1b82e4bcf039a7c248e5db5811e0a265f2e6afc8c7ebac0335cb7b02ec6b9` |
| 9 | `lemma` | [inl_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant718ce65b462121703efe67f9fb5c65389d39e3641c28eade3c0f23e6f3a12e4c.lean/declarations/inl--7bd7c6275ca7fa3c51c7baf6.md) | 94 | `result-track:7bd7c6275ca7fa3c51c7baf69f6eee7b17994279ae1e6910b61b354049ceb064` |
| 10 | `lemma` | [inr_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant718ce65b462121703efe67f9fb5c65389d39e3641c28eade3c0f23e6f3a12e4c.lean/declarations/inr--ad97a305747625eb1dd646d7.md) | 97 | `result-track:ad97a305747625eb1dd646d755f4994355cb9e3dff4e4a94c8d66a3b42f83533` |
| 11 | `lemma` | [ι_φ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant718ce65b462121703efe67f9fb5c65389d39e3641c28eade3c0f23e6f3a12e4c.lean/declarations/anonymous--22200a839447bb925b56bfd4.md) | 100 | `result-track:22200a839447bb925b56bfd465c4a4ed841ef740111dcb0daf9359aabc0c4f38` |
| 12 | `lemma` | [φ_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant718ce65b462121703efe67f9fb5c65389d39e3641c28eade3c0f23e6f3a12e4c.lean/declarations/anonymous--7dc046c5c099e0be5bd15fe9.md) | 105 | `result-track:7dc046c5c099e0be5bd15fe921c30b5813990fa01eb9b749de7c6988d930a193` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant718ce65b462121703efe67f9fb5c65389d39e3641c28eade3c0f23e6f3a12e4c.lean/declarations/instance--ea65eaa964d6ce6d47ad4edb.md) | 112 | `declaration-track:ea65eaa964d6ce6d47ad4edb826264d1f0faa3496d17ad4efdc8a960912db2e1` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant718ce65b462121703efe67f9fb5c65389d39e3641c28eade3c0f23e6f3a12e4c.lean/declarations/instance--b39fec3cc9a4a0c846ac6192.md) | 114 | `declaration-track:b39fec3cc9a4a0c846ac61926405195694a1e06eff66207904dc320052c1b98c` |
| 15 | `def` | [isLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant718ce65b462121703efe67f9fb5c65389d39e3641c28eade3c0f23e6f3a12e4c.lean/declarations/islimit--b817a07fb502c30f4390c5ea.md) | 119 | `declaration-track:b817a07fb502c30f4390c5eabc085d37e562963a247e7f676777a4d8958e9850` |
| 16 | `def` | [isColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant718ce65b462121703efe67f9fb5c65389d39e3641c28eade3c0f23e6f3a12e4c.lean/declarations/iscolimit--49c737ba68097f01e0e58f9c.md) | 133 | `declaration-track:49c737ba68097f01e0e58f9cec6657cee132517aa639f8d486d793facd41717e` |
| 17 | `def` | [snakeInput](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant718ce65b462121703efe67f9fb5c65389d39e3641c28eade3c0f23e6f3a12e4c.lean/declarations/snakeinput--7ce199a35fb77bf360bed72e.md) | 148 | `declaration-track:7ce199a35fb77bf360bed72eaf94aff88a7c460abd463eb9758635baba56b073` |
| 18 | `def` | [δ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant718ce65b462121703efe67f9fb5c65389d39e3641c28eade3c0f23e6f3a12e4c.lean/declarations/anonymous--9ff7702f4c52fea2a34f3768.md) | 190 | `declaration-track:9ff7702f4c52fea2a34f3768b0c08d0978a489d76c29aa70f91b85a3602d4771` |
| 19 | `lemma` | [δ_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant718ce65b462121703efe67f9fb5c65389d39e3641c28eade3c0f23e6f3a12e4c.lean/declarations/fac--660ed695873af2a56373c82e.md) | 192 | `result-track:660ed695873af2a56373c82ef41912371ef6389b13570e348708e308f7dfb36f` |
| 20 | `abbrev` | [kernelCokernelCompSequence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant718ce65b462121703efe67f9fb5c65389d39e3641c28eade3c0f23e6f3a12e4c.lean/declarations/kernelcokernelcompsequence--7813d3dddcc581e9bf7623b4.md) | 203 | `declaration-track:7813d3dddcc581e9bf7623b47d6573ebb9ea61a7a274aa07a27c916b779bb8a5` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant718ce65b462121703efe67f9fb5c65389d39e3641c28eade3c0f23e6f3a12e4c.lean/declarations/instance--91e1e2bc6eeee50aa490f08d.md) | 210 | `declaration-track:91e1e2bc6eeee50aa490f08df6afed0d30fa97fb08293b15f276c5e3774335d1` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant718ce65b462121703efe67f9fb5c65389d39e3641c28eade3c0f23e6f3a12e4c.lean/declarations/instance--0b688ee303a7311ca73079e4.md) | 213 | `declaration-track:0b688ee303a7311ca73079e4316fe1f8530cdb3766448dc1c2e7639bea510621` |
| 23 | `lemma` | [kernelCokernelCompSequence_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant718ce65b462121703efe67f9fb5c65389d39e3641c28eade3c0f23e6f3a12e4c.lean/declarations/kernelcokernelcompsequence-exact--abeece34a64de2796dd0e628.md) | 217 | `result-track:abeece34a64de2796dd0e628df59f517f8bacadbaf662faa9a1b81f559c4d7c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
