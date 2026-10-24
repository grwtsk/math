# Verification target: GRWTSK.Algebra.LinearAlgebra.Even.Variant198b54f38d0c1fc6f7cf2859d057ea4704a85fcb30afb53a4aa4afd2188f9cb7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0a5d28e83a5dab6edde54662b803acfbeba4333",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Even/Variant198b54f38d0c1fc6f7cf2859d057ea4704a85fcb30afb53a4aa4afd2188f9cb7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant198b54f38d0c1fc6f7cf2859d057ea4704a85fcb30afb53a4aa4afd2188f9cb7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant198b54f38d0c1fc6f7cf2859d057ea4704a85fcb30afb53a4aa4afd2188f9cb7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0a5d28e83a5dab6edde54662b803acfbeba4333`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Even/Variant198b54f38d0c1fc6f7cf2859d057ea4704a85fcb30afb53a4aa4afd2188f9cb7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Even/Variant198b54f38d0c1fc6f7cf2859d057ea4704a85fcb30afb53a4aa4afd2188f9cb7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.CliffordAlgebra.Fold` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.CliffordAlgebra.Grading` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [even](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant198b54f38d0c1fc6f7cf2859d057ea4704a85fcb30afb53a4aa4afd2188f9cb7.lean/declarations/even--4c0ef0e5baf8094691285867.md) | 64 | `declaration-track:4c0ef0e5baf809469128586787655a1d09f1ba65c30ab4cd1ff3d9c58ea142ae` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant198b54f38d0c1fc6f7cf2859d057ea4704a85fcb30afb53a4aa4afd2188f9cb7.lean/declarations/instance--f923e0eaa5ce8ad204bfcb3a.md) | 70 | `declaration-track:f923e0eaa5ce8ad204bfcb3a530e7e253f6d37615f17adb5cd77d7ee65e4df6e` |
| 3 | `theorem` | [even_toSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant198b54f38d0c1fc6f7cf2859d057ea4704a85fcb30afb53a4aa4afd2188f9cb7.lean/declarations/even-tosubmodule--1ffc36af338fab32a869090a.md) | 72 | `result-track:1ffc36af338fab32a869090a11507a50aadd9c47400d12ad685f06c00d0fb463` |
| 4 | `structure` | [EvenHom](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant198b54f38d0c1fc6f7cf2859d057ea4704a85fcb30afb53a4aa4afd2188f9cb7.lean/declarations/evenhom--83dd8d8b6d5d8a3a55f2e3f3.md) | 80 | `declaration-track:83dd8d8b6d5d8a3a55f2e3f302ccd9f2824ab19f7ddfa60e81d73e279ae1674d` |
| 5 | `def` | [EvenHom.compr₂](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant198b54f38d0c1fc6f7cf2859d057ea4704a85fcb30afb53a4aa4afd2188f9cb7.lean/declarations/evenhom-compr--9fc7595ca664c895359645b6.md) | 90 | `declaration-track:9fc7595ca664c895359645b6cadc3d03e1db8dfca8e31e2a0b35ca4154c23f7b` |
| 6 | `def` | [even.ι](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant198b54f38d0c1fc6f7cf2859d057ea4704a85fcb30afb53a4aa4afd2188f9cb7.lean/declarations/even--6129e2019b1d346157132b2d.md) | 101 | `declaration-track:6129e2019b1d346157132b2d5038f71a852717959b73cfef0c48af534ec969c2` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant198b54f38d0c1fc6f7cf2859d057ea4704a85fcb30afb53a4aa4afd2188f9cb7.lean/declarations/instance--4b0d3ff650f15f6d8255378c.md) | 117 | `declaration-track:4b0d3ff650f15f6d8255378cede1b9886c816662bcdf30e340d5070d36c98bf9` |
| 8 | `theorem` | [even.algHom_ext](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant198b54f38d0c1fc6f7cf2859d057ea4704a85fcb30afb53a4aa4afd2188f9cb7.lean/declarations/even-alghom-ext--f08649afd5c17734c3ed53d8.md) | 126 | `result-track:f08649afd5c17734c3ed53d8aadaabd753b774daa6f0d0248f9141365ef55666` |
| 9 | `def` | [S](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant198b54f38d0c1fc6f7cf2859d057ea4704a85fcb30afb53a4aa4afd2188f9cb7.lean/declarations/s--0dd0e79053b2b9844febb22d.md) | 147 | `declaration-track:0dd0e79053b2b9844febb22d3dba61cb5848a312abff88004f8ddeb190ff0e63` |
| 10 | `def` | [fFold](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant198b54f38d0c1fc6f7cf2859d057ea4704a85fcb30afb53a4aa4afd2188f9cb7.lean/declarations/ffold--8085cfcf95beb168d7e76032.md) | 154 | `declaration-track:8085cfcf95beb168d7e76032991a5bd13f0113d9a7f5104f931c663dd86bc0a4` |
| 11 | `theorem` | [fst_fFold_fFold](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant198b54f38d0c1fc6f7cf2859d057ea4704a85fcb30afb53a4aa4afd2188f9cb7.lean/declarations/fst-ffold-ffold--cfd1ffdf1aa342bb5325b468.md) | 182 | `result-track:cfd1ffdf1aa342bb5325b46816152a7a2002b67eb3b569cbd8b07d704455fb87` |
| 12 | `theorem` | [snd_fFold_fFold](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant198b54f38d0c1fc6f7cf2859d057ea4704a85fcb30afb53a4aa4afd2188f9cb7.lean/declarations/snd-ffold-ffold--10406f1b407f9405b4bfa291.md) | 187 | `result-track:10406f1b407f9405b4bfa291f5fa496923c05b997e87b6ba0b301883d18da863` |
| 13 | `theorem` | [fFold_fFold](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant198b54f38d0c1fc6f7cf2859d057ea4704a85fcb30afb53a4aa4afd2188f9cb7.lean/declarations/ffold-ffold--1357ac5f754f3fbf022f0cb3.md) | 191 | `result-track:1357ac5f754f3fbf022f0cb34eb2a7d01196777ac3ad1b82a0f9400ba5a25144` |
| 14 | `def` | [aux](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant198b54f38d0c1fc6f7cf2859d057ea4704a85fcb30afb53a4aa4afd2188f9cb7.lean/declarations/aux--443d03bdd3148a3161a1d5e8.md) | 214 | `declaration-track:443d03bdd3148a3161a1d5e81e44da66b0c27e51632a1406c077dada1d9e7651` |
| 15 | `theorem` | [aux_one](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant198b54f38d0c1fc6f7cf2859d057ea4704a85fcb30afb53a4aa4afd2188f9cb7.lean/declarations/aux-one--a12b3ddc1efaa03d5b593603.md) | 222 | `result-track:a12b3ddc1efaa03d5b593603a93b33f3582cc470d1a6e6d829471a1a9334b19d` |
| 16 | `theorem` | [aux_ι](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant198b54f38d0c1fc6f7cf2859d057ea4704a85fcb30afb53a4aa4afd2188f9cb7.lean/declarations/aux--ec6e3a2ea6b1b62dd614ca90.md) | 227 | `result-track:ec6e3a2ea6b1b62dd614ca903e68ddc36d6b3b84c5c4ff4d309790e1dd0cd82b` |
| 17 | `theorem` | [aux_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant198b54f38d0c1fc6f7cf2859d057ea4704a85fcb30afb53a4aa4afd2188f9cb7.lean/declarations/aux-algebramap--9d24ac2c072f11acd9ec873e.md) | 235 | `result-track:9d24ac2c072f11acd9ec873e08201e90c0d9864295543465a96c7940b2e8d73b` |
| 18 | `theorem` | [aux_mul](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant198b54f38d0c1fc6f7cf2859d057ea4704a85fcb30afb53a4aa4afd2188f9cb7.lean/declarations/aux-mul--a0e2a95b74c8e79f2cc60425.md) | 240 | `result-track:a0e2a95b74c8e79f2cc60425ece68025e8d708f69648cf1cd11db4663b4fbbc4` |
| 19 | `def` | [even.lift](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant198b54f38d0c1fc6f7cf2859d057ea4704a85fcb30afb53a4aa4afd2188f9cb7.lean/declarations/even-lift--0d54caf5601efbb180517179.md) | 268 | `declaration-track:0d54caf5601efbb180517179f8d45ec32e5e7ad89c45b5f4bcd7f7c6ca116948` |
| 20 | `theorem` | [even.lift_ι](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant198b54f38d0c1fc6f7cf2859d057ea4704a85fcb30afb53a4aa4afd2188f9cb7.lean/declarations/even-lift--04910cc7d7c546e059eb9e01.md) | 276 | `result-track:04910cc7d7c546e059eb9e018a5ba92f0c5e7265641217312eac4a00c88895a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
