# Verification target: GRWTSK.Analysis.SpecialFunctions.Retention.Variantd0eac7184d921051f05d76572a03c3854f6d6d6160e9b1e88dd76459f885cbba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8faf7827ff30ef20b64a8b710248e01db740bdf3",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/Retention/Variantd0eac7184d921051f05d76572a03c3854f6d6d6160e9b1e88dd76459f885cbba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/Retention/Variantd0eac7184d921051f05d76572a03c3854f6d6d6160e9b1e88dd76459f885cbba.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/Retention/Variantd0eac7184d921051f05d76572a03c3854f6d6d6160e9b1e88dd76459f885cbba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8faf7827ff30ef20b64a8b710248e01db740bdf3`.

Source path: `GRWTSK/Analysis/SpecialFunctions/Retention/Variantd0eac7184d921051f05d76572a03c3854f6d6d6160e9b1e88dd76459f885cbba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/Retention/Variantd0eac7184d921051f05d76572a03c3854f6d6d6160e9b1e88dd76459f885cbba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Attention.SequenceAffine` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RetentionRangeCertificate](../../../../../mathematics/Analysis/SpecialFunctions/Retention/Variantd0eac7184d921051f05d76572a03c3854f6d6d6160e9b1e88dd76459f885cbba.lean/declarations/retentionrangecertificate--253cfe48ea73addf538fe622.md) | 15 | `declaration-track:253cfe48ea73addf538fe62265b73a40f162a32600893ddb9845f81cc4b575f0` |
| 2 | `theorem` | [retention_product_positive](../../../../../mathematics/Analysis/SpecialFunctions/Retention/Variantd0eac7184d921051f05d76572a03c3854f6d6d6160e9b1e88dd76459f885cbba.lean/declarations/retention-product-positive--4e64f002476e2a593f78a21c.md) | 36 | `result-track:4e64f002476e2a593f78a21c33b4b642f178101a47bfb97f7130ff89b6f0293c` |
| 3 | `theorem` | [reciprocal_retention_defined](../../../../../mathematics/Analysis/SpecialFunctions/Retention/Variantd0eac7184d921051f05d76572a03c3854f6d6d6160e9b1e88dd76459f885cbba.lean/declarations/reciprocal-retention-defined--7d3f4abf47691cacdb300d3c.md) | 46 | `result-track:7d3f4abf47691cacdb300d3c0635946118b14318108a7352d7059ea5ed51c1bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
