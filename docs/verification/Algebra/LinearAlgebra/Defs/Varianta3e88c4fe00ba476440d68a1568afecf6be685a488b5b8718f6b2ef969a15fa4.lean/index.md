# Verification target: GRWTSK.Algebra.LinearAlgebra.Defs.Varianta3e88c4fe00ba476440d68a1568afecf6be685a488b5b8718f6b2ef969a15fa4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a31310be11d1f1248eb1f8aa9f0959f1ba4e9de",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Defs/Varianta3e88c4fe00ba476440d68a1568afecf6be685a488b5b8718f6b2ef969a15fa4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Varianta3e88c4fe00ba476440d68a1568afecf6be685a488b5b8718f6b2ef969a15fa4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Varianta3e88c4fe00ba476440d68a1568afecf6be685a488b5b8718f6b2ef969a15fa4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a31310be11d1f1248eb1f8aa9f0959f1ba4e9de`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Defs/Varianta3e88c4fe00ba476440d68a1568afecf6be685a488b5b8718f6b2ef969a15fa4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Defs/Varianta3e88c4fe00ba476440d68a1568afecf6be685a488b5b8718f6b2ef969a15fa4.lean.json)

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
| 1 | `abbrev` | [FiniteDimensional](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Varianta3e88c4fe00ba476440d68a1568afecf6be685a488b5b8718f6b2ef969a15fa4.lean/declarations/finitedimensional--323a8dce21ce9e7b02be0894.md) | 74 | `declaration-track:323a8dce21ce9e7b02be0894ca27096d3256b968f907d3f75171fbbe6d5246d1` |
| 2 | `theorem` | [of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Varianta3e88c4fe00ba476440d68a1568afecf6be685a488b5b8718f6b2ef969a15fa4.lean/declarations/of-injective--400b562dd8f18ccf389e158c.md) | 84 | `result-track:400b562dd8f18ccf389e158cdfc24cef16ce8d8351c01a1662b0df5dea6cdf75` |
| 3 | `theorem` | [of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Varianta3e88c4fe00ba476440d68a1568afecf6be685a488b5b8718f6b2ef969a15fa4.lean/declarations/of-surjective--284e7fc9df0649e8c9888463.md) | 89 | `result-track:284e7fc9df0649e8c988846325cb51f461c06eefdf013529c8608d645e92ec4f` |
| 4 | `instance` | [finiteDimensional_pi](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Varianta3e88c4fe00ba476440d68a1568afecf6be685a488b5b8718f6b2ef969a15fa4.lean/declarations/finitedimensional-pi--509e1c3cc0302cc431306c23.md) | 95 | `declaration-track:509e1c3cc0302cc431306c23ca16c9252206751220e28404144dc09580f176ad` |
| 5 | `instance` | [finiteDimensional_pi'](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Varianta3e88c4fe00ba476440d68a1568afecf6be685a488b5b8718f6b2ef969a15fa4.lean/declarations/finitedimensional-pi--4f2b5f44ab90113450c7e10b.md) | 98 | `declaration-track:4f2b5f44ab90113450c7e10b9734df764ca880e198bce753224f223c21f08d00` |
| 6 | `theorem` | [_root_.Module.Basis.finiteDimensional_of_finite](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Varianta3e88c4fe00ba476440d68a1568afecf6be685a488b5b8718f6b2ef969a15fa4.lean/declarations/root-module-basis-finitedimensional-of-finite--a1f9fbc4a4cb4d5b8e8675ae.md) | 105 | `result-track:a1f9fbc4a4cb4d5b8e8675ae1b20d55a640e010eabc89d85079babbf19ca0a6f` |
| 7 | `def` | [fintypeBasisIndex](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Varianta3e88c4fe00ba476440d68a1568afecf6be685a488b5b8718f6b2ef969a15fa4.lean/declarations/fintypebasisindex--d4b2a092afd531b640036cc0.md) | 111 | `declaration-track:d4b2a092afd531b640036cc06ca8bda8254bed3c3a02b30cdb4b64962f92d298` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Varianta3e88c4fe00ba476440d68a1568afecf6be685a488b5b8718f6b2ef969a15fa4.lean/declarations/instance--3d431e8f320fc24b88a23e51.md) | 117 | `declaration-track:3d431e8f320fc24b88a23e516bad146b022cbb93443e604dab314b8919b2211e` |
| 9 | `theorem` | [of_finite_basis](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Varianta3e88c4fe00ba476440d68a1568afecf6be685a488b5b8718f6b2ef969a15fa4.lean/declarations/of-finite-basis--211466dce9f0dc3d428ae574.md) | 122 | `result-track:211466dce9f0dc3d428ae5743ea9be90127ea9d54791d30f9e81e5fa2c10fb8d` |
| 10 | `instance` | [finiteDimensional_submodule](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Varianta3e88c4fe00ba476440d68a1568afecf6be685a488b5b8718f6b2ef969a15fa4.lean/declarations/finitedimensional-submodule--a5767caf23ba86c71310f58c.md) | 131 | `declaration-track:a5767caf23ba86c71310f58cddc8c9a6322ca0c615dcb2228ed735b5bcc7b37c` |
| 11 | `instance` | [finiteDimensional_quotient](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Varianta3e88c4fe00ba476440d68a1568afecf6be685a488b5b8718f6b2ef969a15fa4.lean/declarations/finitedimensional-quotient--6f5f04d8145ee28b26c62d11.md) | 136 | `declaration-track:6f5f04d8145ee28b26c62d1118b70fb95bb5e488d48eea2223dcb82f994b1b28` |
| 12 | `theorem` | [of_finrank_pos](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Varianta3e88c4fe00ba476440d68a1568afecf6be685a488b5b8718f6b2ef969a15fa4.lean/declarations/of-finrank-pos--8d49357d54a47acc0c5d3c40.md) | 140 | `result-track:8d49357d54a47acc0c5d3c40b4ec08dccf9bb282bc64e94dfefb6d1746404289` |
| 13 | `theorem` | [of_finrank_eq_succ](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Varianta3e88c4fe00ba476440d68a1568afecf6be685a488b5b8718f6b2ef969a15fa4.lean/declarations/of-finrank-eq-succ--6ff69f3543c658a3c26533df.md) | 143 | `result-track:6ff69f3543c658a3c26533dfcb8b71f4ee4dab5d6f4d3514a34335b9c4c58f9b` |
| 14 | `theorem` | [of_fact_finrank_eq_succ](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Varianta3e88c4fe00ba476440d68a1568afecf6be685a488b5b8718f6b2ef969a15fa4.lean/declarations/of-fact-finrank-eq-succ--0ae7a2d1b4ff15c1d9947b54.md) | 152 | `result-track:0ae7a2d1b4ff15c1d9947b54826e0f6371dc52e1a81962e8dfcc244d504d8287` |
| 15 | `lemma` | [of_fact_finrank_eq_two](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Varianta3e88c4fe00ba476440d68a1568afecf6be685a488b5b8718f6b2ef969a15fa4.lean/declarations/of-fact-finrank-eq-two--5bd40f7b00960ec202cc32f9.md) | 156 | `result-track:5bd40f7b00960ec202cc32f9beba985923f57f6348ac5ec6dbfdf43de519a6fb` |
| 16 | `theorem` | [finrank_eq_rank'](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Varianta3e88c4fe00ba476440d68a1568afecf6be685a488b5b8718f6b2ef969a15fa4.lean/declarations/finrank-eq-rank--824d3807b4adc701ec141b9a.md) | 168 | `result-track:824d3807b4adc701ec141b9a8f7c444f9de9bd4d5ac622a42e6cd5f95f807df4` |
| 17 | `theorem` | [finrank_of_infinite_dimensional](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Varianta3e88c4fe00ba476440d68a1568afecf6be685a488b5b8718f6b2ef969a15fa4.lean/declarations/finrank-of-infinite-dimensional--5ade585e261e2ba3d1dd1847.md) | 173 | `result-track:5ade585e261e2ba3d1dd1847ec1b62afc24ffac174dbf640c49fbcce7bef389c` |
| 18 | `theorem` | [finiteDimensional_iff_of_rank_eq_nsmul](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Varianta3e88c4fe00ba476440d68a1568afecf6be685a488b5b8718f6b2ef969a15fa4.lean/declarations/finitedimensional-iff-of-rank-eq-nsmul--e2ff3c6aa6109c2fc3aa975a.md) | 176 | `result-track:e2ff3c6aa6109c2fc3aa975a486920abae0ad73b88cd9f6d1d92922b1ae29174` |
| 19 | `theorem` | [finrank_eq_card_basis'](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Varianta3e88c4fe00ba476440d68a1568afecf6be685a488b5b8718f6b2ef969a15fa4.lean/declarations/finrank-eq-card-basis--07212e9bd92e36c10d5681a0.md) | 183 | `result-track:07212e9bd92e36c10d5681a0438b28eb35a0aa233406236882ca9c5a65649629` |
| 20 | `instance` | [finiteDimensional_self](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Varianta3e88c4fe00ba476440d68a1568afecf6be685a488b5b8718f6b2ef969a15fa4.lean/declarations/finitedimensional-self--76a4a534c23e36ada9f749de.md) | 196 | `declaration-track:76a4a534c23e36ada9f749dee234b82e421328378c7e377f34272a58b82156d1` |
| 21 | `theorem` | [span_of_finite](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Varianta3e88c4fe00ba476440d68a1568afecf6be685a488b5b8718f6b2ef969a15fa4.lean/declarations/span-of-finite--a7bff3bab0914555ceb95407.md) | 199 | `result-track:a7bff3bab0914555ceb954072b6177e0a20f0ca1e123bfd60185ca07a110f65c` |
| 22 | `instance` | [span_singleton](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Varianta3e88c4fe00ba476440d68a1568afecf6be685a488b5b8718f6b2ef969a15fa4.lean/declarations/span-singleton--f16617b4873bdd0f9e0796ba.md) | 203 | `declaration-track:f16617b4873bdd0f9e0796bab8a64eda03337a12d5ab33f1a8afadd247c7fac9` |
| 23 | `instance` | [span_finset](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Varianta3e88c4fe00ba476440d68a1568afecf6be685a488b5b8718f6b2ef969a15fa4.lean/declarations/span-finset--026da10a92ef9984cc06b55a.md) | 207 | `declaration-track:026da10a92ef9984cc06b55ac43f67d2169023dc838bc1779d11c5486d22621e` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Varianta3e88c4fe00ba476440d68a1568afecf6be685a488b5b8718f6b2ef969a15fa4.lean/declarations/instance--4b7c6fcc9d52c30d2b8c2519.md) | 211 | `declaration-track:4b7c6fcc9d52c30d2b8c25191e8247102897421336a54d47620e1b67db49e084` |
| 25 | `theorem` | [trans](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Varianta3e88c4fe00ba476440d68a1568afecf6be685a488b5b8718f6b2ef969a15fa4.lean/declarations/trans--ce486d4e646b9455c719be15.md) | 222 | `result-track:ce486d4e646b9455c719be15974d4f6da81865cd7a49753b3d5c866c5e8ee5ee` |
| 26 | `theorem` | [fg_iff_finiteDimensional](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Varianta3e88c4fe00ba476440d68a1568afecf6be685a488b5b8718f6b2ef969a15fa4.lean/declarations/fg-iff-finitedimensional--b8e5b4e58affa158bafbdde8.md) | 236 | `result-track:b8e5b4e58affa158bafbdde8ad598d8309a7b93fd81117ae71f967bf389d0d6f` |
| 27 | `theorem` | [finiteDimensional](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Varianta3e88c4fe00ba476440d68a1568afecf6be685a488b5b8718f6b2ef969a15fa4.lean/declarations/finitedimensional--a25bc831c0d8c33ab72cd8b8.md) | 249 | `result-track:a25bc831c0d8c33ab72cd8b87826643a30f08a3362fba23075dfc7121d5e17d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
