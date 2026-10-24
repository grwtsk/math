# Verification target: GRWTSK.Algebra.LinearAlgebra.PivotCertificate.Variant4e5fb40fdda1cec539ec804f1dbf94c9fbd61284ab6f26181baf4c491c7be031

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7873f8cc7c7c833d692f1aa99899bcda7cae3554",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PivotCertificate/Variant4e5fb40fdda1cec539ec804f1dbf94c9fbd61284ab6f26181baf4c491c7be031.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PivotCertificate/Variant4e5fb40fdda1cec539ec804f1dbf94c9fbd61284ab6f26181baf4c491c7be031.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PivotCertificate/Variant4e5fb40fdda1cec539ec804f1dbf94c9fbd61284ab6f26181baf4c491c7be031.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7873f8cc7c7c833d692f1aa99899bcda7cae3554`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PivotCertificate/Variant4e5fb40fdda1cec539ec804f1dbf94c9fbd61284ab6f26181baf4c491c7be031.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PivotCertificate/Variant4e5fb40fdda1cec539ec804f1dbf94c9fbd61284ab6f26181baf4c491c7be031.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Linear.Pivot` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.Linear.DeterminantWitness` — import line 7; external provider; requires a separately pinned dependency.
- `Folder.Linear.Certificate` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pivot_certificate_sound](../../../../../mathematics/Algebra/LinearAlgebra/PivotCertificate/Variant4e5fb40fdda1cec539ec804f1dbf94c9fbd61284ab6f26181baf4c491c7be031.lean/declarations/pivot-certificate-sound--a245a666e0c0af9d9c397e8c.md) | 29 | `result-track:a245a666e0c0af9d9c397e8c23ee18353aec8d57147eb00774ff0e524f084d1f` |
| 2 | `theorem` | [determinant_certificate_sound](../../../../../mathematics/Algebra/LinearAlgebra/PivotCertificate/Variant4e5fb40fdda1cec539ec804f1dbf94c9fbd61284ab6f26181baf4c491c7be031.lean/declarations/determinant-certificate-sound--7e20310e07de8a1e936ef3f7.md) | 38 | `result-track:7e20310e07de8a1e936ef3f722e197ef7cceac3377bc72a296384381bda4d8e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
