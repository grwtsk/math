# Verification target: GRWTSK.Geometry.DifferentialGeometry.MfldSetTac.Variant060dc6ae388f6ce7661c5eb8999b3e74af0daff84f64ff2479f8e7caa242e924

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "537d8a3696091d262013071254bce19a99f1d0c2",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/MfldSetTac/Variant060dc6ae388f6ce7661c5eb8999b3e74af0daff84f64ff2479f8e7caa242e924.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant060dc6ae388f6ce7661c5eb8999b3e74af0daff84f64ff2479f8e7caa242e924.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant060dc6ae388f6ce7661c5eb8999b3e74af0daff84f64ff2479f8e7caa242e924.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `537d8a3696091d262013071254bce19a99f1d0c2`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/MfldSetTac/Variant060dc6ae388f6ce7661c5eb8999b3e74af0daff84f64ff2479f8e7caa242e924.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/MfldSetTac/Variant060dc6ae388f6ce7661c5eb8999b3e74af0daff84f64ff2479f8e7caa242e924.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Equiv.LocalEquiv` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LocalHomeomorph](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant060dc6ae388f6ce7661c5eb8999b3e74af0daff84f64ff2479f8e7caa242e924.lean/declarations/localhomeomorph--e54797a2890575f8f5967ce2.md) | 23 | `declaration-track:e54797a2890575f8f5967ce218a3ff800bb715ce0cac82f60cc3e6bb47bb6564` |
| 2 | `instance` | [LocalHomeomorph.has_coe_to_fun](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant060dc6ae388f6ce7661c5eb8999b3e74af0daff84f64ff2479f8e7caa242e924.lean/declarations/localhomeomorph-has-coe-to-fun--93542b25fe60085026194d46.md) | 25 | `declaration-track:93542b25fe60085026194d46a28aac55befb6374e4be7c08a18998c0395c1b13` |
| 3 | `def` | [LocalHomeomorph.symm](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant060dc6ae388f6ce7661c5eb8999b3e74af0daff84f64ff2479f8e7caa242e924.lean/declarations/localhomeomorph-symm--7090c3ae16ab6e25d665783b.md) | 27 | `declaration-track:7090c3ae16ab6e25d665783b3f27266f901ab0563b892c09667424667400d8f1` |
| 4 | `lemma` | [LocalHomeomorph.left_inv](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant060dc6ae388f6ce7661c5eb8999b3e74af0daff84f64ff2479f8e7caa242e924.lean/declarations/localhomeomorph-left-inv--f5b2110287f7416748d5148a.md) | 29 | `result-track:f5b2110287f7416748d5148adeb199c590af2bf51f91f29efd13def84c7bbfd0` |
| 5 | `theorem` | [LocalHomeomorph.symm_to_LocalEquiv](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant060dc6ae388f6ce7661c5eb8999b3e74af0daff84f64ff2479f8e7caa242e924.lean/declarations/localhomeomorph-symm-to-localequiv--9dd02a8337e70689736303ff.md) | 34 | `result-track:9dd02a8337e70689736303ffd038c31ba8baf8d811217b7aa47b32268c5e68f9` |
| 6 | `lemma` | [LocalHomeomorph.coe_coe](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant060dc6ae388f6ce7661c5eb8999b3e74af0daff84f64ff2479f8e7caa242e924.lean/declarations/localhomeomorph-coe-coe--78d2bbd2bcd4e10ac86c93cb.md) | 38 | `result-track:78d2bbd2bcd4e10ac86c93cb2ac489bfaeae1d4a51c7ddcd68e35c648eb4735f` |
| 7 | `lemma` | [LocalHomeomorph.coe_coe_symm](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant060dc6ae388f6ce7661c5eb8999b3e74af0daff84f64ff2479f8e7caa242e924.lean/declarations/localhomeomorph-coe-coe-symm--901caa03d1eafdd0f754210b.md) | 42 | `result-track:901caa03d1eafdd0f754210b28b0dc96da9210faa73384a1125801e91299b90c` |
| 8 | `structure` | [ModelWithCorners](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant060dc6ae388f6ce7661c5eb8999b3e74af0daff84f64ff2479f8e7caa242e924.lean/declarations/modelwithcorners--0363abe781f056a5f439d704.md) | 46 | `declaration-track:0363abe781f056a5f439d704adc3c3e65731bd55ebb3ba45ca7a69b54ec11161` |
| 9 | `def` | [ModelWithCorners.symm](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant060dc6ae388f6ce7661c5eb8999b3e74af0daff84f64ff2479f8e7caa242e924.lean/declarations/modelwithcorners-symm--72fa48db6d9dbe6d0efa7e5f.md) | 51 | `declaration-track:72fa48db6d9dbe6d0efa7e5f9f39d0164d30cc34a123166e9f42324f1a0bfce2` |
| 10 | `instance` | [ModelWithCorners.has_coe_to_fun](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant060dc6ae388f6ce7661c5eb8999b3e74af0daff84f64ff2479f8e7caa242e924.lean/declarations/modelwithcorners-has-coe-to-fun--586ca403aca64e9293aefcde.md) | 53 | `declaration-track:586ca403aca64e9293aefcde53904e1afd5d505dbc221464c831620746a3cdeb` |
| 11 | `lemma` | [ModelWithCorners.left_inv](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant060dc6ae388f6ce7661c5eb8999b3e74af0daff84f64ff2479f8e7caa242e924.lean/declarations/modelwithcorners-left-inv--692d61e0215f7d8d38e6a6d3.md) | 55 | `result-track:692d61e0215f7d8d38e6a6d3bda7cc2f66008c07e782799ebbb0848a78f59701` |
| 12 | `lemma` | [ModelWithCorners.to_local_equiv_coe](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant060dc6ae388f6ce7661c5eb8999b3e74af0daff84f64ff2479f8e7caa242e924.lean/declarations/modelwithcorners-to-local-equiv-coe--269e1edc9252dce4acef4eb2.md) | 59 | `result-track:269e1edc9252dce4acef4eb2cce32167a04b197c67af6745eb7cbadbd13b602b` |
| 13 | `lemma` | [ModelWithCorners.to_local_equiv_coe_symm](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant060dc6ae388f6ce7661c5eb8999b3e74af0daff84f64ff2479f8e7caa242e924.lean/declarations/modelwithcorners-to-local-equiv-coe-symm--bb476b1b9160fb90b575b02d.md) | 63 | `result-track:bb476b1b9160fb90b575b02ddbaa0be04e7ba7e2b99fbd127873780085156d8b` |
| 14 | `example` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant060dc6ae388f6ce7661c5eb8999b3e74af0daff84f64ff2479f8e7caa242e924.lean/declarations/example--d60a99ffdcfaf35d6307d26e.md) | 73 | `declaration-track:d60a99ffdcfaf35d6307d26e728bd601c6e1f7ea78c8d9f45b302f9678946e55` |
| 15 | `example` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant060dc6ae388f6ce7661c5eb8999b3e74af0daff84f64ff2479f8e7caa242e924.lean/declarations/example--6b6624b2a8db559a9110a105.md) | 77 | `declaration-track:6b6624b2a8db559a9110a1055ab476627f25a0a5592df298060dc4eb5d3036ff` |
| 16 | `example` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant060dc6ae388f6ce7661c5eb8999b3e74af0daff84f64ff2479f8e7caa242e924.lean/declarations/example--ab3dd732668fdc23ca6ef968.md) | 79 | `declaration-track:ab3dd732668fdc23ca6ef968f7304524605df7eb60de8df373ac07c3cc071b86` |
| 17 | `example` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variant060dc6ae388f6ce7661c5eb8999b3e74af0daff84f64ff2479f8e7caa242e924.lean/declarations/example--bc0429c0c84a854d2644179d.md) | 83 | `declaration-track:bc0429c0c84a854d2644179d51e4b04e20c57a4e392231a5fdc30916088633b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
