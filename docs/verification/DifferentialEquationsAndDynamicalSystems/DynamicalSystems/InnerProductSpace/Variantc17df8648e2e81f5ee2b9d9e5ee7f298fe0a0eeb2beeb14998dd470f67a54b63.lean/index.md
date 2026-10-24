# Verification target: GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.InnerProductSpace.Variantc17df8648e2e81f5ee2b9d9e5ee7f298fe0a0eeb2beeb14998dd470f67a54b63

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b9a5a22423865a1e2b5f74edfbec516ed66ca40",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variantc17df8648e2e81f5ee2b9d9e5ee7f298fe0a0eeb2beeb14998dd470f67a54b63.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variantc17df8648e2e81f5ee2b9d9e5ee7f298fe0a0eeb2beeb14998dd470f67a54b63.lean/index.md) · [Full source](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variantc17df8648e2e81f5ee2b9d9e5ee7f298fe0a0eeb2beeb14998dd470f67a54b63.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b9a5a22423865a1e2b5f74edfbec516ed66ca40`.

Source path: `GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variantc17df8648e2e81f5ee2b9d9e5ee7f298fe0a0eeb2beeb14998dd470f67a54b63.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variantc17df8648e2e81f5ee2b9d9e5ee7f298fe0a0eeb2beeb14998dd470f67a54b63.lean.json)

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
| 1 | `def` | [toMeasurableEquiv](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variantc17df8648e2e81f5ee2b9d9e5ee7f298fe0a0eeb2beeb14998dd470f67a54b63.lean/declarations/tomeasurableequiv--35a9189c3682b9fc94775848.md) | 38 | `declaration-track:35a9189c3682b9fc94775848fadcdd143fa133fa3c4694bb18451b63b5b0dc47` |
| 2 | `theorem` | [coe_toMeasurableEquiv](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variantc17df8648e2e81f5ee2b9d9e5ee7f298fe0a0eeb2beeb14998dd470f67a54b63.lean/declarations/coe-tomeasurableequiv--e076604159e01dff9e518c88.md) | 40 | `result-track:e076604159e01dff9e518c8863d2dd98061eba993b45a2ed76753373d896014d` |
| 3 | `theorem` | [toMeasurableEquiv_symm](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variantc17df8648e2e81f5ee2b9d9e5ee7f298fe0a0eeb2beeb14998dd470f67a54b63.lean/declarations/tomeasurableequiv-symm--c344585de9ae65a5d27aa26a.md) | 42 | `result-track:c344585de9ae65a5d27aa26aa460cf7383ebb88fd9b15432fe4f9cf2a2aa7ab3` |
| 4 | `lemma` | [coe_symm_toMeasurableEquiv](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variantc17df8648e2e81f5ee2b9d9e5ee7f298fe0a0eeb2beeb14998dd470f67a54b63.lean/declarations/coe-symm-tomeasurableequiv--a891be306cdb3777cd4013bb.md) | 44 | `result-track:a891be306cdb3777cd4013bbb0e433d391bdbd9b585a8a93669f98bdb2b502ef` |
| 5 | `theorem` | [Orientation.measure_orthonormalBasis](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variantc17df8648e2e81f5ee2b9d9e5ee7f298fe0a0eeb2beeb14998dd470f67a54b63.lean/declarations/orientation-measure-orthonormalbasis--e1b2de84a5ef204bc00e4115.md) | 57 | `result-track:e1b2de84a5ef204bc00e41150c3ae9c1957265c9349588e1b75e8b48a1399bc5` |
| 6 | `theorem` | [Orientation.measure_eq_volume](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variantc17df8648e2e81f5ee2b9d9e5ee7f298fe0a0eeb2beeb14998dd470f67a54b63.lean/declarations/orientation-measure-eq-volume--45e9531481c1798f611d94fd.md) | 70 | `result-track:45e9531481c1798f611d94fdd623a59654a2def83820c44f800b61631306e668` |
| 7 | `theorem` | [OrthonormalBasis.volume_parallelepiped](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variantc17df8648e2e81f5ee2b9d9e5ee7f298fe0a0eeb2beeb14998dd470f67a54b63.lean/declarations/orthonormalbasis-volume-parallelepiped--c2654eda7ceff51acf3f49d1.md) | 82 | `result-track:c2654eda7ceff51acf3f49d1c523a6cbc3039c1bd692b8137276ab906187a169` |
| 8 | `theorem` | [OrthonormalBasis.addHaar_eq_volume](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variantc17df8648e2e81f5ee2b9d9e5ee7f298fe0a0eeb2beeb14998dd470f67a54b63.lean/declarations/orthonormalbasis-addhaar-eq-volume--7803660dc5119a03919055ca.md) | 91 | `result-track:7803660dc5119a03919055cad8ce33f7a94c81c2f4b9b43b3c9a565b6cb1953e` |
| 9 | `def` | [OrthonormalBasis.measurableEquiv](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variantc17df8648e2e81f5ee2b9d9e5ee7f298fe0a0eeb2beeb14998dd470f67a54b63.lean/declarations/orthonormalbasis-measurableequiv--d3a5dcef1c1d7bed90619a29.md) | 100 | `declaration-track:d3a5dcef1c1d7bed90619a2942f78319304278d6482fc10b55379bea2cb24095` |
| 10 | `theorem` | [OrthonormalBasis.measurePreserving_measurableEquiv](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variantc17df8648e2e81f5ee2b9d9e5ee7f298fe0a0eeb2beeb14998dd470f67a54b63.lean/declarations/orthonormalbasis-measurepreserving-measurableequiv--732544254c15ce8645757170.md) | 104 | `result-track:732544254c15ce86457571706f8a79b89e700d200b4396b7eabe0b00fe12b6e6` |
| 11 | `theorem` | [OrthonormalBasis.measurePreserving_repr](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variantc17df8648e2e81f5ee2b9d9e5ee7f298fe0a0eeb2beeb14998dd470f67a54b63.lean/declarations/orthonormalbasis-measurepreserving-repr--d4d5c2859ecc7910151652fe.md) | 111 | `result-track:d4d5c2859ecc7910151652fe3e803f3e49d942558abd34b32e61f8058ef7b991` |
| 12 | `theorem` | [OrthonormalBasis.measurePreserving_repr_symm](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variantc17df8648e2e81f5ee2b9d9e5ee7f298fe0a0eeb2beeb14998dd470f67a54b63.lean/declarations/orthonormalbasis-measurepreserving-repr-symm--10ca79871584bfd7005644e7.md) | 114 | `result-track:10ca79871584bfd7005644e7580d58577ddc4976df910660085fd3cad0d537ee` |
| 13 | `theorem` | [EuclideanSpace.volume_preserving_symm_measurableEquiv_toLp](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variantc17df8648e2e81f5ee2b9d9e5ee7f298fe0a0eeb2beeb14998dd470f67a54b63.lean/declarations/euclideanspace-volume-preserving-symm-measurableequiv-tolp--3f5b6369abea5aa982d193ed.md) | 124 | `result-track:3f5b6369abea5aa982d193ed039446f3700c98701ec2bda25c421578a0868d22` |
| 14 | `theorem` | [PiLp.volume_preserving_ofLp](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variantc17df8648e2e81f5ee2b9d9e5ee7f298fe0a0eeb2beeb14998dd470f67a54b63.lean/declarations/pilp-volume-preserving-oflp--a78eeae3557cb06140672b1e.md) | 134 | `result-track:a78eeae3557cb06140672b1e9da142c3ce7f5aef501fa3657e44f39da38a54f1` |
| 15 | `theorem` | [PiLp.volume_preserving_toLp](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variantc17df8648e2e81f5ee2b9d9e5ee7f298fe0a0eeb2beeb14998dd470f67a54b63.lean/declarations/pilp-volume-preserving-tolp--dd8f50bbb84bd795f89eafab.md) | 139 | `result-track:dd8f50bbb84bd795f89eafab89339a515ac34774c1a6e4c7ab739ac67f3fb162` |
| 16 | `lemma` | [volume_euclideanSpace_eq_dirac](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variantc17df8648e2e81f5ee2b9d9e5ee7f298fe0a0eeb2beeb14998dd470f67a54b63.lean/declarations/volume-euclideanspace-eq-dirac--4df71598a40c287d34320de6.md) | 142 | `result-track:4df71598a40c287d34320de6b60f7cc84174d51c6cd0f63c0ed9f7d155c393af` |
| 17 | `theorem` | [measurePreserving](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variantc17df8648e2e81f5ee2b9d9e5ee7f298fe0a0eeb2beeb14998dd470f67a54b63.lean/declarations/measurepreserving--d712d089f02914004b5130c3.md) | 151 | `result-track:d712d089f02914004b5130c3e426d4c7f1bd39ff0a5df183a421feae7e9dead8` |
| 18 | `def` | [volumePreservingSymmMeasurableEquivToLpProdAux](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variantc17df8648e2e81f5ee2b9d9e5ee7f298fe0a0eeb2beeb14998dd470f67a54b63.lean/declarations/volumepreservingsymmmeasurableequivtolpprodaux--bdec5c4c04a0b84aa4c16b12.md) | 170 | `declaration-track:bdec5c4c04a0b84aa4c16b12e697ed53b638e716fc88cd21f4a7499f21224603` |
| 19 | `theorem` | [WithLp.volume_preserving_symm_measurableEquiv_toLp_prod](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variantc17df8648e2e81f5ee2b9d9e5ee7f298fe0a0eeb2beeb14998dd470f67a54b63.lean/declarations/withlp-volume-preserving-symm-measurableequiv-tolp-prod--6180d629fae3938127ffd822.md) | 189 | `result-track:6180d629fae3938127ffd822ae7c158d87b348b6744061eea39b7a7dcb86b442` |
| 20 | `theorem` | [WithLp.volume_preserving_ofLp](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variantc17df8648e2e81f5ee2b9d9e5ee7f298fe0a0eeb2beeb14998dd470f67a54b63.lean/declarations/withlp-volume-preserving-oflp--d026fd333d28d31dca91c6f8.md) | 206 | `result-track:d026fd333d28d31dca91c6f8d8a768cfc1bbc9a04e4e352c06ff4a4218d40270` |
| 21 | `theorem` | [WithLp.volume_preserving_toLp](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variantc17df8648e2e81f5ee2b9d9e5ee7f298fe0a0eeb2beeb14998dd470f67a54b63.lean/declarations/withlp-volume-preserving-tolp--7198639f178ad8ce0779dc99.md) | 211 | `result-track:7198639f178ad8ce0779dc99d2e2af153efcde1fe4f52598959d06919314e052` |
| 22 | `theorem` | [MeasureTheory.volume_eq_of_finrank_eq_one](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variantc17df8648e2e81f5ee2b9d9e5ee7f298fe0a0eeb2beeb14998dd470f67a54b63.lean/declarations/measuretheory-volume-eq-of-finrank-eq-one--c1e6a8a560bf8f5ede0ed250.md) | 217 | `result-track:c1e6a8a560bf8f5ede0ed250c38bcbb67b4eb52fd581fa5c23815bea6b1d7f1b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
