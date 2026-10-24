# Verification target: GRWTSK.Algebra.LinearAlgebra.ProvenanceProjection.Variant3d0bb26f15b6384d8b508a3af224c962384cfb1ae83196eded9a1e798608f860

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3711dd9971d14f4fbc154952618c057feef4811b",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ProvenanceProjection/Variant3d0bb26f15b6384d8b508a3af224c962384cfb1ae83196eded9a1e798608f860.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceProjection/Variant3d0bb26f15b6384d8b508a3af224c962384cfb1ae83196eded9a1e798608f860.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceProjection/Variant3d0bb26f15b6384d8b508a3af224c962384cfb1ae83196eded9a1e798608f860.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3711dd9971d14f4fbc154952618c057feef4811b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ProvenanceProjection/Variant3d0bb26f15b6384d8b508a3af224c962384cfb1ae83196eded9a1e798608f860.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ProvenanceProjection/Variant3d0bb26f15b6384d8b508a3af224c962384cfb1ae83196eded9a1e798608f860.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.PositiveGeometry` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ProvenanceProjector](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceProjection/Variant3d0bb26f15b6384d8b508a3af224c962384cfb1ae83196eded9a1e798608f860.lean/declarations/provenanceprojector--a55dab7080b361b42aa9cef3.md) | 26 | `declaration-track:a55dab7080b361b42aa9cef3a571a84ca400e368559c90a428b91b3125f1a71b` |
| 2 | `def` | [residualMap](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceProjection/Variant3d0bb26f15b6384d8b508a3af224c962384cfb1ae83196eded9a1e798608f860.lean/declarations/residualmap--46b787cc150f6da14dfd823a.md) | 36 | `declaration-track:46b787cc150f6da14dfd823acd3c77da91b92d80b3efd0115fecc89add47ed96` |
| 3 | `theorem` | [residualMap_apply](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceProjection/Variant3d0bb26f15b6384d8b508a3af224c962384cfb1ae83196eded9a1e798608f860.lean/declarations/residualmap-apply--5488846fbfbe39d8b679ee82.md) | 40 | `result-track:5488846fbfbe39d8b679ee82e79cad0453d3c596db98d1520ac87ff2173fdcfa` |
| 4 | `theorem` | [project_add_residual](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceProjection/Variant3d0bb26f15b6384d8b508a3af224c962384cfb1ae83196eded9a1e798608f860.lean/declarations/project-add-residual--7aacf9298966892a569b3e9b.md) | 45 | `result-track:7aacf9298966892a569b3e9b2294e083796fab30dbb08aaa0e4bfc1009c32710` |
| 5 | `theorem` | [project_residual_zero](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceProjection/Variant3d0bb26f15b6384d8b508a3af224c962384cfb1ae83196eded9a1e798608f860.lean/declarations/project-residual-zero--688515ae4588156587fec902.md) | 50 | `result-track:688515ae4588156587fec902924db667ba88872d664596d3a926450ea99025db` |
| 6 | `theorem` | [residual_project_zero](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceProjection/Variant3d0bb26f15b6384d8b508a3af224c962384cfb1ae83196eded9a1e798608f860.lean/declarations/residual-project-zero--77395c392c4048835778c19e.md) | 55 | `result-track:77395c392c4048835778c19eec503ec07bf8405a796589993b76653a03425f0a` |
| 7 | `theorem` | [project_orthogonal_residual](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceProjection/Variant3d0bb26f15b6384d8b508a3af224c962384cfb1ae83196eded9a1e798608f860.lean/declarations/project-orthogonal-residual--efedac20d30a8dc0a388f03e.md) | 60 | `result-track:efedac20d30a8dc0a388f03e34ac9d033fc9ea160d47ba1f3898dd07d51c8bf0` |
| 8 | `theorem` | [residual_orthogonal_project](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceProjection/Variant3d0bb26f15b6384d8b508a3af224c962384cfb1ae83196eded9a1e798608f860.lean/declarations/residual-orthogonal-project--34e9fb3cdb0e87de10addf81.md) | 66 | `result-track:34e9fb3cdb0e87de10addf81b39b3609e2643b36c1a37a69e9618c9ec6207782` |
| 9 | `theorem` | [form_decomposition](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceProjection/Variant3d0bb26f15b6384d8b508a3af224c962384cfb1ae83196eded9a1e798608f860.lean/declarations/form-decomposition--3e5983e6b80dc00b55088bd5.md) | 73 | `result-track:3e5983e6b80dc00b55088bd5421fdd3e5c52c1b05e93efd542dd3ac02845be6c` |
| 10 | `theorem` | [residual_eq_sub_projected](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceProjection/Variant3d0bb26f15b6384d8b508a3af224c962384cfb1ae83196eded9a1e798608f860.lean/declarations/residual-eq-sub-projected--b4c34c010ab64803164cd85c.md) | 85 | `result-track:b4c34c010ab64803164cd85c26264eed16aa3edf8bdf69a2dd81b09aa13a1c8f` |
| 11 | `def` | [projectedForm](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceProjection/Variant3d0bb26f15b6384d8b508a3af224c962384cfb1ae83196eded9a1e798608f860.lean/declarations/projectedform--1d40915b606bfd9d2f40ffad.md) | 91 | `declaration-track:1d40915b606bfd9d2f40ffad235df7b06d89c261559ca0f3a4b60adb61d96b7c` |
| 12 | `def` | [residualForm](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceProjection/Variant3d0bb26f15b6384d8b508a3af224c962384cfb1ae83196eded9a1e798608f860.lean/declarations/residualform--c5b530013cf6edd6a4e5b0d4.md) | 96 | `declaration-track:c5b530013cf6edd6a4e5b0d4574067cb679f86f1972f403f13c98795c5f5cdcc` |
| 13 | `theorem` | [residualForm_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceProjection/Variant3d0bb26f15b6384d8b508a3af224c962384cfb1ae83196eded9a1e798608f860.lean/declarations/residualform-nonnegative--355f673e9431b832c1f647ff.md) | 100 | `result-track:355f673e9431b832c1f647ff001dc4ae9f25f32a1bdd7d8ff838b4fd224fa773` |
| 14 | `theorem` | [projectedForm_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceProjection/Variant3d0bb26f15b6384d8b508a3af224c962384cfb1ae83196eded9a1e798608f860.lean/declarations/projectedform-nonnegative--cda97a2d770d7cbcc3d010f1.md) | 105 | `result-track:cda97a2d770d7cbcc3d010f10848a7ce7181d18609fb61cd14be0b6e571df904` |
| 15 | `theorem` | [quadratic_decomposition](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceProjection/Variant3d0bb26f15b6384d8b508a3af224c962384cfb1ae83196eded9a1e798608f860.lean/declarations/quadratic-decomposition--0d8f85d56a4e49652893b27a.md) | 111 | `result-track:0d8f85d56a4e49652893b27a3632c446363c7dd973b1b0c55c73ba94bce338c3` |
| 16 | `def` | [asResidualization](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceProjection/Variant3d0bb26f15b6384d8b508a3af224c962384cfb1ae83196eded9a1e798608f860.lean/declarations/asresidualization--f08c20ab78bab931edef3bf4.md) | 117 | `declaration-track:f08c20ab78bab931edef3bf4d7fca9d5d6cd64bb0a2417b20b32f6087af80c74` |
| 17 | `theorem` | [asResidualization_residualForm](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceProjection/Variant3d0bb26f15b6384d8b508a3af224c962384cfb1ae83196eded9a1e798608f860.lean/declarations/asresidualization-residualform--13eaf8cee1e1bcea32e9fc99.md) | 121 | `result-track:13eaf8cee1e1bcea32e9fc9991311e6de3bc7e68bcf82357bbf51d2a19bf0bd1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
