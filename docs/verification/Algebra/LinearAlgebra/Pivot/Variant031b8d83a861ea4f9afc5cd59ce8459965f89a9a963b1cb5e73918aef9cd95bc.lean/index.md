# Verification target: GRWTSK.Algebra.LinearAlgebra.Pivot.Variant031b8d83a861ea4f9afc5cd59ce8459965f89a9a963b1cb5e73918aef9cd95bc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e11cfe67f323dc11b8175cc1137e1d9d1064a525",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Pivot/Variant031b8d83a861ea4f9afc5cd59ce8459965f89a9a963b1cb5e73918aef9cd95bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Pivot/Variant031b8d83a861ea4f9afc5cd59ce8459965f89a9a963b1cb5e73918aef9cd95bc.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Pivot/Variant031b8d83a861ea4f9afc5cd59ce8459965f89a9a963b1cb5e73918aef9cd95bc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e11cfe67f323dc11b8175cc1137e1d9d1064a525`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Pivot/Variant031b8d83a861ea4f9afc5cd59ce8459965f89a9a963b1cb5e73918aef9cd95bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Pivot/Variant031b8d83a861ea4f9afc5cd59ce8459965f89a9a963b1cb5e73918aef9cd95bc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Linear.Matrix` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PivotPosition](../../../../../mathematics/Algebra/LinearAlgebra/Pivot/Variant031b8d83a861ea4f9afc5cd59ce8459965f89a9a963b1cb5e73918aef9cd95bc.lean/declarations/pivotposition--bd2c12a68e737c18ec2d2273.md) | 27 | `declaration-track:bd2c12a68e737c18ec2d22736864574fa305bea5b9e5a74a5edb0ed57053636e` |
| 2 | `structure` | [PivotCertificate](../../../../../mathematics/Algebra/LinearAlgebra/Pivot/Variant031b8d83a861ea4f9afc5cd59ce8459965f89a9a963b1cb5e73918aef9cd95bc.lean/declarations/pivotcertificate--2156a3a7e6ce505cdb0a00a4.md) | 32 | `declaration-track:2156a3a7e6ce505cdb0a00a4ff15e2759026a261689452fb080bfe16b98ac0cc` |
| 3 | `theorem` | [pivot_nonzero](../../../../../mathematics/Algebra/LinearAlgebra/Pivot/Variant031b8d83a861ea4f9afc5cd59ce8459965f89a9a963b1cb5e73918aef9cd95bc.lean/declarations/pivot-nonzero--e5565aefcec8496bb79b37a6.md) | 40 | `result-track:e5565aefcec8496bb79b37a61ebe45d8c525f5faf84150c9756b4edaa3157ce3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
