# Verification target: GRWTSK.Topology.GeneralTopology.5.Variant5fbbbd16a512b4e8ae89909c9b93a8c22cf52525053438107742753fcdd3869c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "97ae153f5271ffc956d052dbd1fc588027a948a6",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/5/Variant5fbbbd16a512b4e8ae89909c9b93a8c22cf52525053438107742753fcdd3869c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/5/Variant5fbbbd16a512b4e8ae89909c9b93a8c22cf52525053438107742753fcdd3869c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/5/Variant5fbbbd16a512b4e8ae89909c9b93a8c22cf52525053438107742753fcdd3869c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `97ae153f5271ffc956d052dbd1fc588027a948a6`.

Source path: `GRWTSK/Topology/GeneralTopology/5/Variant5fbbbd16a512b4e8ae89909c9b93a8c22cf52525053438107742753fcdd3869c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/5/Variant5fbbbd16a512b4e8ae89909c9b93a8c22cf52525053438107742753fcdd3869c.lean.json)

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
| 1 | `def` | [normalizedGap](../../../../../mathematics/Topology/GeneralTopology/5/Variant5fbbbd16a512b4e8ae89909c9b93a8c22cf52525053438107742753fcdd3869c.lean/declarations/normalizedgap--3bb2601bb4c950153732ac45.md) | 67 | `declaration-track:3bb2601bb4c950153732ac4574e79baee6d6dcc87de0c4c8f52e94e0ca27d305` |
| 2 | `def` | [limitPointSet](../../../../../mathematics/Topology/GeneralTopology/5/Variant5fbbbd16a512b4e8ae89909c9b93a8c22cf52525053438107742753fcdd3869c.lean/declarations/limitpointset--ce29d5054565adbcbcd0d75c.md) | 80 | `declaration-track:ce29d5054565adbcbcd0d75c1f6da1aba72dcbf8c837e8b981909f5f64f53b2c` |
| 3 | `theorem` | [erdos_5](../../../../../mathematics/Topology/GeneralTopology/5/Variant5fbbbd16a512b4e8ae89909c9b93a8c22cf52525053438107742753fcdd3869c.lean/declarations/erdos-5--b2c07819b633169e6b4e7b7b.md) | 92 | `result-track:b2c07819b633169e6b4e7b7b6e9224727b75426108d54d2414c019ef0acc238d` |
| 4 | `theorem` | [erdos_5.variants.limit_point_set](../../../../../mathematics/Topology/GeneralTopology/5/Variant5fbbbd16a512b4e8ae89909c9b93a8c22cf52525053438107742753fcdd3869c.lean/declarations/erdos-5-variants-limit-point-set--6555599d559afb1ce2b3c77f.md) | 104 | `result-track:6555599d559afb1ce2b3c77f217d32f03ee177b6f269f81d37271924b04aacf9` |
| 5 | `theorem` | [erdos_5.variants.westzynthius](../../../../../mathematics/Topology/GeneralTopology/5/Variant5fbbbd16a512b4e8ae89909c9b93a8c22cf52525053438107742753fcdd3869c.lean/declarations/erdos-5-variants-westzynthius--84d17773ef290f26f13fa4b6.md) | 111 | `result-track:84d17773ef290f26f13fa4b63fd512f1b8e19f895efbbb4eb5cac589da29b40d` |
| 6 | `theorem` | [erdos_5.variants.goldston_pintz_yildirim](../../../../../mathematics/Topology/GeneralTopology/5/Variant5fbbbd16a512b4e8ae89909c9b93a8c22cf52525053438107742753fcdd3869c.lean/declarations/erdos-5-variants-goldston-pintz-yildirim--d2a37ece2c426deef73f9aa7.md) | 119 | `result-track:d2a37ece2c426deef73f9aa7fa4b83d33d5926a8531d674f8b2ba9049d62583f` |
| 7 | `theorem` | [erdos_5.variants.erdos_ricci](../../../../../mathematics/Topology/GeneralTopology/5/Variant5fbbbd16a512b4e8ae89909c9b93a8c22cf52525053438107742753fcdd3869c.lean/declarations/erdos-5-variants-erdos-ricci--ca78d930c091047fcf3638a0.md) | 126 | `result-track:ca78d930c091047fcf3638a0d29d48ddc2c55e553196d3bc5836ba27524f5f25` |
| 8 | `theorem` | [erdos_5.variants.hildebrand_maier](../../../../../mathematics/Topology/GeneralTopology/5/Variant5fbbbd16a512b4e8ae89909c9b93a8c22cf52525053438107742753fcdd3869c.lean/declarations/erdos-5-variants-hildebrand-maier--3bdaf1d29f6375f80f208d3e.md) | 133 | `result-track:3bdaf1d29f6375f80f208d3e067b5c5e6c30509a8c754f5a4ea1246854575eb7` |
| 9 | `theorem` | [erdos_5.variants.hildebrand_maier_measure](../../../../../mathematics/Topology/GeneralTopology/5/Variant5fbbbd16a512b4e8ae89909c9b93a8c22cf52525053438107742753fcdd3869c.lean/declarations/erdos-5-variants-hildebrand-maier-measure--6dcade1edfeacea7b50cba57.md) | 141 | `result-track:6dcade1edfeacea7b50cba578321db04a2c2a68125737849efb92195a29aa54c` |
| 10 | `theorem` | [erdos_5.variants.pintz](../../../../../mathematics/Topology/GeneralTopology/5/Variant5fbbbd16a512b4e8ae89909c9b93a8c22cf52525053438107742753fcdd3869c.lean/declarations/erdos-5-variants-pintz--aaccca046ad6e29cf51ff94f.md) | 149 | `result-track:aaccca046ad6e29cf51ff94f0987fd2f389e7e40cd7f3ab0f970cbe9f1ca7b72` |
| 11 | `theorem` | [erdos_5.variants.banks_freiberg_maynard](../../../../../mathematics/Topology/GeneralTopology/5/Variant5fbbbd16a512b4e8ae89909c9b93a8c22cf52525053438107742753fcdd3869c.lean/declarations/erdos-5-variants-banks-freiberg-maynard--23b9d424a3c96e6afd7e74a1.md) | 161 | `result-track:23b9d424a3c96e6afd7e74a1f5b152e3f340cd41d2c19b6517cd8d41e86c4c73` |
| 12 | `theorem` | [erdos_5.variants.banks_freiberg_maynard_measure](../../../../../mathematics/Topology/GeneralTopology/5/Variant5fbbbd16a512b4e8ae89909c9b93a8c22cf52525053438107742753fcdd3869c.lean/declarations/erdos-5-variants-banks-freiberg-maynard-measure--9e48b53307501456c973dd6a.md) | 173 | `result-track:9e48b53307501456c973dd6af436303d120e9e6dad79ed23dd433f09a52df65e` |
| 13 | `theorem` | [erdos_5.variants.merikoski](../../../../../mathematics/Topology/GeneralTopology/5/Variant5fbbbd16a512b4e8ae89909c9b93a8c22cf52525053438107742753fcdd3869c.lean/declarations/erdos-5-variants-merikoski--8eeb6d740709202e4febbd46.md) | 185 | `result-track:8eeb6d740709202e4febbd466c401e987dc71b9142385e012137e33a9e3a3ae3` |
| 14 | `theorem` | [erdos_5.variants.merikoski_measure](../../../../../mathematics/Topology/GeneralTopology/5/Variant5fbbbd16a512b4e8ae89909c9b93a8c22cf52525053438107742753fcdd3869c.lean/declarations/erdos-5-variants-merikoski-measure--3c102de2414736bf989cb520.md) | 195 | `result-track:3c102de2414736bf989cb520fa92482cb517d6e4c21c39c2f30e3654310d1d2d` |
| 15 | `theorem` | [erdos_5.variants.merikoski_bounded_gaps](../../../../../mathematics/Topology/GeneralTopology/5/Variant5fbbbd16a512b4e8ae89909c9b93a8c22cf52525053438107742753fcdd3869c.lean/declarations/erdos-5-variants-merikoski-bounded-gaps--29d017f0b8d7eb17c85a7c0d.md) | 206 | `result-track:29d017f0b8d7eb17c85a7c0d334fe4a2d64c140f4509db8ab2c73ea4d5578036` |
| 16 | `theorem` | [erdos_5.variants.dense](../../../../../mathematics/Topology/GeneralTopology/5/Variant5fbbbd16a512b4e8ae89909c9b93a8c22cf52525053438107742753fcdd3869c.lean/declarations/erdos-5-variants-dense--2c9dd0d8f0c10a1b27efb631.md) | 215 | `result-track:2c9dd0d8f0c10a1b27efb631fc6f16aed5aba63c43bb626d6d9f9a437f8f8e13` |
| 17 | `theorem` | [mem_limitPointSet_iff](../../../../../mathematics/Topology/GeneralTopology/5/Variant5fbbbd16a512b4e8ae89909c9b93a8c22cf52525053438107742753fcdd3869c.lean/declarations/mem-limitpointset-iff--63c35107fe1356c9dadcceee.md) | 223 | `result-track:63c35107fe1356c9dadcceeeb720e1330d981f9ad264b5a3be829fc315a772c6` |
| 18 | `theorem` | [normalizedGap_nonneg](../../../../../mathematics/Topology/GeneralTopology/5/Variant5fbbbd16a512b4e8ae89909c9b93a8c22cf52525053438107742753fcdd3869c.lean/declarations/normalizedgap-nonneg--559f63688a462b09674762be.md) | 229 | `result-track:559f63688a462b09674762bec925236611da0c0d502048ee1df6a0e6f40e2cc3` |
| 19 | `theorem` | [limitPointSet_subset_Ici](../../../../../mathematics/Topology/GeneralTopology/5/Variant5fbbbd16a512b4e8ae89909c9b93a8c22cf52525053438107742753fcdd3869c.lean/declarations/limitpointset-subset-ici--aac21f93f64ed2d57bf58456.md) | 234 | `result-track:aac21f93f64ed2d57bf584568732bf0c8c8ac60018da4b894fcbae99a72fa8f8` |
| 20 | `theorem` | [erdos_5_iff_limit_point_set](../../../../../mathematics/Topology/GeneralTopology/5/Variant5fbbbd16a512b4e8ae89909c9b93a8c22cf52525053438107742753fcdd3869c.lean/declarations/erdos-5-iff-limit-point-set--66559fcc1fdca205617db671.md) | 245 | `result-track:66559fcc1fdca205617db6715fe2a7da7247d22b1f1cfe2a6df37439f7f182bd` |
| 21 | `theorem` | [isClosed_limitPointSet](../../../../../mathematics/Topology/GeneralTopology/5/Variant5fbbbd16a512b4e8ae89909c9b93a8c22cf52525053438107742753fcdd3869c.lean/declarations/isclosed-limitpointset--50127a5b5cdfef8f0d560b29.md) | 255 | `result-track:50127a5b5cdfef8f0d560b29eb979dbec761e40e66b67b8c72c6a58837e630c4` |
| 22 | `theorem` | [dense_iff_limit_point_set](../../../../../mathematics/Topology/GeneralTopology/5/Variant5fbbbd16a512b4e8ae89909c9b93a8c22cf52525053438107742753fcdd3869c.lean/declarations/dense-iff-limit-point-set--0840f7024666c026dc327882.md) | 264 | `result-track:0840f7024666c026dc327882b4b73eb82549c904e848692e1644bb447bea5b26` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
