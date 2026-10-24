# Verification target: GRWTSK.Algebra.LinearAlgebra.Unique.Variant2227cc75b79b5d056dcacbcd8131d0760920f03e2506d17a8f8f9e3dba7e5ffa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2afa724d1e72129dac3904aa3365f584d0dece2e",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Unique/Variant2227cc75b79b5d056dcacbcd8131d0760920f03e2506d17a8f8f9e3dba7e5ffa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Unique/Variant2227cc75b79b5d056dcacbcd8131d0760920f03e2506d17a8f8f9e3dba7e5ffa.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Unique/Variant2227cc75b79b5d056dcacbcd8131d0760920f03e2506d17a8f8f9e3dba7e5ffa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2afa724d1e72129dac3904aa3365f584d0dece2e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Unique/Variant2227cc75b79b5d056dcacbcd8131d0760920f03e2506d17a8f8f9e3dba7e5ffa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Unique/Variant2227cc75b79b5d056dcacbcd8131d0760920f03e2506d17a8f8f9e3dba7e5ffa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [uniqueEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Unique/Variant2227cc75b79b5d056dcacbcd8131d0760920f03e2506d17a8f8f9e3dba7e5ffa.lean/declarations/uniqueequiv--7d1fb6470dbe4d112af06824.md) | 36 | `declaration-track:7d1fb6470dbe4d112af06824fe0ee7cb710bd95cff3ee2c84560a49f5f014fd4` |
| 2 | `def` | [uniqueAddEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Unique/Variant2227cc75b79b5d056dcacbcd8131d0760920f03e2506d17a8f8f9e3dba7e5ffa.lean/declarations/uniqueaddequiv--9bff440a57b65e11a03bb136.md) | 44 | `declaration-track:9bff440a57b65e11a03bb1362884222051a75b347a0f18d1a273cf99fce16125` |
| 3 | `def` | [uniqueLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Unique/Variant2227cc75b79b5d056dcacbcd8131d0760920f03e2506d17a8f8f9e3dba7e5ffa.lean/declarations/uniquelinearequiv--a0395bc8d83472ab22ab7d1f.md) | 50 | `declaration-track:a0395bc8d83472ab22ab7d1f239868e4ed447d87457e164cb10f44f1cd8ce1aa` |
| 4 | `def` | [uniqueRingEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Unique/Variant2227cc75b79b5d056dcacbcd8131d0760920f03e2506d17a8f8f9e3dba7e5ffa.lean/declarations/uniqueringequiv--7553b30b5ae060fb3d7d77bc.md) | 56 | `declaration-track:7553b30b5ae060fb3d7d77bc680d473620b0443a2e14223b9081e047b7a62dc8` |
| 5 | `def` | [uniqueAlgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Unique/Variant2227cc75b79b5d056dcacbcd8131d0760920f03e2506d17a8f8f9e3dba7e5ffa.lean/declarations/uniquealgequiv--d759cc499edc45cd42c5ee6f.md) | 62 | `declaration-track:d759cc499edc45cd42c5ee6f6903bb6a984712400d36249a7b1a21bbf3615c69` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
