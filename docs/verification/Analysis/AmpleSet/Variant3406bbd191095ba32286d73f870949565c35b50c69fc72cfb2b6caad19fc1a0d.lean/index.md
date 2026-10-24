# Verification target: GRWTSK.Analysis.AmpleSet.Variant3406bbd191095ba32286d73f870949565c35b50c69fc72cfb2b6caad19fc1a0d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d22d4f940c0ad87f4a1233cda93cf0d62259cbd",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AmpleSet/Variant3406bbd191095ba32286d73f870949565c35b50c69fc72cfb2b6caad19fc1a0d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/AmpleSet/Variant3406bbd191095ba32286d73f870949565c35b50c69fc72cfb2b6caad19fc1a0d.lean/index.md) · [Full source](../../../../mathematics/Analysis/AmpleSet/Variant3406bbd191095ba32286d73f870949565c35b50c69fc72cfb2b6caad19fc1a0d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d22d4f940c0ad87f4a1233cda93cf0d62259cbd`.

Source path: `GRWTSK/Analysis/AmpleSet/Variant3406bbd191095ba32286d73f870949565c35b50c69fc72cfb2b6caad19fc1a0d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AmpleSet/Variant3406bbd191095ba32286d73f870949565c35b50c69fc72cfb2b6caad19fc1a0d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Invertible` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Convex` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Connected` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.ContinuousAffineEquiv` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AmpleSet](../../../../mathematics/Analysis/AmpleSet/Variant3406bbd191095ba32286d73f870949565c35b50c69fc72cfb2b6caad19fc1a0d.lean/declarations/ampleset--29f8d6225e8396ab52a2db83.md) | 57 | `declaration-track:29f8d6225e8396ab52a2db83ed0345ed1249fae538755ee2b3037a012f78c3da` |
| 2 | `theorem` | [ampleSet_univ](../../../../mathematics/Analysis/AmpleSet/Variant3406bbd191095ba32286d73f870949565c35b50c69fc72cfb2b6caad19fc1a0d.lean/declarations/ampleset-univ--e5a6ec90c3c9ecfa38be7ceb.md) | 62 | `result-track:e5a6ec90c3c9ecfa38be7cebd9c81fbdc219de9c6637119ce9e29d8fab5b73aa` |
| 3 | `theorem` | [ampleSet_empty](../../../../mathematics/Analysis/AmpleSet/Variant3406bbd191095ba32286d73f870949565c35b50c69fc72cfb2b6caad19fc1a0d.lean/declarations/ampleset-empty--16028cfc75aa7c17aae018b8.md) | 69 | `result-track:16028cfc75aa7c17aae018b87b5e8ef0ea946594670ccb8c8e1467949bc8ba34` |
| 4 | `theorem` | [union](../../../../mathematics/Analysis/AmpleSet/Variant3406bbd191095ba32286d73f870949565c35b50c69fc72cfb2b6caad19fc1a0d.lean/declarations/union--cedbb08ac4e187026b06b8dc.md) | 74 | `result-track:cedbb08ac4e187026b06b8dc778f928280528cf193b22f41b25c68d511dc6b65` |
| 5 | `theorem` | [image](../../../../mathematics/Analysis/AmpleSet/Variant3406bbd191095ba32286d73f870949565c35b50c69fc72cfb2b6caad19fc1a0d.lean/declarations/image--2c229f7750531505eb2619ed.md) | 88 | `result-track:2c229f7750531505eb2619ed5a62bb3e8aee563c91282046e85b2db64e483a11` |
| 6 | `theorem` | [image_iff](../../../../mathematics/Analysis/AmpleSet/Variant3406bbd191095ba32286d73f870949565c35b50c69fc72cfb2b6caad19fc1a0d.lean/declarations/image-iff--d77d659f5b6f1fe625853098.md) | 98 | `result-track:d77d659f5b6f1fe62585309889b98eae81f70858e0f0c698e563306f44aa553a` |
| 7 | `theorem` | [preimage](../../../../mathematics/Analysis/AmpleSet/Variant3406bbd191095ba32286d73f870949565c35b50c69fc72cfb2b6caad19fc1a0d.lean/declarations/preimage--373f6edd19d9c6a0ca69b80a.md) | 103 | `result-track:373f6edd19d9c6a0ca69b80ad5b75c916aa0cf9af34a5099da740e20a35e50ad` |
| 8 | `theorem` | [preimage_iff](../../../../mathematics/Analysis/AmpleSet/Variant3406bbd191095ba32286d73f870949565c35b50c69fc72cfb2b6caad19fc1a0d.lean/declarations/preimage-iff--0e420e544a210d2e3d264f27.md) | 108 | `result-track:0e420e544a210d2e3d264f279991a83f47e148549c4bf1666df7a469623bcef6` |
| 9 | `theorem` | [vadd](../../../../mathematics/Analysis/AmpleSet/Variant3406bbd191095ba32286d73f870949565c35b50c69fc72cfb2b6caad19fc1a0d.lean/declarations/vadd--3ea3956e583fed1454a83564.md) | 115 | `result-track:3ea3956e583fed1454a8356498b9d2fa1466f590cd2c40a3a3a401ef6db54cdb` |
| 10 | `theorem` | [vadd_iff](../../../../mathematics/Analysis/AmpleSet/Variant3406bbd191095ba32286d73f870949565c35b50c69fc72cfb2b6caad19fc1a0d.lean/declarations/vadd-iff--c938f21a2bd990ed47512baf.md) | 120 | `result-track:c938f21a2bd990ed47512baf75473aaeb9d8030f21e0ce0d829c425a921803bb` |
| 11 | `theorem` | [of_one_lt_codim](../../../../mathematics/Analysis/AmpleSet/Variant3406bbd191095ba32286d73f870949565c35b50c69fc72cfb2b6caad19fc1a0d.lean/declarations/of-one-lt-codim--702dee9ee574d173ae80e756.md) | 129 | `result-track:702dee9ee574d173ae80e756de38e07ea95c6967a93584af4e3297dc6c2247da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
