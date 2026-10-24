# Verification target: GRWTSK.Algebra.CommutativeAlgebra.AdmissibleCardPowDegree.Variant3243cfdfe0a1d2f23b7dc5ea2ed75456b8617f69e6c0bfc6e4d6bed0061ef372

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb4198dfd2800baa1e7a98f94efe1eba78cd0239",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variant3243cfdfe0a1d2f23b7dc5ea2ed75456b8617f69e6c0bfc6e4d6bed0061ef372.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variant3243cfdfe0a1d2f23b7dc5ea2ed75456b8617f69e6c0bfc6e4d6bed0061ef372.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variant3243cfdfe0a1d2f23b7dc5ea2ed75456b8617f69e6c0bfc6e4d6bed0061ef372.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb4198dfd2800baa1e7a98f94efe1eba78cd0239`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variant3243cfdfe0a1d2f23b7dc5ea2ed75456b8617f69e6c0bfc6e4d6bed0061ef372.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variant3243cfdfe0a1d2f23b7dc5ea2ed75456b8617f69e6c0bfc6e4d6bed0061ef372.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ClassNumber.AdmissibleAbsoluteValue` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.LocalRing` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Degree.CardPowDegree` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_eq_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variant3243cfdfe0a1d2f23b7dc5ea2ed75456b8617f69e6c0bfc6e4d6bed0061ef372.lean/declarations/exists-eq-polynomial--8f72ef90797f8eb4f0a54753.md) | 36 | `result-track:8f72ef90797f8eb4f0a547535b71ebc49ae7d2048d5ace8e866300048cdcda59` |
| 2 | `theorem` | [exists_approx_polynomial_aux](../../../../../mathematics/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variant3243cfdfe0a1d2f23b7dc5ea2ed75456b8617f69e6c0bfc6e4d6bed0061ef372.lean/declarations/exists-approx-polynomial-aux--4118f3eb448f96f47980ff11.md) | 63 | `result-track:4118f3eb448f96f47980ff1156057aecab1b2e52ad1ca248f91378bc43a49769` |
| 3 | `theorem` | [exists_approx_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variant3243cfdfe0a1d2f23b7dc5ea2ed75456b8617f69e6c0bfc6e4d6bed0061ef372.lean/declarations/exists-approx-polynomial--aee3f3dd0c70ff76d34387a8.md) | 106 | `result-track:aee3f3dd0c70ff76d34387a85e97d541afb8ba4e06c13985cf3c842aa276e138` |
| 4 | `theorem` | [cardPowDegree_anti_archimedean](../../../../../mathematics/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variant3243cfdfe0a1d2f23b7dc5ea2ed75456b8617f69e6c0bfc6e4d6bed0061ef372.lean/declarations/cardpowdegree-anti-archimedean--4cd28db79b26eec0ab68db0c.md) | 153 | `result-track:4cd28db79b26eec0ab68db0c8ab8264ebb7a597f9322d5dea19ef9707bfcbdb2` |
| 5 | `theorem` | [exists_partition_polynomial_aux](../../../../../mathematics/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variant3243cfdfe0a1d2f23b7dc5ea2ed75456b8617f69e6c0bfc6e4d6bed0061ef372.lean/declarations/exists-partition-polynomial-aux--2d8f54eba5f1c235c8fce49d.md) | 178 | `result-track:2d8f54eba5f1c235c8fce49dc5b11be1c979ee1964fae0bf2443fd9225fd5ac1` |
| 6 | `theorem` | [exists_partition_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variant3243cfdfe0a1d2f23b7dc5ea2ed75456b8617f69e6c0bfc6e4d6bed0061ef372.lean/declarations/exists-partition-polynomial--be7a5d887dfb4bfed087e33d.md) | 249 | `result-track:be7a5d887dfb4bfed087e33d800696fb5e6e44c6cba5f34087effee311ea99ac` |
| 7 | `def` | [cardPowDegreeIsAdmissible](../../../../../mathematics/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variant3243cfdfe0a1d2f23b7dc5ea2ed75456b8617f69e6c0bfc6e4d6bed0061ef372.lean/declarations/cardpowdegreeisadmissible--de4d44a6d090576e4d6b0ef5.md) | 259 | `declaration-track:de4d44a6d090576e4d6b0ef55c3aa44df0b4a08a7f216f4fe60a5f336de9896c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
