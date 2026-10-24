# Verification target: GRWTSK.Algebra.LinearAlgebra.FiniteGram.Variant586830fec13edd24635c33469f682bae6bf45c059deceb400d05668c0bda9f29

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "568867b95673191268ab715001dc382024d9ab08",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FiniteGram/Variant586830fec13edd24635c33469f682bae6bf45c059deceb400d05668c0bda9f29.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FiniteGram/Variant586830fec13edd24635c33469f682bae6bf45c059deceb400d05668c0bda9f29.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FiniteGram/Variant586830fec13edd24635c33469f682bae6bf45c059deceb400d05668c0bda9f29.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `568867b95673191268ab715001dc382024d9ab08`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FiniteGram/Variant586830fec13edd24635c33469f682bae6bf45c059deceb400d05668c0bda9f29.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FiniteGram/Variant586830fec13edd24635c33469f682bae6bf45c059deceb400d05668c0bda9f29.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MathDiscovery.Kernel.Core` — import line 6; external provider; requires a separately pinned dependency.
- `MathDiscovery.Kernel.Regularization` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.DotProduct` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteGram](../../../../../mathematics/Algebra/LinearAlgebra/FiniteGram/Variant586830fec13edd24635c33469f682bae6bf45c059deceb400d05668c0bda9f29.lean/declarations/finitegram--1c59c056b3a05ba1cb171e3f.md) | 31 | `declaration-track:1c59c056b3a05ba1cb171e3f0537bd676b8d72cbb3d46494139d8952af629463` |
| 2 | `theorem` | [finiteGram_apply](../../../../../mathematics/Algebra/LinearAlgebra/FiniteGram/Variant586830fec13edd24635c33469f682bae6bf45c059deceb400d05668c0bda9f29.lean/declarations/finitegram-apply--34b0e00e67dbb528ed3e4090.md) | 39 | `result-track:34b0e00e67dbb528ed3e4090ab0935981deae4743e121587d5a685098e809214` |
| 3 | `theorem` | [finiteGram_hermitian](../../../../../mathematics/Algebra/LinearAlgebra/FiniteGram/Variant586830fec13edd24635c33469f682bae6bf45c059deceb400d05668c0bda9f29.lean/declarations/finitegram-hermitian--6a62b629e098e5b13e8e53f9.md) | 49 | `result-track:6a62b629e098e5b13e8e53f90a56bf633ba555744c37ea50597e853e442e20fb` |
| 4 | `theorem` | [finiteGram_psd](../../../../../mathematics/Algebra/LinearAlgebra/FiniteGram/Variant586830fec13edd24635c33469f682bae6bf45c059deceb400d05668c0bda9f29.lean/declarations/finitegram-psd--d9c69bdd6203b91b1dc5a00c.md) | 58 | `result-track:d9c69bdd6203b91b1dc5a00c1aa29ae5a802feb9db3c2b585a314b9cf2f14b8c` |
| 5 | `structure` | [GramFactorCertificate](../../../../../mathematics/Algebra/LinearAlgebra/FiniteGram/Variant586830fec13edd24635c33469f682bae6bf45c059deceb400d05668c0bda9f29.lean/declarations/gramfactorcertificate--b08164461b705863bc031161.md) | 68 | `declaration-track:b08164461b705863bc03116191eafd557807561caa5258c4d1d5b9778a0fd212` |
| 6 | `theorem` | [column_inner_eq_kernel](../../../../../mathematics/Algebra/LinearAlgebra/FiniteGram/Variant586830fec13edd24635c33469f682bae6bf45c059deceb400d05668c0bda9f29.lean/declarations/column-inner-eq-kernel--52fa9da43dc9563706820acf.md) | 88 | `result-track:52fa9da43dc9563706820acf5a0d4caaa5d222a6f9f9caadd2d7c4d1598ee72d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
