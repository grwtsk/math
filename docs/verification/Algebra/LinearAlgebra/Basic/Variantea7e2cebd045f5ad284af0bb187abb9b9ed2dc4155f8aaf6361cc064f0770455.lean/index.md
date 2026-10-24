# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variantea7e2cebd045f5ad284af0bb187abb9b9ed2dc4155f8aaf6361cc064f0770455

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c056b6cb3ac65b7650d8e19264956401dcb5211",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantea7e2cebd045f5ad284af0bb187abb9b9ed2dc4155f8aaf6361cc064f0770455.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantea7e2cebd045f5ad284af0bb187abb9b9ed2dc4155f8aaf6361cc064f0770455.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantea7e2cebd045f5ad284af0bb187abb9b9ed2dc4155f8aaf6361cc064f0770455.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c056b6cb3ac65b7650d8e19264956401dcb5211`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantea7e2cebd045f5ad284af0bb187abb9b9ed2dc4155f8aaf6361cc064f0770455.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variantea7e2cebd045f5ad284af0bb187abb9b9ed2dc4155f8aaf6361cc064f0770455.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Presentation.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.ExteriorAlgebra.OfAlternating` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantea7e2cebd045f5ad284af0bb187abb9b9ed2dc4155f8aaf6361cc064f0770455.lean/declarations/multi--73a9ca009bca3052b5d106fe.md) | 59 | `declaration-track:73a9ca009bca3052b5d106fe747bfb68e5c45a58336c9a16962593e3b44b4d7a` |
| 2 | `lemma` | [ιMulti_apply_coe](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantea7e2cebd045f5ad284af0bb187abb9b9ed2dc4155f8aaf6361cc064f0770455.lean/declarations/multi-apply-coe--e0aca036a5e2c63bb83004ae.md) | 63 | `result-track:e0aca036a5e2c63bb83004aeb942bcc5e8aea83ad8e11f39e57feb80998b2e5c` |
| 3 | `def` | [ιMulti_family](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantea7e2cebd045f5ad284af0bb187abb9b9ed2dc4155f8aaf6361cc064f0770455.lean/declarations/multi-family--02b221479fd654a296466415.md) | 68 | `declaration-track:02b221479fd654a29646641507f06dab9f4fcc2a6a8a8644bc46d6e191e3059f` |
| 4 | `lemma` | [ιMulti_family_apply_coe](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantea7e2cebd045f5ad284af0bb187abb9b9ed2dc4155f8aaf6361cc064f0770455.lean/declarations/multi-family-apply-coe--7406ace4a4af7b73e7b9d18c.md) | 72 | `result-track:7406ace4a4af7b73e7b9d18cea6dee9c0534f39aad66ed859dcbea3033eb1511` |
| 5 | `lemma` | [ιMulti_span_fixedDegree](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantea7e2cebd045f5ad284af0bb187abb9b9ed2dc4155f8aaf6361cc064f0770455.lean/declarations/multi-span-fixeddegree--6402dc351086b3c484a2d0ad.md) | 79 | `result-track:6402dc351086b3c484a2d0ad12d5e73e3cfc5713769556b82e8c43790b63d8af` |
| 6 | `lemma` | [ιMulti_span](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantea7e2cebd045f5ad284af0bb187abb9b9ed2dc4155f8aaf6361cc064f0770455.lean/declarations/multi-span--d337828740a19c926b78f342.md) | 84 | `result-track:d337828740a19c926b78f342f055c9ef886772ba759d4f431280c8df9dfe40d3` |
| 7 | `inductive` | [Rels](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantea7e2cebd045f5ad284af0bb187abb9b9ed2dc4155f8aaf6361cc064f0770455.lean/declarations/rels--20da7c9f750deb51a190afc0.md) | 96 | `declaration-track:20da7c9f750deb51a190afc0c2811403b3b7980dede177a537dc1a60dc414d92` |
| 8 | `def` | [relations](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantea7e2cebd045f5ad284af0bb187abb9b9ed2dc4155f8aaf6361cc064f0770455.lean/declarations/relations--138932cc08b4b0e167aea12d.md) | 103 | `declaration-track:138932cc08b4b0e167aea12d37a9864dbca517c70c045b418eb3e15c6a8fcde9` |
| 9 | `def` | [relationsSolutionEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantea7e2cebd045f5ad284af0bb187abb9b9ed2dc4155f8aaf6361cc064f0770455.lean/declarations/relationssolutionequiv--b220bf3ae1d2d3460d469f3e.md) | 120 | `declaration-track:b220bf3ae1d2d3460d469f3e71b8e4f1f9355301078d08392645eb2464034f5f` |
| 10 | `def` | [isPresentationCore](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantea7e2cebd045f5ad284af0bb187abb9b9ed2dc4155f8aaf6361cc064f0770455.lean/declarations/ispresentationcore--a18742eee59b03fdcb4d24df.md) | 152 | `declaration-track:a18742eee59b03fdcb4d24df9f45a3350001ed9d7296c51f7cdc45893572aed5` |
| 11 | `def` | [presentation](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantea7e2cebd045f5ad284af0bb187abb9b9ed2dc4155f8aaf6361cc064f0770455.lean/declarations/presentation--7df4e767e2c07d5811328ab3.md) | 166 | `declaration-track:7df4e767e2c07d5811328ab333767cf4ed7e963ea545ab354c5c45fed32519eb` |
| 12 | `lemma` | [linearMap_ext](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantea7e2cebd045f5ad284af0bb187abb9b9ed2dc4155f8aaf6361cc064f0770455.lean/declarations/linearmap-ext--e5e3da386133596add504a3e.md) | 174 | `result-track:e5e3da386133596add504a3e943d806f0848aee27176d08bf1e85bde18c38efe` |
| 13 | `def` | [alternatingMapLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantea7e2cebd045f5ad284af0bb187abb9b9ed2dc4155f8aaf6361cc064f0770455.lean/declarations/alternatingmaplinearequiv--2971b213e1d6361afa025af5.md) | 180 | `declaration-track:2971b213e1d6361afa025af5bdfeca25d0eabd797c8d5e06973311ac5532df00` |
| 14 | `lemma` | [alternatingMapLinearEquiv_comp_ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantea7e2cebd045f5ad284af0bb187abb9b9ed2dc4155f8aaf6361cc064f0770455.lean/declarations/alternatingmaplinearequiv-comp-multi--dba0814fdc3f0cfbed643f65.md) | 188 | `result-track:dba0814fdc3f0cfbed643f65a0e19f9c3247f14dcce0a75b325f16d0d4fc2e97` |
| 15 | `lemma` | [alternatingMapLinearEquiv_apply_ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantea7e2cebd045f5ad284af0bb187abb9b9ed2dc4155f8aaf6361cc064f0770455.lean/declarations/alternatingmaplinearequiv-apply-multi--9c6cef161e713f29a79f0ffa.md) | 196 | `result-track:9c6cef161e713f29a79f0ffa005255c1eef212c64a301574fb78d7d4ace6c5df` |
| 16 | `lemma` | [alternatingMapLinearEquiv_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantea7e2cebd045f5ad284af0bb187abb9b9ed2dc4155f8aaf6361cc064f0770455.lean/declarations/alternatingmaplinearequiv-symm-apply--6036a577681a7e656e6ec194.md) | 201 | `result-track:6036a577681a7e656e6ec194cb9ef020afae97f44ff7d801b834cbd81cc4814c` |
| 17 | `lemma` | [alternatingMapLinearEquiv_ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantea7e2cebd045f5ad284af0bb187abb9b9ed2dc4155f8aaf6361cc064f0770455.lean/declarations/alternatingmaplinearequiv-multi--8d473a1f3d846d7015ab3fa8.md) | 207 | `result-track:8d473a1f3d846d7015ab3fa84faa93e2225f7714ab5f316ef13149b078292980` |
| 18 | `lemma` | [alternatingMapLinearEquiv_comp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantea7e2cebd045f5ad284af0bb187abb9b9ed2dc4155f8aaf6361cc064f0770455.lean/declarations/alternatingmaplinearequiv-comp--5495ea5980b143e4fde1fb63.md) | 218 | `result-track:5495ea5980b143e4fde1fb63771c48bda80e10b7f833121a0a4be10a3fb4e733` |
| 19 | `def` | [map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantea7e2cebd045f5ad284af0bb187abb9b9ed2dc4155f8aaf6361cc064f0770455.lean/declarations/map--45cd57406a54bbc170fd0c2c.md) | 228 | `declaration-track:45cd57406a54bbc170fd0c2cabf7a69b4a3e8a37a115e8a28c71c813e66eaa0c` |
| 20 | `lemma` | [alternatingMapLinearEquiv_symm_map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantea7e2cebd045f5ad284af0bb187abb9b9ed2dc4155f8aaf6361cc064f0770455.lean/declarations/alternatingmaplinearequiv-symm-map--dcee56384dd2071b74138e48.md) | 231 | `result-track:dcee56384dd2071b74138e487ec4edfab96b5002c29e6507fb147e38515525d6` |
| 21 | `theorem` | [map_comp_ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantea7e2cebd045f5ad284af0bb187abb9b9ed2dc4155f8aaf6361cc064f0770455.lean/declarations/map-comp-multi--95470149f8890a1ffd379673.md) | 236 | `result-track:95470149f8890a1ffd37967368ad78504fa789f8499ea6355074911ecffb3eeb` |
| 22 | `theorem` | [map_apply_ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantea7e2cebd045f5ad284af0bb187abb9b9ed2dc4155f8aaf6361cc064f0770455.lean/declarations/map-apply-multi--c27a9b140fb557a1cba10b67.md) | 241 | `result-track:c27a9b140fb557a1cba10b67591ff07859b396d28b0f558af5ad36e0fcd8c50f` |
| 23 | `lemma` | [map_comp_ιMulti_family](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantea7e2cebd045f5ad284af0bb187abb9b9ed2dc4155f8aaf6361cc064f0770455.lean/declarations/map-comp-multi-family--e6a222697981fbfea02b958b.md) | 247 | `result-track:e6a222697981fbfea02b958bc9fb212e65328342d90e288fe7cbf6cd52603888` |
| 24 | `lemma` | [map_apply_ιMulti_family](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantea7e2cebd045f5ad284af0bb187abb9b9ed2dc4155f8aaf6361cc064f0770455.lean/declarations/map-apply-multi-family--2f5c3542234a34f37ad2dcd8.md) | 254 | `result-track:2f5c3542234a34f37ad2dcd8d137f74b1154610a304db1e8b5c50aec80f8d49f` |
| 25 | `theorem` | [map_id](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantea7e2cebd045f5ad284af0bb187abb9b9ed2dc4155f8aaf6361cc064f0770455.lean/declarations/map-id--9ef6542f1a4665d04a978004.md) | 261 | `result-track:9ef6542f1a4665d04a978004f9eeddc8a017ea69acab5c88047afe0588a52cec` |
| 26 | `theorem` | [map_comp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantea7e2cebd045f5ad284af0bb187abb9b9ed2dc4155f8aaf6361cc064f0770455.lean/declarations/map-comp--05e70529b29627456e710bc8.md) | 266 | `result-track:05e70529b29627456e710bc82e4e70520c7d8254cfc01178efed8dc6d06971cc` |
| 27 | `def` | [zeroEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantea7e2cebd045f5ad284af0bb187abb9b9ed2dc4155f8aaf6361cc064f0770455.lean/declarations/zeroequiv--86446774974d31f302b2f480.md) | 275 | `declaration-track:86446774974d31f302b2f480bc016e37bdbe30072fab66058294f91c4665e149` |
| 28 | `lemma` | [zeroEquiv_ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantea7e2cebd045f5ad284af0bb187abb9b9ed2dc4155f8aaf6361cc064f0770455.lean/declarations/zeroequiv-multi--c54b927c54bad1a48a144131.md) | 284 | `result-track:c54b927c54bad1a48a144131ed2fea9b3d3a80b7523becffa9d1b20e64a5dfdb` |
| 29 | `lemma` | [zeroEquiv_naturality](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantea7e2cebd045f5ad284af0bb187abb9b9ed2dc4155f8aaf6361cc064f0770455.lean/declarations/zeroequiv-naturality--4e84e7b6fe8883107430e278.md) | 288 | `result-track:4e84e7b6fe8883107430e278a29e446b1ef7071e7fbd3ee8f09026730c42d3a8` |
| 30 | `def` | [oneEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantea7e2cebd045f5ad284af0bb187abb9b9ed2dc4155f8aaf6361cc064f0770455.lean/declarations/oneequiv--90f65c9ccfc76fe83957ed14.md) | 294 | `declaration-track:90f65c9ccfc76fe83957ed144948f57042ee221a9399177b15670c57b94df475` |
| 31 | `lemma` | [oneEquiv_ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantea7e2cebd045f5ad284af0bb187abb9b9ed2dc4155f8aaf6361cc064f0770455.lean/declarations/oneequiv-multi--586ef06c2c37555fae932c05.md) | 313 | `result-track:586ef06c2c37555fae932c0593949c18bb6d1f033bc494e385e3df3b55c46e4f` |
| 32 | `lemma` | [oneEquiv_naturality](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantea7e2cebd045f5ad284af0bb187abb9b9ed2dc4155f8aaf6361cc064f0770455.lean/declarations/oneequiv-naturality--4f39816601130ca9250f0303.md) | 317 | `result-track:4f39816601130ca9250f03035a1bc17cd04af849cd8311f68abbc510f983ec96` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
