# Verification target: GRWTSK.Topology.GeneralTopology.Finite.Variante1957d8f113ef961d85d570001ac792217c7da9e4bda5ecac188d976f69066fb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91f3cdc1db6f6bfce3e67411aa09e7d58bdb7543",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Finite/Variante1957d8f113ef961d85d570001ac792217c7da9e4bda5ecac188d976f69066fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Finite/Variante1957d8f113ef961d85d570001ac792217c7da9e4bda5ecac188d976f69066fb.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Finite/Variante1957d8f113ef961d85d570001ac792217c7da9e4bda5ecac188d976f69066fb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91f3cdc1db6f6bfce3e67411aa09e7d58bdb7543`.

Source path: `GRWTSK/Topology/GeneralTopology/Finite/Variante1957d8f113ef961d85d570001ac792217c7da9e4bda5ecac188d976f69066fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Finite/Variante1957d8f113ef961d85d570001ac792217c7da9e4bda5ecac188d976f69066fb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.CWComplex.Classical.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [RelCWComplex.FiniteDimensional.](../../../../../mathematics/Topology/GeneralTopology/Finite/Variante1957d8f113ef961d85d570001ac792217c7da9e4bda5ecac188d976f69066fb.lean/declarations/relcwcomplex-finitedimensional--4e82a419585ca9b070cdf67c.md) | 37 | `declaration-track:4e82a419585ca9b070cdf67c0a78e136bfc5e3f02ab2ac9f2d992a5cacdc6283` |
| 2 | `class` | [RelCWComplex.FiniteType.](../../../../../mathematics/Topology/GeneralTopology/Finite/Variante1957d8f113ef961d85d570001ac792217c7da9e4bda5ecac188d976f69066fb.lean/declarations/relcwcomplex-finitetype--4143350c44ae19d5e693d9f2.md) | 43 | `declaration-track:4143350c44ae19d5e693d9f26dd1e1fa98dc4a5dcc975f939973c7c5ca543159` |
| 3 | `class` | [RelCWComplex.Finite](../../../../../mathematics/Topology/GeneralTopology/Finite/Variante1957d8f113ef961d85d570001ac792217c7da9e4bda5ecac188d976f69066fb.lean/declarations/relcwcomplex-finite--cc14cdcbd9c333e67c1f3b14.md) | 49 | `declaration-track:cc14cdcbd9c333e67c1f3b146eaaac67995c66b874e980d937dac6cff657216f` |
| 4 | `lemma` | [RelCWComplex.finite_of_finiteDimensional_finiteType](../../../../../mathematics/Topology/GeneralTopology/Finite/Variante1957d8f113ef961d85d570001ac792217c7da9e4bda5ecac188d976f69066fb.lean/declarations/relcwcomplex-finite-of-finitedimensional-finitetype--b0c6a8de7e80718b80872171.md) | 54 | `result-track:b0c6a8de7e80718b80872171d8979bcf38a60d0369c7c8bc91cdb119f434187e` |
| 5 | `def` | [RelCWComplex.mkFiniteType.](../../../../../mathematics/Topology/GeneralTopology/Finite/Variante1957d8f113ef961d85d570001ac792217c7da9e4bda5ecac188d976f69066fb.lean/declarations/relcwcomplex-mkfinitetype--436fdaf6887ddf5a8d7903be.md) | 68 | `declaration-track:436fdaf6887ddf5a8d7903bef1b43a8f9bd74e45fdceed89f30f19bcd16cdac6` |
| 6 | `lemma` | [RelCWComplex.finiteType_mkFiniteType.](../../../../../mathematics/Topology/GeneralTopology/Finite/Variante1957d8f113ef961d85d570001ac792217c7da9e4bda5ecac188d976f69066fb.lean/declarations/relcwcomplex-finitetype-mkfinitetype--bc95cd3df1d81835a77d137b.md) | 101 | `result-track:bc95cd3df1d81835a77d137ba4f69f67e9cd1f2600056deab3386d18ceb61257` |
| 7 | `def` | [CWComplex.mkFiniteType.](../../../../../mathematics/Topology/GeneralTopology/Finite/Variante1957d8f113ef961d85d570001ac792217c7da9e4bda5ecac188d976f69066fb.lean/declarations/cwcomplex-mkfinitetype--2437280d8c178584422b1664.md) | 126 | `declaration-track:2437280d8c178584422b1664656875452c6d875e28289f7d55d4fa6ce1e4ab78` |
| 8 | `lemma` | [CWComplex.finiteType_mkFiniteType.](../../../../../mathematics/Topology/GeneralTopology/Finite/Variante1957d8f113ef961d85d570001ac792217c7da9e4bda5ecac188d976f69066fb.lean/declarations/cwcomplex-finitetype-mkfinitetype--916c7947ce67415e0001be2a.md) | 154 | `result-track:916c7947ce67415e0001be2ae8b87862c344de2932d8bb6ee60253c97c37ecc0` |
| 9 | `def` | [RelCWComplex.mkFinite.](../../../../../mathematics/Topology/GeneralTopology/Finite/Variante1957d8f113ef961d85d570001ac792217c7da9e4bda5ecac188d976f69066fb.lean/declarations/relcwcomplex-mkfinite--5f1d3603ed88675559ac572e.md) | 177 | `declaration-track:5f1d3603ed88675559ac572e8a073148efffe7f6f158b6e4b1bbdf11b0ba7026` |
| 10 | `lemma` | [RelCWComplex.finite_mkFinite.](../../../../../mathematics/Topology/GeneralTopology/Finite/Variante1957d8f113ef961d85d570001ac792217c7da9e4bda5ecac188d976f69066fb.lean/declarations/relcwcomplex-finite-mkfinite--7ad4d3f96a49dd904ab54bf5.md) | 226 | `result-track:7ad4d3f96a49dd904ab54bf57f531d550452cf5a284ca88989776675cd449552` |
| 11 | `def` | [CWComplex.mkFinite.](../../../../../mathematics/Topology/GeneralTopology/Finite/Variante1957d8f113ef961d85d570001ac792217c7da9e4bda5ecac188d976f69066fb.lean/declarations/cwcomplex-mkfinite--e0b52224ddaa8b5a38aa44e7.md) | 251 | `declaration-track:e0b52224ddaa8b5a38aa44e7440a69d376cb60599decf7e9d24fc47e1510fd31` |
| 12 | `lemma` | [CWComplex.finite_mkFinite.](../../../../../mathematics/Topology/GeneralTopology/Finite/Variante1957d8f113ef961d85d570001ac792217c7da9e4bda5ecac188d976f69066fb.lean/declarations/cwcomplex-finite-mkfinite--e03ee30a91d237614e2036d1.md) | 278 | `result-track:e03ee30a91d237614e2036d1cc594fb80a4aea89bd19c230e184329faa5bed09` |
| 13 | `lemma` | [RelCWComplex.finite_of_finite_cells](../../../../../mathematics/Topology/GeneralTopology/Finite/Variante1957d8f113ef961d85d570001ac792217c7da9e4bda5ecac188d976f69066fb.lean/declarations/relcwcomplex-finite-of-finite-cells--43eae4cad85797ea9ad4b31c.md) | 302 | `result-track:43eae4cad85797ea9ad4b31ccd7de460bff4f36391291ee356267d6f4f74fcd6` |
| 14 | `lemma` | [RelCWComplex.finite_cells_of_finite](../../../../../mathematics/Topology/GeneralTopology/Finite/Variante1957d8f113ef961d85d570001ac792217c7da9e4bda5ecac188d976f69066fb.lean/declarations/relcwcomplex-finite-cells-of-finite--f28d5842b8b8f40f37f8bc62.md) | 326 | `result-track:f28d5842b8b8f40f37f8bc6230e2f68a2090517074220090177b5714bfe0ee9f` |
| 15 | `lemma` | [RelCWComplex.finite_iff_finite_cells](../../../../../mathematics/Topology/GeneralTopology/Finite/Variante1957d8f113ef961d85d570001ac792217c7da9e4bda5ecac188d976f69066fb.lean/declarations/relcwcomplex-finite-iff-finite-cells--a5e3cfb9224f87043eefa59a.md) | 345 | `result-track:a5e3cfb9224f87043eefa59a82ce0a8cb8102f48b9a0f0c3a1fb1cc9f85e5858` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
