# Verification target: GRWTSK.Analysis.FunctionalAnalysis.AbsConvexOpen.Variant5cc83f38ea8b06e1129c9d483e43ec0a8a6b9a1f63ef64fec32d297dc3d19797

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a1184a651d6f2f99674b95e909a3e1b7b5f6cf47",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/AbsConvexOpen/Variant5cc83f38ea8b06e1129c9d483e43ec0a8a6b9a1f63ef64fec32d297dc3d19797.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/AbsConvexOpen/Variant5cc83f38ea8b06e1129c9d483e43ec0a8a6b9a1f63ef64fec32d297dc3d19797.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/AbsConvexOpen/Variant5cc83f38ea8b06e1129c9d483e43ec0a8a6b9a1f63ef64fec32d297dc3d19797.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a1184a651d6f2f99674b95e909a3e1b7b5f6cf47`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/AbsConvexOpen/Variant5cc83f38ea8b06e1129c9d483e43ec0a8a6b9a1f63ef64fec32d297dc3d19797.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/AbsConvexOpen/Variant5cc83f38ea8b06e1129c9d483e43ec0a8a6b9a1f63ef64fec32d297dc3d19797.lean.json)

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
| 1 | `def` | [AbsConvexOpenSets](../../../../../mathematics/Analysis/FunctionalAnalysis/AbsConvexOpen/Variant5cc83f38ea8b06e1129c9d483e43ec0a8a6b9a1f63ef64fec32d297dc3d19797.lean/declarations/absconvexopensets--14697880afa62522d15b097c.md) | 49 | `declaration-track:14697880afa62522d15b097c232dff34e1e5e4bb386ba2f9bcbfee53f1ca69f7` |
| 2 | `instance` | [AbsConvexOpenSets.instCoeOut](../../../../../mathematics/Analysis/FunctionalAnalysis/AbsConvexOpen/Variant5cc83f38ea8b06e1129c9d483e43ec0a8a6b9a1f63ef64fec32d297dc3d19797.lean/declarations/absconvexopensets-instcoeout--665347a06f2a2568d8b4f8a2.md) | 52 | `declaration-track:665347a06f2a2568d8b4f8a2f2de86481b047b82abea1dd4ebdadbacdc0d147b` |
| 3 | `theorem` | [coe_zero_mem](../../../../../mathematics/Analysis/FunctionalAnalysis/AbsConvexOpen/Variant5cc83f38ea8b06e1129c9d483e43ec0a8a6b9a1f63ef64fec32d297dc3d19797.lean/declarations/coe-zero-mem--75d57f4189f2e8446fde8507.md) | 59 | `result-track:75d57f4189f2e8446fde8507be42ac51807a369e9b671bbd77d6e653df15150d` |
| 4 | `theorem` | [coe_isOpen](../../../../../mathematics/Analysis/FunctionalAnalysis/AbsConvexOpen/Variant5cc83f38ea8b06e1129c9d483e43ec0a8a6b9a1f63ef64fec32d297dc3d19797.lean/declarations/coe-isopen--d61ba9e5b73d1442cb42db40.md) | 62 | `result-track:d61ba9e5b73d1442cb42db40afcb4049ad9493f06646771f0c3196a176684721` |
| 5 | `theorem` | [coe_nhds](../../../../../mathematics/Analysis/FunctionalAnalysis/AbsConvexOpen/Variant5cc83f38ea8b06e1129c9d483e43ec0a8a6b9a1f63ef64fec32d297dc3d19797.lean/declarations/coe-nhds--9f79aeecec7b8be6ac3d0095.md) | 65 | `result-track:9f79aeecec7b8be6ac3d00953a17e499b5faa833f7c6e19b101433c9d62bc466` |
| 6 | `theorem` | [coe_balanced](../../../../../mathematics/Analysis/FunctionalAnalysis/AbsConvexOpen/Variant5cc83f38ea8b06e1129c9d483e43ec0a8a6b9a1f63ef64fec32d297dc3d19797.lean/declarations/coe-balanced--52072133a96b0584e998eb8d.md) | 68 | `result-track:52072133a96b0584e998eb8df16eb76e11eb1e697b1373ff37f3081efde59ecc` |
| 7 | `theorem` | [coe_convex](../../../../../mathematics/Analysis/FunctionalAnalysis/AbsConvexOpen/Variant5cc83f38ea8b06e1129c9d483e43ec0a8a6b9a1f63ef64fec32d297dc3d19797.lean/declarations/coe-convex--0f68cd521a171b2f7f159374.md) | 71 | `result-track:0f68cd521a171b2f7f159374a3c4f724e4e8b296086315207c897e8b8b845296` |
| 8 | `instance` | [AbsConvexOpenSets.instNonempty](../../../../../mathematics/Analysis/FunctionalAnalysis/AbsConvexOpen/Variant5cc83f38ea8b06e1129c9d483e43ec0a8a6b9a1f63ef64fec32d297dc3d19797.lean/declarations/absconvexopensets-instnonempty--fc510b5580e5733339441c07.md) | 76 | `declaration-track:fc510b5580e5733339441c07bf3f9aa9dee4cb1fd79579008b18a13a6efc94ac` |
| 9 | `def` | [gaugeSeminormFamily](../../../../../mathematics/Analysis/FunctionalAnalysis/AbsConvexOpen/Variant5cc83f38ea8b06e1129c9d483e43ec0a8a6b9a1f63ef64fec32d297dc3d19797.lean/declarations/gaugeseminormfamily--b58a3284873daabb83c5a8a9.md) | 93 | `declaration-track:b58a3284873daabb83c5a8a97628885bd7a40040b575bef6a1e10a90b59a3352` |
| 10 | `theorem` | [gaugeSeminormFamily_ball](../../../../../mathematics/Analysis/FunctionalAnalysis/AbsConvexOpen/Variant5cc83f38ea8b06e1129c9d483e43ec0a8a6b9a1f63ef64fec32d297dc3d19797.lean/declarations/gaugeseminormfamily-ball--7944b77643026b72ebd889c2.md) | 98 | `result-track:7944b77643026b72ebd889c2fbacdab8e7fc4a1cb0a1ba9742a501b9a40f188a` |
| 11 | `theorem` | [with_gaugeSeminormFamily](../../../../../mathematics/Analysis/FunctionalAnalysis/AbsConvexOpen/Variant5cc83f38ea8b06e1129c9d483e43ec0a8a6b9a1f63ef64fec32d297dc3d19797.lean/declarations/with-gaugeseminormfamily--c9de576d04131dd80078675d.md) | 110 | `result-track:c9de576d04131dd80078675d48f2a64075e31afe0f4d07f70458f0b50702da6d` |
| 12 | `instance` | [LocallyConvexSpace.toPolynormableSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/AbsConvexOpen/Variant5cc83f38ea8b06e1129c9d483e43ec0a8a6b9a1f63ef64fec32d297dc3d19797.lean/declarations/locallyconvexspace-topolynormablespace--ff96a1e43c6887ca80d66d4d.md) | 134 | `declaration-track:ff96a1e43c6887ca80d66d4d9069fd80d4ca519df7107fce3ea397a597331e26` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
