# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.FermatPsp.Variant56944b419f57329f11a8f203f9da38ff704a99acdbbe6c90d3c6402c6f3ee7fd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83ea71a08ad728f71ec044dd5a3c0aa5efb00d2b",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant56944b419f57329f11a8f203f9da38ff704a99acdbbe6c90d3c6402c6f3ee7fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant56944b419f57329f11a8f203f9da38ff704a99acdbbe6c90d3c6402c6f3ee7fd.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant56944b419f57329f11a8f203f9da38ff704a99acdbbe6c90d3c6402c6f3ee7fd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83ea71a08ad728f71ec044dd5a3c0aa5efb00d2b`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant56944b419f57329f11a8f203f9da38ff704a99acdbbe6c90d3c6402c6f3ee7fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant56944b419f57329f11a8f203f9da38ff704a99acdbbe6c90d3c6402c6f3ee7fd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ProbablePrime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant56944b419f57329f11a8f203f9da38ff704a99acdbbe6c90d3c6402c6f3ee7fd.lean/declarations/probableprime--2fe3f29f9591cba3a858c729.md) | 63 | `declaration-track:2fe3f29f9591cba3a858c7298f9bd75ac9d54187f8e4cb42d7f5a5621823bac6` |
| 2 | `theorem` | [probablePrime_iff_zmod_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant56944b419f57329f11a8f203f9da38ff704a99acdbbe6c90d3c6402c6f3ee7fd.lean/declarations/probableprime-iff-zmod-one--4b90125e6603cf2b6363a1bf.md) | 66 | `result-track:4b90125e6603cf2b6363a1bf3cd4b2224a468ad0f771bc362839c3526357ac31` |
| 3 | `def` | [FermatPsp](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant56944b419f57329f11a8f203f9da38ff704a99acdbbe6c90d3c6402c6f3ee7fd.lean/declarations/fermatpsp--b457a03d1f96eade2048a857.md) | 75 | `declaration-track:b457a03d1f96eade2048a8573c3a30f25561992ffb3633c314d7f516dacd9f19` |
| 4 | `instance` | [decidableProbablePrime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant56944b419f57329f11a8f203f9da38ff704a99acdbbe6c90d3c6402c6f3ee7fd.lean/declarations/decidableprobableprime--e6a6faa4874d13c17d3a6cd8.md) | 78 | `declaration-track:e6a6faa4874d13c17d3a6cd8d7c35b74627562b9b52c4aec09c9fc0278c8b14b` |
| 5 | `instance` | [decidablePsp](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant56944b419f57329f11a8f203f9da38ff704a99acdbbe6c90d3c6402c6f3ee7fd.lean/declarations/decidablepsp--70c285eec2564bda0876284b.md) | 81 | `declaration-track:70c285eec2564bda0876284b0702c62c48f07940df4331232d9770980768e8c4` |
| 6 | `theorem` | [coprime_of_probablePrime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant56944b419f57329f11a8f203f9da38ff704a99acdbbe6c90d3c6402c6f3ee7fd.lean/declarations/coprime-of-probableprime--dc0a616c31ed7debca5ca3a2.md) | 87 | `result-track:dc0a616c31ed7debca5ca3a2fed5db21ea186162f1a4ff206b084192de94c916` |
| 7 | `theorem` | [probablePrime_iff_modEq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant56944b419f57329f11a8f203f9da38ff704a99acdbbe6c90d3c6402c6f3ee7fd.lean/declarations/probableprime-iff-modeq--1579a24faf1192222ca588dd.md) | 113 | `result-track:1579a24faf1192222ca588dddc75f745f8d50f0042065a296a03097916bfea50` |
| 8 | `theorem` | [coprime_of_fermatPsp](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant56944b419f57329f11a8f203f9da38ff704a99acdbbe6c90d3c6402c6f3ee7fd.lean/declarations/coprime-of-fermatpsp--32b58ed4db57b57d14cbcf4c.md) | 130 | `result-track:32b58ed4db57b57d14cbcf4cce5ca8e5f7646653b9e042567689fde5bc2231ae` |
| 9 | `theorem` | [fermatPsp_base_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant56944b419f57329f11a8f203f9da38ff704a99acdbbe6c90d3c6402c6f3ee7fd.lean/declarations/fermatpsp-base-one--152e0a8d574f617d69130ae3.md) | 136 | `result-track:152e0a8d574f617d69130ae3e86b3c02db8f2559389431a26d7159984dddde93` |
| 10 | `theorem` | [a_id_helper](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant56944b419f57329f11a8f203f9da38ff704a99acdbbe6c90d3c6402c6f3ee7fd.lean/declarations/a-id-helper--3669793e2b271242e44de660.md) | 144 | `result-track:3669793e2b271242e44de66021c95302b40a7e40ee6fe87322cdbbe9a96624db` |
| 11 | `theorem` | [b_id_helper](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant56944b419f57329f11a8f203f9da38ff704a99acdbbe6c90d3c6402c6f3ee7fd.lean/declarations/b-id-helper--d595b394ce1a1d4c1ab3148c.md) | 152 | `result-track:d595b394ce1a1d4c1ab3148c9757b4672005a68b473618f6e9bd67490d4b8d5f` |
| 12 | `theorem` | [AB_id_helper](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant56944b419f57329f11a8f203f9da38ff704a99acdbbe6c90d3c6402c6f3ee7fd.lean/declarations/ab-id-helper--29c933c5fb782b6f0abe2d86.md) | 160 | `result-track:29c933c5fb782b6f0abe2d86fda9d2237b5ca291eefc3b2aefc960eef478f1ab` |
| 13 | `theorem` | [bp_helper](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant56944b419f57329f11a8f203f9da38ff704a99acdbbe6c90d3c6402c6f3ee7fd.lean/declarations/bp-helper--f6830480769b93a29a51f6c8.md) | 169 | `result-track:f6830480769b93a29a51f6c8b6928ed9095e9d0f64f8208486088fab56a2dcda` |
| 14 | `def` | [psp_from_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant56944b419f57329f11a8f203f9da38ff704a99acdbbe6c90d3c6402c6f3ee7fd.lean/declarations/psp-from-prime--c8620447c6a02db80b37cf1b.md) | 198 | `declaration-track:c8620447c6a02db80b37cf1b2f572250eb1b1650467dcc0a8e3e5ac95b8deed2` |
| 15 | `theorem` | [psp_from_prime_psp](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant56944b419f57329f11a8f203f9da38ff704a99acdbbe6c90d3c6402c6f3ee7fd.lean/declarations/psp-from-prime-psp--62720096559aa77267e2dc99.md) | 207 | `result-track:62720096559aa77267e2dc9994295376167d5483c0d47468d499ef80387076f2` |
| 16 | `theorem` | [psp_from_prime_gt_p](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant56944b419f57329f11a8f203f9da38ff704a99acdbbe6c90d3c6402c6f3ee7fd.lean/declarations/psp-from-prime-gt-p--6db4f21932c3617312c9f596.md) | 303 | `result-track:6db4f21932c3617312c9f5967d0c41684deb1191eeca56f12a79bd3263bd6003` |
| 17 | `theorem` | [exists_infinite_pseudoprimes](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant56944b419f57329f11a8f203f9da38ff704a99acdbbe6c90d3c6402c6f3ee7fd.lean/declarations/exists-infinite-pseudoprimes--66cf1a2a2c6641e33c7ae2ff.md) | 318 | `result-track:66cf1a2a2c6641e33c7ae2ffbff736af00ab89453cb2925345cf0286d8da66de` |
| 18 | `theorem` | [frequently_atTop_fermatPsp](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant56944b419f57329f11a8f203f9da38ff704a99acdbbe6c90d3c6402c6f3ee7fd.lean/declarations/frequently-attop-fermatpsp--82f190ab954948b27ccc9944.md) | 352 | `result-track:82f190ab954948b27ccc9944225f099b9ce819a9fa009989e1c97453a8f1804c` |
| 19 | `theorem` | [infinite_setOfPred_pseudoprimes](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant56944b419f57329f11a8f203f9da38ff704a99acdbbe6c90d3c6402c6f3ee7fd.lean/declarations/infinite-setofpred-pseudoprimes--45509b3053e7491c172c80cf.md) | 360 | `result-track:45509b3053e7491c172c80cfd4f25580b46212afe312fdad95a3c5f5f454e4fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
