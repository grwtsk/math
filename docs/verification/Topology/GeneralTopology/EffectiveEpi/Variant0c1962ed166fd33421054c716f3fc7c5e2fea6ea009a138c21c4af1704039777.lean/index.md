# Verification target: GRWTSK.Topology.GeneralTopology.EffectiveEpi.Variant0c1962ed166fd33421054c716f3fc7c5e2fea6ea009a138c21c4af1704039777

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c575bb89fabbe2032cf5cf75dd5066f1fd22d2e",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/EffectiveEpi/Variant0c1962ed166fd33421054c716f3fc7c5e2fea6ea009a138c21c4af1704039777.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant0c1962ed166fd33421054c716f3fc7c5e2fea6ea009a138c21c4af1704039777.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant0c1962ed166fd33421054c716f3fc7c5e2fea6ea009a138c21c4af1704039777.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c575bb89fabbe2032cf5cf75dd5066f1fd22d2e`.

Source path: `GRWTSK/Topology/GeneralTopology/EffectiveEpi/Variant0c1962ed166fd33421054c716f3fc7c5e2fea6ea009a138c21c4af1704039777.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/EffectiveEpi/Variant0c1962ed166fd33421054c716f3fc7c5e2fea6ea009a138c21c4af1704039777.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Coherent` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.CompHaus.Limits` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [relation](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant0c1962ed166fd33421054c716f3fc7c5e2fea6ea009a138c21c4af1704039777.lean/declarations/relation--7f29ef086d8362a795a4ad08.md) | 48 | `declaration-track:7f29ef086d8362a795a4ad0871348bd637faea58715ac7405d36f0efe8723645` |
| 2 | `def` | [ιFun](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant0c1962ed166fd33421054c716f3fc7c5e2fea6ea009a138c21c4af1704039777.lean/declarations/fun--5b7c4c5a14f599249d4d47c0.md) | 72 | `declaration-track:5b7c4c5a14f599249d4d47c04ee01da9246c5dd6e3002fdd97b09d9a85e0c7b3` |
| 3 | `lemma` | [ιFun_continuous](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant0c1962ed166fd33421054c716f3fc7c5e2fea6ea009a138c21c4af1704039777.lean/declarations/fun-continuous--d94c8cfb64046fc97b715235.md) | 80 | `result-track:d94c8cfb64046fc97b7152356185e9353b583a8b5b7b9170a1b124685d34986d` |
| 4 | `lemma` | [ιFun_injective](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant0c1962ed166fd33421054c716f3fc7c5e2fea6ea009a138c21c4af1704039777.lean/declarations/fun-injective--581f7d5a37d2423acc290203.md) | 86 | `result-track:581f7d5a37d2423acc29020373eaaa495610f3194a89835aa14ec6d47e65321b` |
| 5 | `def` | [QB](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant0c1962ed166fd33421054c716f3fc7c5e2fea6ea009a138c21c4af1704039777.lean/declarations/qb--e3f5e4a687c80d07692c1198.md) | 95 | `declaration-track:e3f5e4a687c80d07692c11984f3ab933e307e5542eb6f270c602b8d4a1aebe8b` |
| 6 | `def` | [ιHom](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant0c1962ed166fd33421054c716f3fc7c5e2fea6ea009a138c21c4af1704039777.lean/declarations/hom--7bc9a8cfeb1046bc961e58f9.md) | 101 | `declaration-track:7bc9a8cfeb1046bc961e58f9b3a7fa05a57e30cf616459155df8fb9dc5282492` |
| 7 | `def` | [ι](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant0c1962ed166fd33421054c716f3fc7c5e2fea6ea009a138c21c4af1704039777.lean/declarations/anonymous--2fdb964416f03dac0107f0e3.md) | 107 | `declaration-track:2fdb964416f03dac0107f0e3f457b9a6234eeffe446daa7588d16fe0e9071676` |
| 8 | `def` | [π'](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant0c1962ed166fd33421054c716f3fc7c5e2fea6ea009a138c21c4af1704039777.lean/declarations/anonymous--d2a12a412e621bf639d85bd7.md) | 119 | `declaration-track:d2a12a412e621bf639d85bd77ce49cd40525510523cba0c95db2466eb6cdb0ec` |
| 9 | `def` | [structAux](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant0c1962ed166fd33421054c716f3fc7c5e2fea6ea009a138c21c4af1704039777.lean/declarations/structaux--70de932508acd57272ed5908.md) | 129 | `declaration-track:70de932508acd57272ed59087bdf0356907f73f312cb8dd9b86e681462f6896c` |
| 10 | `lemma` | [π'_comp_ι_hom](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant0c1962ed166fd33421054c716f3fc7c5e2fea6ea009a138c21c4af1704039777.lean/declarations/comp-hom--bad6d9a7d7a653ae95bea0aa.md) | 155 | `result-track:bad6d9a7d7a653ae95bea0aa023ec0c6561c2216029982184c9486b701070950` |
| 11 | `lemma` | [π_comp_ι_inv](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant0c1962ed166fd33421054c716f3fc7c5e2fea6ea009a138c21c4af1704039777.lean/declarations/comp-inv--a7f44c94e3b65c24d8885701.md) | 158 | `result-track:a7f44c94e3b65c24d88857011c915c6b868e029a1c01b1ca11d7b4f63dadd307` |
| 12 | `def` | [struct](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant0c1962ed166fd33421054c716f3fc7c5e2fea6ea009a138c21c4af1704039777.lean/declarations/struct--322bca458c2b3f8addfe892f.md) | 168 | `declaration-track:322bca458c2b3f8addfe892fdd604544b34830a700e0a5f0738d42e55e468377` |
| 13 | `theorem` | [effectiveEpiFamily_of_jointly_surjective](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant0c1962ed166fd33421054c716f3fc7c5e2fea6ea009a138c21c4af1704039777.lean/declarations/effectiveepifamily-of-jointly-surjective--bb4b95c48731a14150b17c7c.md) | 186 | `result-track:bb4b95c48731a14150b17c7cf9fe514580145575a29a4c7a5446fab2aad1310f` |
| 14 | `theorem` | [effectiveEpiFamily_tfae](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant0c1962ed166fd33421054c716f3fc7c5e2fea6ea009a138c21c4af1704039777.lean/declarations/effectiveepifamily-tfae--bdef4f9697ea62d5fcf950f3.md) | 196 | `result-track:bdef4f9697ea62d5fcf950f34dadab8da2e36806cb1335fde84ce11c19a3dce7` |
| 15 | `instance` | [precoherent](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant0c1962ed166fd33421054c716f3fc7c5e2fea6ea009a138c21c4af1704039777.lean/declarations/precoherent--6a7388f8580b0d9080011256.md) | 229 | `declaration-track:6a7388f8580b0d9080011256cfd4ea2c837ac632cd7bcf343af5a49b252a86a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
