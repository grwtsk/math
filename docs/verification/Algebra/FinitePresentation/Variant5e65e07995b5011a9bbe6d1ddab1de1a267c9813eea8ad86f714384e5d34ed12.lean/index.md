# Verification target: GRWTSK.Algebra.FinitePresentation.Variant5e65e07995b5011a9bbe6d1ddab1de1a267c9813eea8ad86f714384e5d34ed12

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fe07b8e6a703c07f11da53a4e47663c372bc129b",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FinitePresentation/Variant5e65e07995b5011a9bbe6d1ddab1de1a267c9813eea8ad86f714384e5d34ed12.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/FinitePresentation/Variant5e65e07995b5011a9bbe6d1ddab1de1a267c9813eea8ad86f714384e5d34ed12.lean/index.md) · [Full source](../../../../mathematics/Algebra/FinitePresentation/Variant5e65e07995b5011a9bbe6d1ddab1de1a267c9813eea8ad86f714384e5d34ed12.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fe07b8e6a703c07f11da53a4e47663c372bc129b`.

Source path: `GRWTSK/Algebra/FinitePresentation/Variant5e65e07995b5011a9bbe6d1ddab1de1a267c9813eea8ad86f714384e5d34ed12.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FinitePresentation/Variant5e65e07995b5011a9bbe6d1ddab1de1a267c9813eea8ad86f714384e5d34ed12.lean.json)

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
| 1 | `class` | [Algebra.FinitePresentation](../../../../mathematics/Algebra/FinitePresentation/Variant5e65e07995b5011a9bbe6d1ddab1de1a267c9813eea8ad86f714384e5d34ed12.lean/declarations/algebra-finitepresentation--0e032174fa3b12cb80dc7abd.md) | 52 | `declaration-track:0e032174fa3b12cb80dc7abd3ba3c7e651a85c9d1906e41437942f94abf95ac8` |
| 2 | `instance` | [of_finitePresentation](../../../../mathematics/Algebra/FinitePresentation/Variant5e65e07995b5011a9bbe6d1ddab1de1a267c9813eea8ad86f714384e5d34ed12.lean/declarations/of-finitepresentation--a674fc732faefc6ab7d672d4.md) | 64 | `declaration-track:a674fc732faefc6ab7d672d4cd9082ff0fe4f9543f212c2c98cf300707370687` |
| 3 | `theorem` | [of_finiteType](../../../../mathematics/Algebra/FinitePresentation/Variant5e65e07995b5011a9bbe6d1ddab1de1a267c9813eea8ad86f714384e5d34ed12.lean/declarations/of-finitetype--b702cd5a2ebd994c94d8cc3a.md) | 77 | `result-track:b702cd5a2ebd994c94d8cc3a95b3af5725ef546cc0767099b977e805851968eb` |
| 4 | `theorem` | [equiv](../../../../mathematics/Algebra/FinitePresentation/Variant5e65e07995b5011a9bbe6d1ddab1de1a267c9813eea8ad86f714384e5d34ed12.lean/declarations/equiv--6b63087bad23655b95a3573f.md) | 85 | `result-track:6b63087bad23655b95a3573f7abd6c718a42b72cb594ccc186cf9e7519c2642e` |
| 5 | `lemma` | [mvPolynomial_aux](../../../../mathematics/Algebra/FinitePresentation/Variant5e65e07995b5011a9bbe6d1ddab1de1a267c9813eea8ad86f714384e5d34ed12.lean/declarations/mvpolynomial-aux--1f82db0fdfab1547a1f79605.md) | 106 | `result-track:1f82db0fdfab1547a1f796055bf8451566fce70c5e2d2a4f8d76b61c702e561a` |
| 6 | `theorem` | [quotient](../../../../mathematics/Algebra/FinitePresentation/Variant5e65e07995b5011a9bbe6d1ddab1de1a267c9813eea8ad86f714384e5d34ed12.lean/declarations/quotient--67392320d0693d043cc80e1e.md) | 119 | `result-track:67392320d0693d043cc80e1e87e72f3739fad8c4d24d87cffb11566a0c92d923` |
| 7 | `theorem` | [of_surjective](../../../../mathematics/Algebra/FinitePresentation/Variant5e65e07995b5011a9bbe6d1ddab1de1a267c9813eea8ad86f714384e5d34ed12.lean/declarations/of-surjective--c5d32536ec344f5b973a7bda.md) | 130 | `result-track:c5d32536ec344f5b973a7bdadd8b86d819b1e0da856c54646135e6790ce003cf` |
| 8 | `theorem` | [iff](../../../../mathematics/Algebra/FinitePresentation/Variant5e65e07995b5011a9bbe6d1ddab1de1a267c9813eea8ad86f714384e5d34ed12.lean/declarations/iff--4ad9648370352cab223f0abe.md) | 136 | `result-track:4ad9648370352cab223f0abe695bfaf68d742c6690cf06b633889bfda8b560c6` |
| 9 | `theorem` | [iff_quotient_mvPolynomial'](../../../../mathematics/Algebra/FinitePresentation/Variant5e65e07995b5011a9bbe6d1ddab1de1a267c9813eea8ad86f714384e5d34ed12.lean/declarations/iff-quotient-mvpolynomial--b832f505abd9b1abd48d91f7.md) | 148 | `result-track:b832f505abd9b1abd48d91f7b2d73f9bc202dcf479cb9a9fd47f687720ecac10` |
| 10 | `theorem` | [mvPolynomial_of_finitePresentation](../../../../mathematics/Algebra/FinitePresentation/Variant5e65e07995b5011a9bbe6d1ddab1de1a267c9813eea8ad86f714384e5d34ed12.lean/declarations/mvpolynomial-of-finitepresentation--30b240e81e07639ca23b2f93.md) | 168 | `result-track:30b240e81e07639ca23b2f9357bb61313db57557d8e0f7610ea3b5b94e97a181` |
| 11 | `theorem` | [trans](../../../../mathematics/Algebra/FinitePresentation/Variant5e65e07995b5011a9bbe6d1ddab1de1a267c9813eea8ad86f714384e5d34ed12.lean/declarations/trans--c2e46040a7a11c0b1935ce06.md) | 189 | `result-track:c2e46040a7a11c0b1935ce06f47763e84a33b2be85d93653a3965a39b3b5dcd1` |
| 12 | `instance` | [mvPolynomial](../../../../mathematics/Algebra/FinitePresentation/Variant5e65e07995b5011a9bbe6d1ddab1de1a267c9813eea8ad86f714384e5d34ed12.lean/declarations/mvpolynomial--09ebc861d7c5a5214be0f626.md) | 198 | `declaration-track:09ebc861d7c5a5214be0f626f726b343c6b78d165ee90424b845af022e3a1a71` |
| 13 | `instance` | [self](../../../../mathematics/Algebra/FinitePresentation/Variant5e65e07995b5011a9bbe6d1ddab1de1a267c9813eea8ad86f714384e5d34ed12.lean/declarations/self--f54d1e19c55ea682ce90a2fb.md) | 203 | `declaration-track:f54d1e19c55ea682ce90a2fbe16e96535c04865d5b83e53282e6d957c31b0525` |
| 14 | `instance` | [polynomial](../../../../mathematics/Algebra/FinitePresentation/Variant5e65e07995b5011a9bbe6d1ddab1de1a267c9813eea8ad86f714384e5d34ed12.lean/declarations/polynomial--928a795971c66159289958bc.md) | 208 | `declaration-track:928a795971c66159289958bcca6fe116da4cbe7166c42fe111b12144353e2e07` |
| 15 | `theorem` | [of_restrict_scalars_finitePresentation](../../../../mathematics/Algebra/FinitePresentation/Variant5e65e07995b5011a9bbe6d1ddab1de1a267c9813eea8ad86f714384e5d34ed12.lean/declarations/of-restrict-scalars-finitepresentation--2e8587d0e428d328b92fde1e.md) | 217 | `result-track:2e8587d0e428d328b92fde1ee8a0c391951d7ab12ca35bbf7e8d5ae9a53783ac` |
| 16 | `theorem` | [ker_fg_of_mvPolynomial](../../../../mathematics/Algebra/FinitePresentation/Variant5e65e07995b5011a9bbe6d1ddab1de1a267c9813eea8ad86f714384e5d34ed12.lean/declarations/ker-fg-of-mvpolynomial--e56eb8265f064fe79c78842d.md) | 306 | `result-track:e56eb8265f064fe79c78842d72c6486360e030b0073753cf3aa006199244dde2` |
| 17 | `theorem` | [ker_fG_of_surjective](../../../../mathematics/Algebra/FinitePresentation/Variant5e65e07995b5011a9bbe6d1ddab1de1a267c9813eea8ad86f714384e5d34ed12.lean/declarations/ker-fg-of-surjective--7d975496262bbf053797f091.md) | 380 | `result-track:7d975496262bbf053797f09125e0933640e1ea6f26c320f9b33753ec34e6e827` |
| 18 | `def` | [FinitePresentation](../../../../mathematics/Algebra/FinitePresentation/Variant5e65e07995b5011a9bbe6d1ddab1de1a267c9813eea8ad86f714384e5d34ed12.lean/declarations/finitepresentation--f0e276ec2b4a9022cc341b52.md) | 400 | `declaration-track:f0e276ec2b4a9022cc341b5235b204396902188e9b6ad2fdf08047fc62837cc9` |
| 19 | `lemma` | [finitePresentation_algebraMap](../../../../mathematics/Algebra/FinitePresentation/Variant5e65e07995b5011a9bbe6d1ddab1de1a267c9813eea8ad86f714384e5d34ed12.lean/declarations/finitepresentation-algebramap--98084ca03f8c6a7417f3dd38.md) | 404 | `result-track:98084ca03f8c6a7417f3dd386f20ef4256bf80b9b39c01f2a05378c93a661a59` |
| 20 | `theorem` | [of_finitePresentation](../../../../mathematics/Algebra/FinitePresentation/Variant5e65e07995b5011a9bbe6d1ddab1de1a267c9813eea8ad86f714384e5d34ed12.lean/declarations/of-finitepresentation--607922f4e43bceb80c680d42.md) | 410 | `result-track:607922f4e43bceb80c680d4261c5f8437a1c4d2e39a48075ec313483c14c3063` |
| 21 | `theorem` | [id](../../../../mathematics/Algebra/FinitePresentation/Variant5e65e07995b5011a9bbe6d1ddab1de1a267c9813eea8ad86f714384e5d34ed12.lean/declarations/id--9681745b15035ca50e16a43a.md) | 418 | `result-track:9681745b15035ca50e16a43aa10a6d7812684df5e6e04323fd994156369e4f0a` |
| 22 | `theorem` | [comp_surjective](../../../../mathematics/Algebra/FinitePresentation/Variant5e65e07995b5011a9bbe6d1ddab1de1a267c9813eea8ad86f714384e5d34ed12.lean/declarations/comp-surjective--e34a32091254fe43686e6f2a.md) | 421 | `result-track:e34a32091254fe43686e6f2ac9a6409dde17c4f37e20963ce6a5b202dd810552` |
| 23 | `theorem` | [of_surjective](../../../../mathematics/Algebra/FinitePresentation/Variant5e65e07995b5011a9bbe6d1ddab1de1a267c9813eea8ad86f714384e5d34ed12.lean/declarations/of-surjective--76861dd99e80ab75a2ace24a.md) | 431 | `result-track:76861dd99e80ab75a2ace24a2736ec16224973eb120601491be112a7ced08f2e` |
| 24 | `lemma` | [of_bijective](../../../../mathematics/Algebra/FinitePresentation/Variant5e65e07995b5011a9bbe6d1ddab1de1a267c9813eea8ad86f714384e5d34ed12.lean/declarations/of-bijective--efdffe26bd6ee4b41581867f.md) | 436 | `result-track:efdffe26bd6ee4b41581867fcb2c2f60aa649372aff3a15c200be635b13d9aca` |
| 25 | `theorem` | [of_finiteType](../../../../mathematics/Algebra/FinitePresentation/Variant5e65e07995b5011a9bbe6d1ddab1de1a267c9813eea8ad86f714384e5d34ed12.lean/declarations/of-finitetype--18e22852ff07819e618d9fb1.md) | 442 | `result-track:18e22852ff07819e618d9fb10ef6aa6f4ec1f31a4e5b021d7fbf68083669b232` |
| 26 | `theorem` | [comp](../../../../mathematics/Algebra/FinitePresentation/Variant5e65e07995b5011a9bbe6d1ddab1de1a267c9813eea8ad86f714384e5d34ed12.lean/declarations/comp--f549c00bd003151cd4ee25b9.md) | 445 | `result-track:f549c00bd003151cd4ee25b93037e3f8fa4c77c4e72739a8a378222662247073` |
| 27 | `theorem` | [of_comp_finiteType](../../../../mathematics/Algebra/FinitePresentation/Variant5e65e07995b5011a9bbe6d1ddab1de1a267c9813eea8ad86f714384e5d34ed12.lean/declarations/of-comp-finitetype--dc267315dc624b7a43ac7a7a.md) | 450 | `result-track:dc267315dc624b7a43ac7a7acc93a8d0b5efcb5c46d7ba79ccd7d6f9d1a08dd9` |
| 28 | `lemma` | [polynomial_induction](../../../../mathematics/Algebra/FinitePresentation/Variant5e65e07995b5011a9bbe6d1ddab1de1a267c9813eea8ad86f714384e5d34ed12.lean/declarations/polynomial-induction--ac79a38e647cb8ef1c3a2c4d.md) | 475 | `result-track:ac79a38e647cb8ef1c3a2c4d86c8fa377b54ef57536937f0a3b61f162b21463e` |
| 29 | `def` | [FinitePresentation](../../../../mathematics/Algebra/FinitePresentation/Variant5e65e07995b5011a9bbe6d1ddab1de1a267c9813eea8ad86f714384e5d34ed12.lean/declarations/finitepresentation--47b0a21c775e731e1c06aab4.md) | 524 | `declaration-track:47b0a21c775e731e1c06aab4cdfd74ef4317995073503e3941794695fa759ab2` |
| 30 | `theorem` | [of_finitePresentation](../../../../mathematics/Algebra/FinitePresentation/Variant5e65e07995b5011a9bbe6d1ddab1de1a267c9813eea8ad86f714384e5d34ed12.lean/declarations/of-finitepresentation--121fa56527f180b13d171e08.md) | 529 | `result-track:121fa56527f180b13d171e08c12af1f0e610e5e8ed04ddfb15fb38ee4aa4a528` |
| 31 | `theorem` | [id](../../../../mathematics/Algebra/FinitePresentation/Variant5e65e07995b5011a9bbe6d1ddab1de1a267c9813eea8ad86f714384e5d34ed12.lean/declarations/id--5ac44f723fecdfc879e588c2.md) | 538 | `result-track:5ac44f723fecdfc879e588c26aeae26994cdffcdfbc7348f99380618391c7d95` |
| 32 | `theorem` | [comp](../../../../mathematics/Algebra/FinitePresentation/Variant5e65e07995b5011a9bbe6d1ddab1de1a267c9813eea8ad86f714384e5d34ed12.lean/declarations/comp--c1dfa5f1c9ff7fa909be697c.md) | 543 | `result-track:c1dfa5f1c9ff7fa909be697ce6a679c9d9e8d241fc57ca8ab00d0c9c1cb7737c` |
| 33 | `theorem` | [comp_surjective](../../../../mathematics/Algebra/FinitePresentation/Variant5e65e07995b5011a9bbe6d1ddab1de1a267c9813eea8ad86f714384e5d34ed12.lean/declarations/comp-surjective--735f8243c65a226146823c67.md) | 547 | `result-track:735f8243c65a226146823c677b098268c74a1d38338c10f1b64113f0f7d8cec3` |
| 34 | `theorem` | [of_surjective](../../../../mathematics/Algebra/FinitePresentation/Variant5e65e07995b5011a9bbe6d1ddab1de1a267c9813eea8ad86f714384e5d34ed12.lean/declarations/of-surjective--78d6b6304cb01427f9d2bfb4.md) | 551 | `result-track:78d6b6304cb01427f9d2bfb49d56c3bdc4caa19126a5ab28995d5998ccbfd793` |
| 35 | `theorem` | [of_finiteType](../../../../mathematics/Algebra/FinitePresentation/Variant5e65e07995b5011a9bbe6d1ddab1de1a267c9813eea8ad86f714384e5d34ed12.lean/declarations/of-finitetype--762ad867be03bc5855465ee4.md) | 556 | `result-track:762ad867be03bc5855465ee4a5df4a5d25b313397bb2eaea42e03ceed67d5b80` |
| 36 | `theorem` | [of_comp_finiteType](../../../../mathematics/Algebra/FinitePresentation/Variant5e65e07995b5011a9bbe6d1ddab1de1a267c9813eea8ad86f714384e5d34ed12.lean/declarations/of-comp-finitetype--9b1141f950c915ef5d284b5c.md) | 559 | `result-track:9b1141f950c915ef5d284b5c6e3f3ecfa1c8042045f95eb8aff179d2f797685f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
