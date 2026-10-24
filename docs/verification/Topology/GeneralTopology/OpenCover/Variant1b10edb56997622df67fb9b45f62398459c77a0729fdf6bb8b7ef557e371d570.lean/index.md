# Verification target: GRWTSK.Topology.GeneralTopology.OpenCover.Variant1b10edb56997622df67fb9b45f62398459c77a0729fdf6bb8b7ef557e371d570

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eff04e7dfd310c883ae65a4a0528a6ccce48105a",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/OpenCover/Variant1b10edb56997622df67fb9b45f62398459c77a0729fdf6bb8b7ef557e371d570.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/OpenCover/Variant1b10edb56997622df67fb9b45f62398459c77a0729fdf6bb8b7ef557e371d570.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/OpenCover/Variant1b10edb56997622df67fb9b45f62398459c77a0729fdf6bb8b7ef557e371d570.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eff04e7dfd310c883ae65a4a0528a6ccce48105a`.

Source path: `GRWTSK/Topology/GeneralTopology/OpenCover/Variant1b10edb56997622df67fb9b45f62398459c77a0729fdf6bb8b7ef557e371d570.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/OpenCover/Variant1b10edb56997622df67fb9b45f62398459c77a0729fdf6bb8b7ef557e371d570.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Sets.Opens` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsOpenCover](../../../../../mathematics/Topology/GeneralTopology/OpenCover/Variant1b10edb56997622df67fb9b45f62398459c77a0729fdf6bb8b7ef557e371d570.lean/declarations/isopencover--1eafac3567419751b001959a.md) | 22 | `declaration-track:1eafac3567419751b001959a961e7b4f0bb416f77d51aff954fcef50d4bb1c6d` |
| 2 | `lemma` | [mk](../../../../../mathematics/Topology/GeneralTopology/OpenCover/Variant1b10edb56997622df67fb9b45f62398459c77a0729fdf6bb8b7ef557e371d570.lean/declarations/mk--bf465ddad6393f75d7466ce5.md) | 30 | `result-track:bf465ddad6393f75d7466ce5081a0459aaa94d70493a9c2c0979686cb8f9eeab` |
| 3 | `lemma` | [of_sets](../../../../../mathematics/Topology/GeneralTopology/OpenCover/Variant1b10edb56997622df67fb9b45f62398459c77a0729fdf6bb8b7ef557e371d570.lean/declarations/of-sets--0044c250b7ea5e7ae45b1563.md) | 32 | `result-track:0044c250b7ea5e7ae45b1563a4f4d7a1351d41a63a0a889c7dda7ae4b9cb88fa` |
| 4 | `lemma` | [iSup_eq_top](../../../../../mathematics/Topology/GeneralTopology/OpenCover/Variant1b10edb56997622df67fb9b45f62398459c77a0729fdf6bb8b7ef557e371d570.lean/declarations/isup-eq-top--bc652ecfcd80e026fda245bc.md) | 36 | `result-track:bc652ecfcd80e026fda245bc7b5b8fa448da98043c541027e4616b4e2c6cb3f9` |
| 5 | `lemma` | [iSup_set_eq_univ](../../../../../mathematics/Topology/GeneralTopology/OpenCover/Variant1b10edb56997622df67fb9b45f62398459c77a0729fdf6bb8b7ef557e371d570.lean/declarations/isup-set-eq-univ--06fab5e016c69be38ebea92e.md) | 38 | `result-track:06fab5e016c69be38ebea92ebd289e1be6f9cd9bc28baa9e298745bbd00668e3` |
| 6 | `lemma` | [comap](../../../../../mathematics/Topology/GeneralTopology/OpenCover/Variant1b10edb56997622df67fb9b45f62398459c77a0729fdf6bb8b7ef557e371d570.lean/declarations/comap--468ef47a507024381f20c925.md) | 43 | `result-track:468ef47a507024381f20c9254f4659547e562d56a0e124c69cf44d7f407eab21` |
| 7 | `lemma` | [exists_mem](../../../../../mathematics/Topology/GeneralTopology/OpenCover/Variant1b10edb56997622df67fb9b45f62398459c77a0729fdf6bb8b7ef557e371d570.lean/declarations/exists-mem--0a64fb9777878936118edf4b.md) | 46 | `result-track:0a64fb9777878936118edf4bbf43c6ff29c7a96ffaa5713e868b4c5b9f0c13c2` |
| 8 | `lemma` | [exists_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/OpenCover/Variant1b10edb56997622df67fb9b45f62398459c77a0729fdf6bb8b7ef557e371d570.lean/declarations/exists-mem-nhds--a385a30f20eda2f45dcbb920.md) | 49 | `result-track:a385a30f20eda2f45dcbb920969a74c946d32c32f093e332500f4eca83b1cea9` |
| 9 | `lemma` | [iUnion_inter](../../../../../mathematics/Topology/GeneralTopology/OpenCover/Variant1b10edb56997622df67fb9b45f62398459c77a0729fdf6bb8b7ef557e371d570.lean/declarations/iunion-inter--cdb30a6ff2edef7553ccc5de.md) | 52 | `result-track:cdb30a6ff2edef7553ccc5de43aefc15a5064beb05467d8514c5833c2abdb98b` |
| 10 | `lemma` | [isTopologicalBasis](../../../../../mathematics/Topology/GeneralTopology/OpenCover/Variant1b10edb56997622df67fb9b45f62398459c77a0729fdf6bb8b7ef557e371d570.lean/declarations/istopologicalbasis--c2e4973a1a822005906e19e0.md) | 56 | `result-track:c2e4973a1a822005906e19e01f223091267accdb8c86dea368b691f082d749a2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
