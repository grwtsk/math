# Verification target: GRWTSK.Algebra.LinearAlgebra.Factorization.Variant902d9062ddd915f8e6762385da43fe2b10d61a19b631b5e47d3f77cc4df8332a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba841bed0e4fe286acfb4335db5f0c6ea61704a2",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Factorization/Variant902d9062ddd915f8e6762385da43fe2b10d61a19b631b5e47d3f77cc4df8332a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Factorization/Variant902d9062ddd915f8e6762385da43fe2b10d61a19b631b5e47d3f77cc4df8332a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Factorization/Variant902d9062ddd915f8e6762385da43fe2b10d61a19b631b5e47d3f77cc4df8332a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba841bed0e4fe286acfb4335db5f0c6ea61704a2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Factorization/Variant902d9062ddd915f8e6762385da43fe2b10d61a19b631b5e47d3f77cc4df8332a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Factorization/Variant902d9062ddd915f8e6762385da43fe2b10d61a19b631b5e47d3f77cc4df8332a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.PrimeComposite` — import line 1; external provider; requires a separately pinned dependency.
- `Surface.Legacy.BinaryLogicMatrix.MorphismFactorization` — import line 2; external provider; requires a separately pinned dependency.
- `Surface.Legacy.BinaryLogicMatrix.ProofAdapter` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BinaryLogicMatrixFactorizationDescriptor](../../../../../mathematics/Algebra/LinearAlgebra/Factorization/Variant902d9062ddd915f8e6762385da43fe2b10d61a19b631b5e47d3f77cc4df8332a.lean/declarations/binarylogicmatrixfactorizationdescriptor--ec4770f994453055fb538afb.md) | 7 | `declaration-track:ec4770f994453055fb538afb6acfa29372c99638b80f36724ca49b88d0d0efd9` |
| 2 | `theorem` | [blmFactorizationDescriptor_sound](../../../../../mathematics/Algebra/LinearAlgebra/Factorization/Variant902d9062ddd915f8e6762385da43fe2b10d61a19b631b5e47d3f77cc4df8332a.lean/declarations/blmfactorizationdescriptor-sound--8727eb0a262b95127f166975.md) | 14 | `result-track:8727eb0a262b95127f166975be279a5bee478c3b220ae484728f2cef0c042574` |
| 3 | `structure` | [FinalTheoremFamily](../../../../../mathematics/Algebra/LinearAlgebra/Factorization/Variant902d9062ddd915f8e6762385da43fe2b10d61a19b631b5e47d3f77cc4df8332a.lean/declarations/finaltheoremfamily--db8dabd9892900fcac8884d2.md) | 20 | `declaration-track:db8dabd9892900fcac8884d22a55a19ab2f532e840f140d30c88c31188d7e587` |
| 4 | `theorem` | [finalTheoremFamily_sound](../../../../../mathematics/Algebra/LinearAlgebra/Factorization/Variant902d9062ddd915f8e6762385da43fe2b10d61a19b631b5e47d3f77cc4df8332a.lean/declarations/finaltheoremfamily-sound--0d7959361448113d6656e58b.md) | 28 | `result-track:0d7959361448113d6656e58b33ce08967e6deaee8c1cc62ca9f25ae76d464ade` |
| 5 | `theorem` | [finalTheoremFamily_boundaries_visible](../../../../../mathematics/Algebra/LinearAlgebra/Factorization/Variant902d9062ddd915f8e6762385da43fe2b10d61a19b631b5e47d3f77cc4df8332a.lean/declarations/finaltheoremfamily-boundaries-visible--be8c39b5780554cdd5732458.md) | 33 | `result-track:be8c39b5780554cdd5732458209a5bdda340bfd9de5bae4ac6263d2dbf6b3f8a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
