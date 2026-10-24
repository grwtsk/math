# Verification target: GRWTSK.Topology.GeneralTopology.Finite.Variantf2018cbd128ef90ee01cf93f2084d8ea6b78b9f12736a21449fc57785d16153c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d3d5b6888c90ebea105fa5b88146ad7291d872d",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Finite/Variantf2018cbd128ef90ee01cf93f2084d8ea6b78b9f12736a21449fc57785d16153c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Finite/Variantf2018cbd128ef90ee01cf93f2084d8ea6b78b9f12736a21449fc57785d16153c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Finite/Variantf2018cbd128ef90ee01cf93f2084d8ea6b78b9f12736a21449fc57785d16153c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d3d5b6888c90ebea105fa5b88146ad7291d872d`.

Source path: `GRWTSK/Topology/GeneralTopology/Finite/Variantf2018cbd128ef90ee01cf93f2084d8ea6b78b9f12736a21449fc57785d16153c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Finite/Variantf2018cbd128ef90ee01cf93f2084d8ea6b78b9f12736a21449fc57785d16153c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.CWComplex.Classical.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [RelCWComplex.FiniteDimensional.](../../../../../mathematics/Topology/GeneralTopology/Finite/Variantf2018cbd128ef90ee01cf93f2084d8ea6b78b9f12736a21449fc57785d16153c.lean/declarations/relcwcomplex-finitedimensional--e68d7c57c1f91f56f009bae8.md) | 45 | `declaration-track:e68d7c57c1f91f56f009bae8a532f3bc2b8e8642edb15115454ffd4874089a36` |
| 2 | `class` | [RelCWComplex.FiniteType.](../../../../../mathematics/Topology/GeneralTopology/Finite/Variantf2018cbd128ef90ee01cf93f2084d8ea6b78b9f12736a21449fc57785d16153c.lean/declarations/relcwcomplex-finitetype--509dd5abe4a555e3b19a5216.md) | 51 | `declaration-track:509dd5abe4a555e3b19a5216fe8bd8f4004bd0745dcc1a9e1761a06762d78566` |
| 3 | `class` | [RelCWComplex.Finite](../../../../../mathematics/Topology/GeneralTopology/Finite/Variantf2018cbd128ef90ee01cf93f2084d8ea6b78b9f12736a21449fc57785d16153c.lean/declarations/relcwcomplex-finite--4e167af35a00f3adb67dafec.md) | 57 | `declaration-track:4e167af35a00f3adb67dafecd1b7884277cf09e12a08814e1b3ad13bd4b069e5` |
| 4 | `lemma` | [RelCWComplex.finite_of_finiteDimensional_finiteType](../../../../../mathematics/Topology/GeneralTopology/Finite/Variantf2018cbd128ef90ee01cf93f2084d8ea6b78b9f12736a21449fc57785d16153c.lean/declarations/relcwcomplex-finite-of-finitedimensional-finitetype--aa518a4bec2120901971fbc2.md) | 62 | `result-track:aa518a4bec2120901971fbc26fc29da5db30a14e94997e276376cf7960af6309` |
| 5 | `def` | [RelCWComplex.mkFiniteType.](../../../../../mathematics/Topology/GeneralTopology/Finite/Variantf2018cbd128ef90ee01cf93f2084d8ea6b78b9f12736a21449fc57785d16153c.lean/declarations/relcwcomplex-mkfinitetype--0e0d7c70bd2673e89d8ef469.md) | 76 | `declaration-track:0e0d7c70bd2673e89d8ef4694877530c2f5107b6000720851cf187fb48fbed89` |
| 6 | `lemma` | [RelCWComplex.finiteType_mkFiniteType.](../../../../../mathematics/Topology/GeneralTopology/Finite/Variantf2018cbd128ef90ee01cf93f2084d8ea6b78b9f12736a21449fc57785d16153c.lean/declarations/relcwcomplex-finitetype-mkfinitetype--ada9b64e580d3d3fe9952aa6.md) | 109 | `result-track:ada9b64e580d3d3fe9952aa67b40eaf77f45c228281fb8dea26eb6dcb7740ce8` |
| 7 | `def` | [CWComplex.mkFiniteType.](../../../../../mathematics/Topology/GeneralTopology/Finite/Variantf2018cbd128ef90ee01cf93f2084d8ea6b78b9f12736a21449fc57785d16153c.lean/declarations/cwcomplex-mkfinitetype--4347f6c142c238e49a713feb.md) | 134 | `declaration-track:4347f6c142c238e49a713feb27d628383e0d0962d01ee50d82486536a1446c39` |
| 8 | `lemma` | [CWComplex.finiteType_mkFiniteType.](../../../../../mathematics/Topology/GeneralTopology/Finite/Variantf2018cbd128ef90ee01cf93f2084d8ea6b78b9f12736a21449fc57785d16153c.lean/declarations/cwcomplex-finitetype-mkfinitetype--5bb985432d723046df60a0ec.md) | 162 | `result-track:5bb985432d723046df60a0ecf3c1b8a46414558037a64671cd3983d06b1f300f` |
| 9 | `def` | [RelCWComplex.mkFinite.](../../../../../mathematics/Topology/GeneralTopology/Finite/Variantf2018cbd128ef90ee01cf93f2084d8ea6b78b9f12736a21449fc57785d16153c.lean/declarations/relcwcomplex-mkfinite--9f9362cd041fc755a6dc7594.md) | 185 | `declaration-track:9f9362cd041fc755a6dc759495340dcd691ccc9148b4dbf1985b612eb7075e55` |
| 10 | `lemma` | [RelCWComplex.finite_mkFinite.](../../../../../mathematics/Topology/GeneralTopology/Finite/Variantf2018cbd128ef90ee01cf93f2084d8ea6b78b9f12736a21449fc57785d16153c.lean/declarations/relcwcomplex-finite-mkfinite--4db30c17b0a53efd27ffcfcb.md) | 234 | `result-track:4db30c17b0a53efd27ffcfcb50dc392e2a69644d412975d5b37ae051c77359c8` |
| 11 | `def` | [CWComplex.mkFinite.](../../../../../mathematics/Topology/GeneralTopology/Finite/Variantf2018cbd128ef90ee01cf93f2084d8ea6b78b9f12736a21449fc57785d16153c.lean/declarations/cwcomplex-mkfinite--38ced449e024841ddc0c3bac.md) | 259 | `declaration-track:38ced449e024841ddc0c3bac982caf70deab5f8587ca3c1e6ecfe0387f38bc7e` |
| 12 | `lemma` | [CWComplex.finite_mkFinite.](../../../../../mathematics/Topology/GeneralTopology/Finite/Variantf2018cbd128ef90ee01cf93f2084d8ea6b78b9f12736a21449fc57785d16153c.lean/declarations/cwcomplex-finite-mkfinite--2b9403b2625389636cbdcf0d.md) | 286 | `result-track:2b9403b2625389636cbdcf0d8af0b2b289f231fe369142ec1c080752a74c662a` |
| 13 | `lemma` | [RelCWComplex.finite_of_finite_cells](../../../../../mathematics/Topology/GeneralTopology/Finite/Variantf2018cbd128ef90ee01cf93f2084d8ea6b78b9f12736a21449fc57785d16153c.lean/declarations/relcwcomplex-finite-of-finite-cells--f54cf9cfb1f61e4395578ca3.md) | 310 | `result-track:f54cf9cfb1f61e4395578ca3f31323d10dd4aa05353cbc9c102e80a61a886655` |
| 14 | `lemma` | [RelCWComplex.finite_cells_of_finite](../../../../../mathematics/Topology/GeneralTopology/Finite/Variantf2018cbd128ef90ee01cf93f2084d8ea6b78b9f12736a21449fc57785d16153c.lean/declarations/relcwcomplex-finite-cells-of-finite--9a5fdb1edd2844e4777b5604.md) | 334 | `result-track:9a5fdb1edd2844e4777b56040ad7615476e3b25dbcc7a96eff905a627ad3863f` |
| 15 | `lemma` | [RelCWComplex.finite_iff_finite_cells](../../../../../mathematics/Topology/GeneralTopology/Finite/Variantf2018cbd128ef90ee01cf93f2084d8ea6b78b9f12736a21449fc57785d16153c.lean/declarations/relcwcomplex-finite-iff-finite-cells--f69ae1ff02f3fbe389d4e66c.md) | 353 | `result-track:f69ae1ff02f3fbe389d4e66c35ab08b9c8b717a191835bbb5b89ceb4d20f0488` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
