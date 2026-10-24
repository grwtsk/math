# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.SetLike.Variant0d92381c42d33d11386bd7ddfff32eb26fca79cb590caa0c769ee6cfe03f2211

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9daaede62a61697196840d30385a8155d8e59fb",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetLike/Variant0d92381c42d33d11386bd7ddfff32eb26fca79cb590caa0c769ee6cfe03f2211.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetLike/Variant0d92381c42d33d11386bd7ddfff32eb26fca79cb590caa0c769ee6cfe03f2211.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetLike/Variant0d92381c42d33d11386bd7ddfff32eb26fca79cb590caa0c769ee6cfe03f2211.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9daaede62a61697196840d30385a8155d8e59fb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetLike/Variant0d92381c42d33d11386bd7ddfff32eb26fca79cb590caa0c769ee6cfe03f2211.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetLike/Variant0d92381c42d33d11386bd7ddfff32eb26fca79cb590caa0c769ee6cfe03f2211.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.CompleteSublattice` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [ext_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetLike/Variant0d92381c42d33d11386bd7ddfff32eb26fca79cb590caa0c769ee6cfe03f2211.lean/declarations/ext-mem--55d1d5e7b8ad5fd8808a0b2a.md) | 22 | `result-track:55d1d5e7b8ad5fd8808a0b2a7ddb7627716fa1b89c1ef231a75a3de1508a5af2` |
| 2 | `lemma` | [mem_subtype](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetLike/Variant0d92381c42d33d11386bd7ddfff32eb26fca79cb590caa0c769ee6cfe03f2211.lean/declarations/mem-subtype--c80d2a47c86364d1db816952.md) | 24 | `result-track:c80d2a47c86364d1db816952fb6af967d5a05dc457661364dcb40a77c469f49b` |
| 3 | `lemma` | [setLike_mem_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetLike/Variant0d92381c42d33d11386bd7ddfff32eb26fca79cb590caa0c769ee6cfe03f2211.lean/declarations/setlike-mem-inf--2bafbb969ad183ed5713836b.md) | 26 | `result-track:2bafbb969ad183ed5713836bafb4078d444072ad98bcdda0546e510c7de866cb` |
| 4 | `lemma` | [setLike_mem_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetLike/Variant0d92381c42d33d11386bd7ddfff32eb26fca79cb590caa0c769ee6cfe03f2211.lean/declarations/setlike-mem-sup--fe3015b306335e567af8f258.md) | 27 | `result-track:fe3015b306335e567af8f25868d29c11b68c6f51cd94458ca815a6720a6c3e62` |
| 5 | `lemma` | [setLike_mem_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetLike/Variant0d92381c42d33d11386bd7ddfff32eb26fca79cb590caa0c769ee6cfe03f2211.lean/declarations/setlike-mem-coe--462bb0a0b2bdba308e60efe9.md) | 29 | `result-track:462bb0a0b2bdba308e60efe9bfac443d1e0c4f1bcd36627d131358ad9ac08cff` |
| 6 | `lemma` | [setLike_mem_mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetLike/Variant0d92381c42d33d11386bd7ddfff32eb26fca79cb590caa0c769ee6cfe03f2211.lean/declarations/setlike-mem-mk--10b5a9f1ea72d9466a8d29b1.md) | 32 | `result-track:10b5a9f1ea72d9466a8d29b10d68cf63ca08fdfbd802ad915e1816f055a44c93` |
| 7 | `lemma` | [ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetLike/Variant0d92381c42d33d11386bd7ddfff32eb26fca79cb590caa0c769ee6cfe03f2211.lean/declarations/ext--dc6964062cff95f5472d20b7.md) | 42 | `result-track:dc6964062cff95f5472d20b7339851c92b9596d473736698757dadbbfff11d16` |
| 8 | `lemma` | [mem_subtype](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetLike/Variant0d92381c42d33d11386bd7ddfff32eb26fca79cb590caa0c769ee6cfe03f2211.lean/declarations/mem-subtype--34eba155d221ee1dd18bbc78.md) | 44 | `result-track:34eba155d221ee1dd18bbc782c410afcc8e1838d99a7579584fed56beba41143` |
| 9 | `lemma` | [mem_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetLike/Variant0d92381c42d33d11386bd7ddfff32eb26fca79cb590caa0c769ee6cfe03f2211.lean/declarations/mem-inf--a6ec80cc0654dd8e6270a666.md) | 46 | `result-track:a6ec80cc0654dd8e6270a666d96eb5ada0c493180f9ac143022ee1429e0e16f5` |
| 10 | `lemma` | [mem_sInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetLike/Variant0d92381c42d33d11386bd7ddfff32eb26fca79cb590caa0c769ee6cfe03f2211.lean/declarations/mem-sinf--7c30798d8a5ac59a923a2028.md) | 47 | `result-track:7c30798d8a5ac59a923a2028ed42de0b10963dceed40081cfbae37b99034dc5b` |
| 11 | `lemma` | [mem_iInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetLike/Variant0d92381c42d33d11386bd7ddfff32eb26fca79cb590caa0c769ee6cfe03f2211.lean/declarations/mem-iinf--c7f278dca0616c0c8741da5b.md) | 48 | `result-track:c7f278dca0616c0c8741da5ba65cc2335b64278de02ce8ea29721e077113fba4` |
| 12 | `lemma` | [mem_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetLike/Variant0d92381c42d33d11386bd7ddfff32eb26fca79cb590caa0c769ee6cfe03f2211.lean/declarations/mem-top--e1c4216f81ac06025290ffaf.md) | 49 | `result-track:e1c4216f81ac06025290ffafb3ee96552691561ab1d67ce563787c56e9a2fa33` |
| 13 | `lemma` | [mem_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetLike/Variant0d92381c42d33d11386bd7ddfff32eb26fca79cb590caa0c769ee6cfe03f2211.lean/declarations/mem-sup--1af12cc0cbcab4689a5e56aa.md) | 51 | `result-track:1af12cc0cbcab4689a5e56aa8a27df117fd9d047f11a268934af226675de21f5` |
| 14 | `lemma` | [mem_sSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetLike/Variant0d92381c42d33d11386bd7ddfff32eb26fca79cb590caa0c769ee6cfe03f2211.lean/declarations/mem-ssup--9ab895b35576d95b6974ad1b.md) | 52 | `result-track:9ab895b35576d95b6974ad1bb4196de35b17509e36be40e432997d98d2253039` |
| 15 | `lemma` | [mem_iSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetLike/Variant0d92381c42d33d11386bd7ddfff32eb26fca79cb590caa0c769ee6cfe03f2211.lean/declarations/mem-isup--c8597a8dae7598c7e90480ff.md) | 53 | `result-track:c8597a8dae7598c7e90480ffd0e7bee07860b7dc61c1944e717e6e9560759795` |
| 16 | `lemma` | [notMem_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetLike/Variant0d92381c42d33d11386bd7ddfff32eb26fca79cb590caa0c769ee6cfe03f2211.lean/declarations/notmem-bot--1b8a3f0ceb367fcdca7f2e7a.md) | 54 | `result-track:1b8a3f0ceb367fcdca7f2e7a97202ea74110beb464fc1df60ddbd7e14cd3865c` |
| 17 | `lemma` | [mem_mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetLike/Variant0d92381c42d33d11386bd7ddfff32eb26fca79cb590caa0c769ee6cfe03f2211.lean/declarations/mem-mk--d8b4cfa6aaafdcdd984b8b71.md) | 59 | `result-track:d8b4cfa6aaafdcdd984b8b714cf82263a45534cb7b76478cf08ab8b2173e4722` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
