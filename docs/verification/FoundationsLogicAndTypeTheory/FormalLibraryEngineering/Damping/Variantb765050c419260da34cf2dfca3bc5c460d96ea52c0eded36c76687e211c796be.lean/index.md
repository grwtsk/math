# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Damping.Variantb765050c419260da34cf2dfca3bc5c460d96ea52c0eded36c76687e211c796be

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c7fdc8e53492e5b5fae939db6f40165539e264d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Damping/Variantb765050c419260da34cf2dfca3bc5c460d96ea52c0eded36c76687e211c796be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Damping/Variantb765050c419260da34cf2dfca3bc5c460d96ea52c0eded36c76687e211c796be.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Damping/Variantb765050c419260da34cf2dfca3bc5c460d96ea52c0eded36c76687e211c796be.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c7fdc8e53492e5b5fae939db6f40165539e264d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Damping/Variantb765050c419260da34cf2dfca3bc5c460d96ea52c0eded36c76687e211c796be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Damping/Variantb765050c419260da34cf2dfca3bc5c460d96ea52c0eded36c76687e211c796be.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Stability.PeriodicOrbit` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DampingLaw](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Damping/Variantb765050c419260da34cf2dfca3bc5c460d96ea52c0eded36c76687e211c796be.lean/declarations/dampinglaw--7d41d2e86c6be08146a93d62.md) | 12 | `declaration-track:7d41d2e86c6be08146a93d623d08d24a7acf7f32416c58508f16d7772d687fbf` |
| 2 | `def` | [dampedMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Damping/Variantb765050c419260da34cf2dfca3bc5c460d96ea52c0eded36c76687e211c796be.lean/declarations/dampedmap--661807d4fc99abe30aa4c018.md) | 17 | `declaration-track:661807d4fc99abe30aa4c01817b2e97242f87e510311001be6d9cc78e52daffc` |
| 3 | `theorem` | [damping_preserves_fixed_points](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Damping/Variantb765050c419260da34cf2dfca3bc5c460d96ea52c0eded36c76687e211c796be.lean/declarations/damping-preserves-fixed-points--4c57cff4354e0bb3cd6c57f5.md) | 24 | `result-track:4c57cff4354e0bb3cd6c57f5e13a17a88e4d3f10da3cff962fda8a6aa17bf218` |
| 4 | `structure` | [DampingAdmissionCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Damping/Variantb765050c419260da34cf2dfca3bc5c460d96ea52c0eded36c76687e211c796be.lean/declarations/dampingadmissioncertificate--71d2908f0d93398a72b20da0.md) | 40 | `declaration-track:71d2908f0d93398a72b20da079e9ac6742f470dbee5925d1a924e934a647454a` |
| 5 | `structure` | [AdmittedDamping](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Damping/Variantb765050c419260da34cf2dfca3bc5c460d96ea52c0eded36c76687e211c796be.lean/declarations/admitteddamping--e6ee5f3230361d3e0a66a1aa.md) | 54 | `declaration-track:e6ee5f3230361d3e0a66a1aa0c0050f50dcf01f41a5fc4f01b0aef60e43c2e33` |
| 6 | `theorem` | [admitted_damping_has_separate_contractivity_evidence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Damping/Variantb765050c419260da34cf2dfca3bc5c460d96ea52c0eded36c76687e211c796be.lean/declarations/admitted-damping-has-separate-contractivity-evidence--980ef64cd8eaafb10d1815ae.md) | 71 | `result-track:980ef64cd8eaafb10d1815aeee85255126071aa0d8c804d15e3e03182a55e078` |
| 7 | `theorem` | [admitted_damping_requires_owner_reference](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Damping/Variantb765050c419260da34cf2dfca3bc5c460d96ea52c0eded36c76687e211c796be.lean/declarations/admitted-damping-requires-owner-reference--6a25055fa68cda65c409a0d4.md) | 82 | `result-track:6a25055fa68cda65c409a0d487e0790d8b93746073908efc511057d64c95dd0a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
