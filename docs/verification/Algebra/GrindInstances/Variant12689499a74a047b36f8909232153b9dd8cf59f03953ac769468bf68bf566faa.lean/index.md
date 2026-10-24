# Verification target: GRWTSK.Algebra.GrindInstances.Variant12689499a74a047b36f8909232153b9dd8cf59f03953ac769468bf68bf566faa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6925363a825f95f1b8ed96619daff500fcfa8525",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GrindInstances/Variant12689499a74a047b36f8909232153b9dd8cf59f03953ac769468bf68bf566faa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/GrindInstances/Variant12689499a74a047b36f8909232153b9dd8cf59f03953ac769468bf68bf566faa.lean/index.md) · [Full source](../../../../mathematics/Algebra/GrindInstances/Variant12689499a74a047b36f8909232153b9dd8cf59f03953ac769468bf68bf566faa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6925363a825f95f1b8ed96619daff500fcfa8525`.

Source path: `GRWTSK/Algebra/GrindInstances/Variant12689499a74a047b36f8909232153b9dd8cf59f03953ac769468bf68bf566faa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GrindInstances/Variant12689499a74a047b36f8909232153b9dd8cf59f03953ac769468bf68bf566faa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [CommRing.toGrindCommRing](../../../../mathematics/Algebra/GrindInstances/Variant12689499a74a047b36f8909232153b9dd8cf59f03953ac769468bf68bf566faa.lean/declarations/commring-togrindcommring--6a48754ae0c90a489caf4266.md) | 17 | `declaration-track:6a48754ae0c90a489caf4266081af36b3e549b8030fde76ed87439e6800a27d9` |
| 2 | `theorem` | [CommRing.toGrindCommRing_ofNat](../../../../mathematics/Algebra/GrindInstances/Variant12689499a74a047b36f8909232153b9dd8cf59f03953ac769468bf68bf566faa.lean/declarations/commring-togrindcommring-ofnat--abcec203a1bdb0168c65775a.md) | 48 | `result-track:abcec203a1bdb0168c65775a42c349640da6d2754e38c96e8609be5e2fe943f4` |
| 3 | `example` | [(anonymous)](../../../../mathematics/Algebra/GrindInstances/Variant12689499a74a047b36f8909232153b9dd8cf59f03953ac769468bf68bf566faa.lean/declarations/example--2e7dd6b169b643ae16b7add0.md) | 59 | `declaration-track:2e7dd6b169b643ae16b7add06cda03ce66835a25b328db99745f553e1ef569aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
