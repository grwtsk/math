# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.EulerPhi.Variant8314421655ff522fc914c0c729da8887bb7b40fa9b8d66c93356095bfb7fe3f0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f5083d79e6276e6b65cfebcd2130826fb4499b1",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/EulerPhi/Variant8314421655ff522fc914c0c729da8887bb7b40fa9b8d66c93356095bfb7fe3f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/EulerPhi/Variant8314421655ff522fc914c0c729da8887bb7b40fa9b8d66c93356095bfb7fe3f0.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/EulerPhi/Variant8314421655ff522fc914c0c729da8887bb7b40fa9b8d66c93356095bfb7fe3f0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f5083d79e6276e6b65cfebcd2130826fb4499b1`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/EulerPhi/Variant8314421655ff522fc914c0c729da8887bb7b40fa9b8d66c93356095bfb7fe3f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/EulerPhi/Variant8314421655ff522fc914c0c729da8887bb7b40fa9b8d66c93356095bfb7fe3f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.NumberTheory.MultiplicativeFunction` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Totient` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [eulerPhi](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/EulerPhi/Variant8314421655ff522fc914c0c729da8887bb7b40fa9b8d66c93356095bfb7fe3f0.lean/declarations/eulerphi--18ddaf066efb00c224939404.md) | 14 | `declaration-track:18ddaf066efb00c2249394047a1c5a1c4d3fe6d0055a966cbc31d5328429a487` |
| 2 | `theorem` | [eulerPhi_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/EulerPhi/Variant8314421655ff522fc914c0c729da8887bb7b40fa9b8d66c93356095bfb7fe3f0.lean/declarations/eulerphi-one--0e4070e86718b70d46fb7786.md) | 17 | `result-track:0e4070e86718b70d46fb778643d5824833dea59f329b8249c6885d5983579d81` |
| 3 | `theorem` | [eulerPhi_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/EulerPhi/Variant8314421655ff522fc914c0c729da8887bb7b40fa9b8d66c93356095bfb7fe3f0.lean/declarations/eulerphi-prime--baf74c46b15ff06da8a6e680.md) | 21 | `result-track:baf74c46b15ff06da8a6e680d179228905fa5e319af359f858f7d8fd1f4b274d` |
| 4 | `theorem` | [eulerPhi_prime_power](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/EulerPhi/Variant8314421655ff522fc914c0c729da8887bb7b40fa9b8d66c93356095bfb7fe3f0.lean/declarations/eulerphi-prime-power--7c33da5dc5d227f42e8c95df.md) | 27 | `result-track:7c33da5dc5d227f42e8c95df1b8bd4a63bf902ec1437906f53c753190db8b543` |
| 5 | `theorem` | [eulerPhi_mul_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/EulerPhi/Variant8314421655ff522fc914c0c729da8887bb7b40fa9b8d66c93356095bfb7fe3f0.lean/declarations/eulerphi-mul-of-coprime--ce685b6aff72d8b66b9e6ce4.md) | 44 | `result-track:ce685b6aff72d8b66b9e6ce433df263b6e2295512753a6f0090bf4f9ff6a65aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
