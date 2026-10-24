# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.PrimeSieveCovariance.Variantcc708e03cae04ed1b5bd593404c25370510c8c98e331e298c4459ed3dd30206e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f500e04fb0cd269de59cbdc9d64461bd9b465ab6",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovariance/Variantcc708e03cae04ed1b5bd593404c25370510c8c98e331e298c4459ed3dd30206e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovariance/Variantcc708e03cae04ed1b5bd593404c25370510c8c98e331e298c4459ed3dd30206e.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovariance/Variantcc708e03cae04ed1b5bd593404c25370510c8c98e331e298c4459ed3dd30206e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f500e04fb0cd269de59cbdc9d64461bd9b465ab6`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovariance/Variantcc708e03cae04ed1b5bd593404c25370510c8c98e331e298c4459ed3dd30206e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovariance/Variantcc708e03cae04ed1b5bd593404c25370510c8c98e331e298c4459ed3dd30206e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.SelbergSieve` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prime_lcm](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovariance/Variantcc708e03cae04ed1b5bd593404c25370510c8c98e331e298c4459ed3dd30206e.lean/declarations/prime-lcm--94b9c6d52590638647426ac7.md) | 10 | `result-track:94b9c6d52590638647426ac76fd7d69f6f5563c098d32a54269bf2aa9cbca393` |
| 2 | `theorem` | [prime_moebius_lcm_identity](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovariance/Variantcc708e03cae04ed1b5bd593404c25370510c8c98e331e298c4459ed3dd30206e.lean/declarations/prime-moebius-lcm-identity--62a3481e6a87584fde39e373.md) | 18 | `result-track:62a3481e6a87584fde39e373e8b0e77b71793f409d9de3d0fdadbdc46aabbe35` |
| 3 | `theorem` | [prime_moebius_lcm_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovariance/Variantcc708e03cae04ed1b5bd593404c25370510c8c98e331e298c4459ed3dd30206e.lean/declarations/prime-moebius-lcm-le--cfe3770568e36f53b46dd7f1.md) | 64 | `result-track:cfe3770568e36f53b46dd7f12f206ed2e79fa97828c1b65356da06013ec51d5a` |
| 4 | `theorem` | [prime_moebius_lcm_le_card](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovariance/Variantcc708e03cae04ed1b5bd593404c25370510c8c98e331e298c4459ed3dd30206e.lean/declarations/prime-moebius-lcm-le-card--37dcd48c4600117cef80f36d.md) | 100 | `result-track:37dcd48c4600117cef80f36d6c3aefe840e1e3283da92d40e7f2b0d3d99c6308` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
