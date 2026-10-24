# Verification target: GRWTSK.Algebra.LinearAlgebra.Orthogonal.Variant0226c31db8db87949b1282dbac348be4ebc1863dfd4d006966edff903adef4c9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b0cdcb5632b230d2179ea6f567c04aa23dd37e11",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Orthogonal/Variant0226c31db8db87949b1282dbac348be4ebc1863dfd4d006966edff903adef4c9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant0226c31db8db87949b1282dbac348be4ebc1863dfd4d006966edff903adef4c9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant0226c31db8db87949b1282dbac348be4ebc1863dfd4d006966edff903adef4c9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b0cdcb5632b230d2179ea6f567c04aa23dd37e11`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Orthogonal/Variant0226c31db8db87949b1282dbac348be4ebc1863dfd4d006966edff903adef4c9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Orthogonal/Variant0226c31db8db87949b1282dbac348be4ebc1863dfd4d006966edff903adef4c9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Torsion.Field` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [orthogonalBilin](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant0226c31db8db87949b1282dbac348be4ebc1863dfd4d006966edff903adef4c9.lean/declarations/orthogonalbilin--a295428b5df26b46b8dcaccf.md) | 48 | `declaration-track:a295428b5df26b46b8dcaccf65da947f878df6b473097d968c522a7758d5edcd` |
| 2 | `theorem` | [mem_orthogonalBilin](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant0226c31db8db87949b1282dbac348be4ebc1863dfd4d006966edff903adef4c9.lean/declarations/mem-orthogonalbilin--adfaced7a389a83e2675e1eb.md) | 54 | `result-track:adfaced7a389a83e2675e1eb3657bac793ba72d9abab8a45004dc87bd9457694` |
| 3 | `theorem` | [mem_orthogonalBilin_iff_le_ker_flip](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant0226c31db8db87949b1282dbac348be4ebc1863dfd4d006966edff903adef4c9.lean/declarations/mem-orthogonalbilin-iff-le-ker-flip--5c5f2cc1a32ed006feac1a24.md) | 60 | `result-track:5c5f2cc1a32ed006feac1a24ce76ebbc13eb9173b62ea4ff42b07d87b9d21dc3` |
| 4 | `theorem` | [mem_orthogonalBilin_span](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant0226c31db8db87949b1282dbac348be4ebc1863dfd4d006966edff903adef4c9.lean/declarations/mem-orthogonalbilin-span--cd90ad2e31bd314371f23459.md) | 64 | `result-track:cd90ad2e31bd314371f23459be1456ad015f50b260c6e7a9b95c128943a7e3ca` |
| 5 | `lemma` | [orthogonalBilin_gc](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant0226c31db8db87949b1282dbac348be4ebc1863dfd4d006966edff903adef4c9.lean/declarations/orthogonalbilin-gc--fbb790a4e20ac6d27e1e0032.md) | 69 | `result-track:fbb790a4e20ac6d27e1e00327af219a2f454abd61897e84a795cd59c7f845ba8` |
| 6 | `theorem` | [le_orthogonalBilin_flip_iff_le_orthogonalBilin](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant0226c31db8db87949b1282dbac348be4ebc1863dfd4d006966edff903adef4c9.lean/declarations/le-orthogonalbilin-flip-iff-le-orthogonalbilin--9b1831d9669c61c245034b7d.md) | 74 | `result-track:9b1831d9669c61c245034b7d8a88528e54b8d3b82d45c3b159853e3500fa3b33` |
| 7 | `theorem` | [orthogonalBilin_bot](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant0226c31db8db87949b1282dbac348be4ebc1863dfd4d006966edff903adef4c9.lean/declarations/orthogonalbilin-bot--a4e904f842a6a833aeae92ef.md) | 81 | `result-track:a4e904f842a6a833aeae92efa3737bd0614f3c19eee86637a8919ca7f8a6219e` |
| 8 | `theorem` | [orthogonalBilin_ker](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant0226c31db8db87949b1282dbac348be4ebc1863dfd4d006966edff903adef4c9.lean/declarations/orthogonalbilin-ker--f9dbb8ed20b1178936684094.md) | 84 | `result-track:f9dbb8ed20b1178936684094d04d48260ce89f2cd04ad2ad4a468e76f6246fcd` |
| 9 | `theorem` | [orthogonalBilin_top_eq_ker](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant0226c31db8db87949b1282dbac348be4ebc1863dfd4d006966edff903adef4c9.lean/declarations/orthogonalbilin-top-eq-ker--ac4d5181676c6638a781bfac.md) | 87 | `result-track:ac4d5181676c6638a781bfac4ded401987030e6b1f2ede256c06839a2b2b9982` |
| 10 | `theorem` | [orthogonalBilin_le](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant0226c31db8db87949b1282dbac348be4ebc1863dfd4d006966edff903adef4c9.lean/declarations/orthogonalbilin-le--db8e0e4392b2062d5ad89e46.md) | 90 | `result-track:db8e0e4392b2062d5ad89e46a62e0e613074ff2d5e871a7a37e0ba6602ad55dc` |
| 11 | `theorem` | [orthogonalBilin_antitone](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant0226c31db8db87949b1282dbac348be4ebc1863dfd4d006966edff903adef4c9.lean/declarations/orthogonalbilin-antitone--2e1674ea5f1df470e9cefab6.md) | 95 | `result-track:2e1674ea5f1df470e9cefab62af2233f580eceae52e06f2d5f5340499e160d2b` |
| 12 | `theorem` | [ker_flip_le_orthogonalBilin](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant0226c31db8db87949b1282dbac348be4ebc1863dfd4d006966edff903adef4c9.lean/declarations/ker-flip-le-orthogonalbilin--b85fa216c3c3673205419f2b.md) | 98 | `result-track:b85fa216c3c3673205419f2bf931c5f416c1f2ae48940595fb49bfe950371a0c` |
| 13 | `theorem` | [ker_le_orthogonalBilin_flip](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant0226c31db8db87949b1282dbac348be4ebc1863dfd4d006966edff903adef4c9.lean/declarations/ker-le-orthogonalbilin-flip--71cc7189d47fa9dc0f9a6ef5.md) | 101 | `result-track:71cc7189d47fa9dc0f9a6ef5ed1d54b303088edf442a6607d9ee9985da5031c3` |
| 14 | `theorem` | [orthogonalBilin_span_singleton](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant0226c31db8db87949b1282dbac348be4ebc1863dfd4d006966edff903adef4c9.lean/declarations/orthogonalbilin-span-singleton--252b696817827638e35cda9b.md) | 104 | `result-track:252b696817827638e35cda9b6954d5ea95def5f34025f209d32e97e0d657e824` |
| 15 | `theorem` | [orthogonalBilin_sSup](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant0226c31db8db87949b1282dbac348be4ebc1863dfd4d006966edff903adef4c9.lean/declarations/orthogonalbilin-ssup--fb71e17ca6ad4c0a95a116f2.md) | 110 | `result-track:fb71e17ca6ad4c0a95a116f25627d1add61634da3df5bdb4b173ab8fc0e71aff` |
| 16 | `theorem` | [orthogonalBilin_iSup](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant0226c31db8db87949b1282dbac348be4ebc1863dfd4d006966edff903adef4c9.lean/declarations/orthogonalbilin-isup--8f60e66f6d07a5d9ecd90793.md) | 114 | `result-track:8f60e66f6d07a5d9ecd907936d288b2676d2d8488195a51a8db06848468d7d4a` |
| 17 | `theorem` | [orthogonalBilin_sup](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant0226c31db8db87949b1282dbac348be4ebc1863dfd4d006966edff903adef4c9.lean/declarations/orthogonalbilin-sup--b598add4361485d0d7c24c52.md) | 118 | `result-track:b598add4361485d0d7c24c52a38593d8150fd81cd7c61bab7b07871f0b83d7b6` |
| 18 | `theorem` | [orthogonalBilin_sup_ker](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant0226c31db8db87949b1282dbac348be4ebc1863dfd4d006966edff903adef4c9.lean/declarations/orthogonalbilin-sup-ker--46535852cf3b60ad88f5f468.md) | 123 | `result-track:46535852cf3b60ad88f5f468de800cfca1b9cd23d755f3c9eff4fd47fca91998` |
| 19 | `theorem` | [le_orthogonalBilin_flip_orthogonalBilin](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant0226c31db8db87949b1282dbac348be4ebc1863dfd4d006966edff903adef4c9.lean/declarations/le-orthogonalbilin-flip-orthogonalbilin--055916bf3d805b19d869e6be.md) | 128 | `result-track:055916bf3d805b19d869e6bedf8763022dcddeece9565a6472787b4c7e889c1a` |
| 20 | `theorem` | [le_orthogonalBilin_orthogonalBilin](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant0226c31db8db87949b1282dbac348be4ebc1863dfd4d006966edff903adef4c9.lean/declarations/le-orthogonalbilin-orthogonalbilin--8f071e06e146c54dafcebb37.md) | 131 | `result-track:8f071e06e146c54dafcebb37e58817d67bf8aa067d21bf744cd4e0cdd09a952b` |
| 21 | `theorem` | [orthogonalBilin_orthogonalBilin_flip_orthogonalBilin](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant0226c31db8db87949b1282dbac348be4ebc1863dfd4d006966edff903adef4c9.lean/declarations/orthogonalbilin-orthogonalbilin-flip-orthogonalbilin--43b4937a96e686341fce98d8.md) | 135 | `result-track:43b4937a96e686341fce98d86050e85fa756a65e6bf00d0c078b13c6b85dbc11` |
| 22 | `theorem` | [orthogonalBilin_flip_orthogonalBilin_orthogonalBilin_flip](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant0226c31db8db87949b1282dbac348be4ebc1863dfd4d006966edff903adef4c9.lean/declarations/orthogonalbilin-flip-orthogonalbilin-orthogonalbilin-flip--350727fff43092e2412a7916.md) | 139 | `result-track:350727fff43092e2412a7916c7b3e8a32cdbc267c044f371fa5d8183925649f4` |
| 23 | `theorem` | [orthogonalBilin_sup_orthogonalBilin_le_orthogonalBilin_inf](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant0226c31db8db87949b1282dbac348be4ebc1863dfd4d006966edff903adef4c9.lean/declarations/orthogonalbilin-sup-orthogonalbilin-le-orthogonalbilin-inf--5970ece9482af9f94ee73ac6.md) | 144 | `result-track:5970ece9482af9f94ee73ac6a636aaf590d73564053a4672a640ed5364bd58ed` |
| 24 | `theorem` | [orthogonalBilin_eval_eq_dualAnnihilator](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant0226c31db8db87949b1282dbac348be4ebc1863dfd4d006966edff903adef4c9.lean/declarations/orthogonalbilin-eval-eq-dualannihilator--72ba39fd63c748725246d2c0.md) | 149 | `result-track:72ba39fd63c748725246d2c0d22eb7d1819628d84dc1ff5c3cd331e4fdafa867` |
| 25 | `theorem` | [orthogonalBilin_id_eq_dualCoannihilator](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant0226c31db8db87949b1282dbac348be4ebc1863dfd4d006966edff903adef4c9.lean/declarations/orthogonalbilin-id-eq-dualcoannihilator--b47712397c63099850c00715.md) | 153 | `result-track:b47712397c63099850c007158c9ebfbba90309e0221a0eedcbb1b9f24e1c2b18` |
| 26 | `lemma` | [orthogonalBilin_map](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant0226c31db8db87949b1282dbac348be4ebc1863dfd4d006966edff903adef4c9.lean/declarations/orthogonalbilin-map--88bd6bdeef4e843fe39d35a7.md) | 161 | `result-track:88bd6bdeef4e843fe39d35a7963f5aba5fb1c9d4cebdc5cb8bd2ba17ea56ccc8` |
| 27 | `lemma` | [orthogonalBilin_id_map](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant0226c31db8db87949b1282dbac348be4ebc1863dfd4d006966edff903adef4c9.lean/declarations/orthogonalbilin-id-map--a4c2800ced4044e86ce696fe.md) | 167 | `result-track:a4c2800ced4044e86ce696fe58fc6c27d2daeb9d2f689e487005d914aac09e81` |
| 28 | `lemma` | [comap_orthogonalBilin_eval](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant0226c31db8db87949b1282dbac348be4ebc1863dfd4d006966edff903adef4c9.lean/declarations/comap-orthogonalbilin-eval--b75f2483a5a216826e785d7c.md) | 176 | `result-track:b75f2483a5a216826e785d7c6de10c63f7d2ade62456fdd5456c666e8c3be30a` |
| 29 | `theorem` | [comap_dualAnnihilator_eq_orthogonalBilin](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant0226c31db8db87949b1282dbac348be4ebc1863dfd4d006966edff903adef4c9.lean/declarations/comap-dualannihilator-eq-orthogonalbilin--3abb8b7e720830f8cea50a86.md) | 181 | `result-track:3abb8b7e720830f8cea50a86f0a293ce3005a2a1c3c269f71ec70038387647f0` |
| 30 | `theorem` | [dualCoannihilator_map_eq_orthogonalBilin](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant0226c31db8db87949b1282dbac348be4ebc1863dfd4d006966edff903adef4c9.lean/declarations/dualcoannihilator-map-eq-orthogonalbilin--8cf15d240076cc36f80e9614.md) | 188 | `result-track:8cf15d240076cc36f80e96145e12ab9d20e604cb6e109ac7423a8c33f18ced7f` |
| 31 | `theorem` | [orthogonalBilin_eval_map](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant0226c31db8db87949b1282dbac348be4ebc1863dfd4d006966edff903adef4c9.lean/declarations/orthogonalbilin-eval-map--3a84825e0da8d7ad67828c26.md) | 196 | `result-track:3a84825e0da8d7ad67828c263bb265dd506905d5b518e7dd25ac340b44061788` |
| 32 | `theorem` | [orthogonalBilin_id_map_dualMap](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant0226c31db8db87949b1282dbac348be4ebc1863dfd4d006966edff903adef4c9.lean/declarations/orthogonalbilin-id-map-dualmap--bde40c8d6af0139dfd6a6d39.md) | 201 | `result-track:bde40c8d6af0139dfd6a6d39df43432082742cc0273bdadf06a885665c129211` |
| 33 | `theorem` | [span_singleton_inf_orthogonal_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant0226c31db8db87949b1282dbac348be4ebc1863dfd4d006966edff903adef4c9.lean/declarations/span-singleton-inf-orthogonal-eq-bot--cbc7ef4ffed26356c66903f1.md) | 218 | `result-track:cbc7ef4ffed26356c66903f1301ef1c7d9f6e16bd3371b11ffdb649c6fca6b1c` |
| 34 | `theorem` | [span_singleton_sup_orthogonal_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant0226c31db8db87949b1282dbac348be4ebc1863dfd4d006966edff903adef4c9.lean/declarations/span-singleton-sup-orthogonal-eq-top--3264ec2642d4bbb6a1c09171.md) | 232 | `result-track:3264ec2642d4bbb6a1c09171c108a31b621598563f5479bf911caeaaf2180157` |
| 35 | `theorem` | [isCompl_span_singleton_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant0226c31db8db87949b1282dbac348be4ebc1863dfd4d006966edff903adef4c9.lean/declarations/iscompl-span-singleton-orthogonal--d10603259047a9159ea54caf.md) | 239 | `result-track:d10603259047a9159ea54caf8246f935f0d8fc0753a222db86a2efb41a7cd0cc` |
| 36 | `theorem` | [nondegenerate_restrict_of_disjoint_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant0226c31db8db87949b1282dbac348be4ebc1863dfd4d006966edff903adef4c9.lean/declarations/nondegenerate-restrict-of-disjoint-orthogonal--0f57d6fe84d12e93b042ce05.md) | 253 | `result-track:0f57d6fe84d12e93b042ce0569841ab6cdef55f2d9c6b7366b32a2f05bce2bfc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
