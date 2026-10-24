# Verification target: GRWTSK.Geometry.Ports.FramedSeam

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c1a5a51eea2a81bc4fcb10050101a2237adb03e",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/Ports/FramedSeam.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Geometry/Ports/FramedSeam.lean/index.md) · [Full source](../../../../mathematics/Geometry/Ports/FramedSeam.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c1a5a51eea2a81bc4fcb10050101a2237adb03e`.

Source path: `GRWTSK/Geometry/Ports/FramedSeam.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/Ports/FramedSeam.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FramedPort](../../../../mathematics/Geometry/Ports/FramedSeam.lean/declarations/framedport--38fbc231e1eb81626beba56f.md) | 14 | `declaration-track:38fbc231e1eb81626beba56f0f5f636934cf8b50937e6b33cfbae2564082a1ba` |
| 2 | `theorem` | [coordinate_apply](../../../../mathematics/Geometry/Ports/FramedSeam.lean/declarations/coordinate-apply--8429ca69b013a4c8d9e30d23.md) | 31 | `result-track:8429ca69b013a4c8d9e30d2365bed177535df0bb57d2ae66c1c1b5747733efee` |
| 3 | `def` | [identity](../../../../mathematics/Geometry/Ports/FramedSeam.lean/declarations/identity--f8196131be2fb2dd5d5fff6f.md) | 38 | `declaration-track:f8196131be2fb2dd5d5fff6f9caba0bad0277d2393bc16d79569c124d9d2de47` |
| 4 | `structure` | [SameFramedSeam](../../../../mathematics/Geometry/Ports/FramedSeam.lean/declarations/sameframedseam--6b68f39ab472acc5002d924d.md) | 52 | `declaration-track:6b68f39ab472acc5002d924d6ec6cf84dd162c13a03458e7fa81c8821361c20c` |
| 5 | `theorem` | [coordinate_apply](../../../../mathematics/Geometry/Ports/FramedSeam.lean/declarations/coordinate-apply--dcac8c2e2522bde59f5b709f.md) | 59 | `result-track:dcac8c2e2522bde59f5b709fb9009409bc5f051d589a17a1eefb90b7a1278cb6` |
| 6 | `theorem` | [of_coordinate_apply](../../../../mathematics/Geometry/Ports/FramedSeam.lean/declarations/of-coordinate-apply--620632d43c97734e108862cf.md) | 67 | `result-track:620632d43c97734e108862cf4aa239871acba29b5723724559a40bf9ee241d6f` |
| 7 | `theorem` | [refl](../../../../mathematics/Geometry/Ports/FramedSeam.lean/declarations/refl--3cf44f63bb1dd90a17fb4c9c.md) | 79 | `result-track:3cf44f63bb1dd90a17fb4c9c966c6b6eba76d83485d2e93edce6b70368e166a7` |
| 8 | `theorem` | [symm](../../../../mathematics/Geometry/Ports/FramedSeam.lean/declarations/symm--a049c024a3f92869ce47020f.md) | 83 | `result-track:a049c024a3f92869ce47020f122ab85c5400b3571b71ae811125c47272ee5db5` |
| 9 | `theorem` | [trans](../../../../mathematics/Geometry/Ports/FramedSeam.lean/declarations/trans--0687da6ae768faa0be0008b7.md) | 88 | `result-track:0687da6ae768faa0be0008b72130a374c6224f32a8ab8bdddb0fdfc1ecaf91d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
