# Verification target: GRWTSK.Algebra.LinearAlgebra.PivotCertificate.Variantcf9ac8197566a7bce5935492d82597b1bb1a99171c490295c3023dbc0ce61aaf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c350b5baf00c6ec7bcd0230a7f3c9c544463ebc",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PivotCertificate/Variantcf9ac8197566a7bce5935492d82597b1bb1a99171c490295c3023dbc0ce61aaf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PivotCertificate/Variantcf9ac8197566a7bce5935492d82597b1bb1a99171c490295c3023dbc0ce61aaf.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PivotCertificate/Variantcf9ac8197566a7bce5935492d82597b1bb1a99171c490295c3023dbc0ce61aaf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c350b5baf00c6ec7bcd0230a7f3c9c544463ebc`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PivotCertificate/Variantcf9ac8197566a7bce5935492d82597b1bb1a99171c490295c3023dbc0ce61aaf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PivotCertificate/Variantcf9ac8197566a7bce5935492d82597b1bb1a99171c490295c3023dbc0ce61aaf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Linear.Pivot` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.Linear.DeterminantWitness` — import line 2; external provider; requires a separately pinned dependency.
- `Folder.Linear.Certificate` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pivot_certificate_sound](../../../../../mathematics/Algebra/LinearAlgebra/PivotCertificate/Variantcf9ac8197566a7bce5935492d82597b1bb1a99171c490295c3023dbc0ce61aaf.lean/declarations/pivot-certificate-sound--d51a7270d6929dcbc155c7da.md) | 21 | `result-track:d51a7270d6929dcbc155c7da5c329a2bf1f54cfbc07e46b45f1125a5bd69410b` |
| 2 | `theorem` | [determinant_certificate_sound](../../../../../mathematics/Algebra/LinearAlgebra/PivotCertificate/Variantcf9ac8197566a7bce5935492d82597b1bb1a99171c490295c3023dbc0ce61aaf.lean/declarations/determinant-certificate-sound--d871065df8da965c089df37d.md) | 30 | `result-track:d871065df8da965c089df37d085d60b1dc0599babd20da5af8c13fa014f92fc3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
