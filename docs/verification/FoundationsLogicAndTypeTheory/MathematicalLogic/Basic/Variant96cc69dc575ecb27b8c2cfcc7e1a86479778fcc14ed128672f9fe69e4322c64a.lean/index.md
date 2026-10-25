# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Variant96cc69dc575ecb27b8c2cfcc7e1a86479778fcc14ed128672f9fe69e4322c64a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7a5d18bdace4135716cdeccf33b379af337f5be",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96cc69dc575ecb27b8c2cfcc7e1a86479778fcc14ed128672f9fe69e4322c64a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96cc69dc575ecb27b8c2cfcc7e1a86479778fcc14ed128672f9fe69e4322c64a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96cc69dc575ecb27b8c2cfcc7e1a86479778fcc14ed128672f9fe69e4322c64a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7a5d18bdace4135716cdeccf33b379af337f5be`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96cc69dc575ecb27b8c2cfcc7e1a86479778fcc14ed128672f9fe69e4322c64a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96cc69dc575ecb27b8c2cfcc7e1a86479778fcc14ed128672f9fe69e4322c64a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.PID` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.TypeTags.Finite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.QuotientRing` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [directSumNeZeroMulHom](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96cc69dc575ecb27b8c2cfcc7e1a86479778fcc14ed128672f9fe69e4322c64a.lean/declarations/directsumnezeromulhom--e6d3cb99c38d29f8c7b14f92.md) | 59 | `declaration-track:e6d3cb99c38d29f8c7b14f9211d38faba9417142668a34a180f8aed399324dc2` |
| 2 | `def` | [directSumNeZeroMulEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96cc69dc575ecb27b8c2cfcc7e1a86479778fcc14ed128672f9fe69e4322c64a.lean/declarations/directsumnezeromulequiv--9a686926cfb0371baeec90d1.md) | 63 | `declaration-track:9a686926cfb0371baeec90d150f9170b952374e30dc94f003a952c592b5173b6` |
| 3 | `theorem` | [finite_of_fg_torsion](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96cc69dc575ecb27b8c2cfcc7e1a86479778fcc14ed128672f9fe69e4322c64a.lean/declarations/finite-of-fg-torsion--2a780fc4c9052e303317c57c.md) | 92 | `result-track:2a780fc4c9052e303317c57ce532aa236af47e7faf37c01de8ed2c82405f0d65` |
| 4 | `theorem` | [equiv_free_prod_directSum_zmod](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96cc69dc575ecb27b8c2cfcc7e1a86479778fcc14ed128672f9fe69e4322c64a.lean/declarations/equiv-free-prod-directsum-zmod--b2ba93da63da91bae9f2d501.md) | 114 | `result-track:b2ba93da63da91bae9f2d5011e6b8cab43189a88c81e8172b05cc932fa85aff0` |
| 5 | `theorem` | [equiv_directSum_zmod_of_finite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96cc69dc575ecb27b8c2cfcc7e1a86479778fcc14ed128672f9fe69e4322c64a.lean/declarations/equiv-directsum-zmod-of-finite--3bc4b53ff0241847414ae166.md) | 130 | `result-track:3bc4b53ff0241847414ae1660190ee943e71e2f92a8d3f150a3f3c7fd45c5199` |
| 6 | `lemma` | [equiv_directSum_zmod_of_finite'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96cc69dc575ecb27b8c2cfcc7e1a86479778fcc14ed128672f9fe69e4322c64a.lean/declarations/equiv-directsum-zmod-of-finite--7a30667ce920ee22413177ae.md) | 146 | `result-track:7a30667ce920ee22413177aecdb132a363740fc23f30fcee525f1ee32972757f` |
| 7 | `theorem` | [finite_of_fg_torsion](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96cc69dc575ecb27b8c2cfcc7e1a86479778fcc14ed128672f9fe69e4322c64a.lean/declarations/finite-of-fg-torsion--b1a80313cc7e3af683c77150.md) | 156 | `result-track:b1a80313cc7e3af683c7715030baa679737f9a99f4044111948aa35f87833748` |
| 8 | `theorem` | [finite_of_fg_torsion](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96cc69dc575ecb27b8c2cfcc7e1a86479778fcc14ed128672f9fe69e4322c64a.lean/declarations/finite-of-fg-torsion--72dc40c1e7cdf713397b2b8f.md) | 164 | `result-track:72dc40c1e7cdf713397b2b8f5f0c7602bfad78b5a4d26d14616c5f4cdf6691c0` |
| 9 | `theorem` | [equiv_prod_multiplicative_zmod_of_finite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96cc69dc575ecb27b8c2cfcc7e1a86479778fcc14ed128672f9fe69e4322c64a.lean/declarations/equiv-prod-multiplicative-zmod-of-finite--fa39605bc97ce743c69dc744.md) | 169 | `result-track:fa39605bc97ce743c69dc744f98d596188773f486b92d34b96ab404e66a14a5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
