# Verification target: GRWTSK.Analysis.Extension.Variant16ff2cdcbc065d17659a8f5e9948c717882de3a9d6434768940997ae45dc73f7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "24a2b98382f519700d3fc3d3a8a48f52d81047f8",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Extension/Variant16ff2cdcbc065d17659a8f5e9948c717882de3a9d6434768940997ae45dc73f7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Extension/Variant16ff2cdcbc065d17659a8f5e9948c717882de3a9d6434768940997ae45dc73f7.lean/index.md) · [Full source](../../../../mathematics/Analysis/Extension/Variant16ff2cdcbc065d17659a8f5e9948c717882de3a9d6434768940997ae45dc73f7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `24a2b98382f519700d3fc3d3a8a48f52d81047f8`.

Source path: `GRWTSK/Analysis/Extension/Variant16ff2cdcbc065d17659a8f5e9948c717882de3a9d6434768940997ae45dc73f7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Extension/Variant16ff2cdcbc065d17659a8f5e9948c717882de3a9d6434768940997ae45dc73f7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Cone.Extension` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.RCLike` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Extend` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.RCLike.Lemmas` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_extension_norm_eq](../../../../mathematics/Analysis/Extension/Variant16ff2cdcbc065d17659a8f5e9948c717882de3a9d6434768940997ae45dc73f7.lean/declarations/exists-extension-norm-eq--95c0827cec55bb74dedebb96.md) | 41 | `result-track:95c0827cec55bb74dedebb96cfc60049c06a3e77eb07768ffc098d588e6534bf` |
| 2 | `theorem` | [exists_extension_norm_eq](../../../../mathematics/Analysis/Extension/Variant16ff2cdcbc065d17659a8f5e9948c717882de3a9d6434768940997ae45dc73f7.lean/declarations/exists-extension-norm-eq--b22cbeb547b5a4b18f08e484.md) | 70 | `result-track:b22cbeb547b5a4b18f08e4842213fadfc4692ddf61f7f5a01b749cc34df2ffc8` |
| 3 | `lemma` | [ContinuousLinearMap.exist_extension_of_finiteDimensional_range](../../../../mathematics/Analysis/Extension/Variant16ff2cdcbc065d17659a8f5e9948c717882de3a9d6434768940997ae45dc73f7.lean/declarations/continuouslinearmap-exist-extension-of-finitedimensional-range--9f96f146ac951be78ab186fb.md) | 122 | `result-track:9f96f146ac951be78ab186fb4bb82bfc891a6100af1eb2a0fd2ca9e70abdf4b2` |
| 4 | `lemma` | [Submodule.ClosedComplemented.of_finiteDimensional](../../../../mathematics/Analysis/Extension/Variant16ff2cdcbc065d17659a8f5e9948c717882de3a9d6434768940997ae45dc73f7.lean/declarations/submodule-closedcomplemented-of-finitedimensional--b122ce68b81de0ddca4dc3d5.md) | 136 | `result-track:b122ce68b81de0ddca4dc3d5f969078bcb325b7887eb678769178830d93fa0b9` |
| 5 | `theorem` | [coord_norm'](../../../../mathematics/Analysis/Extension/Variant16ff2cdcbc065d17659a8f5e9948c717882de3a9d6434768940997ae45dc73f7.lean/declarations/coord-norm--14a69e1c1eb35a4130cb63ca.md) | 150 | `result-track:14a69e1c1eb35a4130cb63ca6b6fec6d48f33c0a5ea81445a6eb49cf38b68bea` |
| 6 | `theorem` | [exists_dual_vector](../../../../mathematics/Analysis/Extension/Variant16ff2cdcbc065d17659a8f5e9948c717882de3a9d6434768940997ae45dc73f7.lean/declarations/exists-dual-vector--0a53e2cc1527e8e469fdab0f.md) | 156 | `result-track:0a53e2cc1527e8e469fdab0fe67dd39ac1045e4f0974f8d21536b4633b0920ba` |
| 7 | `theorem` | [exists_dual_vector'](../../../../mathematics/Analysis/Extension/Variant16ff2cdcbc065d17659a8f5e9948c717882de3a9d6434768940997ae45dc73f7.lean/declarations/exists-dual-vector--9a82bf92b529682a429421a0.md) | 169 | `result-track:9a82bf92b529682a429421a0d92495dba1a220211ec20bacfe031dc4a03d6e34` |
| 8 | `theorem` | [exists_dual_vector''](../../../../mathematics/Analysis/Extension/Variant16ff2cdcbc065d17659a8f5e9948c717882de3a9d6434768940997ae45dc73f7.lean/declarations/exists-dual-vector--715d7187269480d9107f8f4e.md) | 180 | `result-track:715d7187269480d9107f8f4e40b1031c6f79090fdc4edc63ffd7371ce154e94f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
