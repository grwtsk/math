# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BaseCaseEllipticCurve.Variant632e8978e04105a8f0f69ce49ba3fa7b782aaa8255b39919813e59fbbcef84ce

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e868770ec61c089331e983dfb13504edc6ee10df",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BaseCaseEllipticCurve/Variant632e8978e04105a8f0f69ce49ba3fa7b782aaa8255b39919813e59fbbcef84ce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BaseCaseEllipticCurve/Variant632e8978e04105a8f0f69ce49ba3fa7b782aaa8255b39919813e59fbbcef84ce.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BaseCaseEllipticCurve/Variant632e8978e04105a8f0f69ce49ba3fa7b782aaa8255b39919813e59fbbcef84ce.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e868770ec61c089331e983dfb13504edc6ee10df`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BaseCaseEllipticCurve/Variant632e8978e04105a8f0f69ce49ba3fa7b782aaa8255b39919813e59fbbcef84ce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BaseCaseEllipticCurve/Variant632e8978e04105a8f0f69ce49ba3fa7b782aaa8255b39919813e59fbbcef84ce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Arithmetic.EllipticCurve` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.Research.ArithmeticBoundary` — import line 2; external provider; requires a separately pinned dependency.
- `Folder.DerivedSheaf.CriticalCenterNormalization` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CertifiedBaseCaseEllipticCurve](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BaseCaseEllipticCurve/Variant632e8978e04105a8f0f69ce49ba3fa7b782aaa8255b39919813e59fbbcef84ce.lean/declarations/certifiedbasecaseellipticcurve--858c7ce2e9f648d42b1ff704.md) | 26 | `declaration-track:858c7ce2e9f648d42b1ff704def52d0dacf3f9d6e6344f768562ce9dd298c1a8` |
| 2 | `theorem` | [certified_base_curve_lvalue_nonzero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BaseCaseEllipticCurve/Variant632e8978e04105a8f0f69ce49ba3fa7b782aaa8255b39919813e59fbbcef84ce.lean/declarations/certified-base-curve-lvalue-nonzero--504ccc2d98c9ed51a92bc6ba.md) | 39 | `result-track:504ccc2d98c9ed51a92bc6ba919f911080b1ffd18fe66e08d7e0bc9c2a4ec34b` |
| 3 | `theorem` | [certified_base_curve_center_normalized](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BaseCaseEllipticCurve/Variant632e8978e04105a8f0f69ce49ba3fa7b782aaa8255b39919813e59fbbcef84ce.lean/declarations/certified-base-curve-center-normalized--57c3e276656998373862a81d.md) | 44 | `result-track:57c3e276656998373862a81de9dea5a98c7874eb2ac1b31e20bed3c3ec11cf24` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
