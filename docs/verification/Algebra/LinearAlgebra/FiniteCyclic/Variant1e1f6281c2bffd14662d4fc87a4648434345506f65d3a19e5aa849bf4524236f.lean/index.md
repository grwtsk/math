# Verification target: GRWTSK.Algebra.LinearAlgebra.FiniteCyclic.Variant1e1f6281c2bffd14662d4fc87a4648434345506f65d3a19e5aa849bf4524236f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "72c64f3139a077ea24b44d9f319cbafe02fe215e",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FiniteCyclic/Variant1e1f6281c2bffd14662d4fc87a4648434345506f65d3a19e5aa849bf4524236f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCyclic/Variant1e1f6281c2bffd14662d4fc87a4648434345506f65d3a19e5aa849bf4524236f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCyclic/Variant1e1f6281c2bffd14662d4fc87a4648434345506f65d3a19e5aa849bf4524236f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `72c64f3139a077ea24b44d9f319cbafe02fe215e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FiniteCyclic/Variant1e1f6281c2bffd14662d4fc87a4648434345506f65d3a19e5aa849bf4524236f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FiniteCyclic/Variant1e1f6281c2bffd14662d4fc87a4648434345506f65d3a19e5aa849bf4524236f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coinvariantsTensorResolutionIso](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCyclic/Variant1e1f6281c2bffd14662d4fc87a4648434345506f65d3a19e5aa849bf4524236f.lean/declarations/coinvariantstensorresolutioniso--43a80fcf67c6eae76f1c7e19.md) | 56 | `declaration-track:43a80fcf67c6eae76f1c7e19a9626f58e88fee2c782a97b38c0d59a5d13a6b23` |
| 2 | `abbrev` | [groupHomologyIso₀](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCyclic/Variant1e1f6281c2bffd14662d4fc87a4648434345506f65d3a19e5aa849bf4524236f.lean/declarations/grouphomologyiso--fd74023120eaf1ca8570ee21.md) | 73 | `declaration-track:fd74023120eaf1ca8570ee21074be478340391ed398a0754a3cb6e72f7a40419` |
| 3 | `def` | [groupHomologyIsoEven](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCyclic/Variant1e1f6281c2bffd14662d4fc87a4648434345506f65d3a19e5aa849bf4524236f.lean/declarations/grouphomologyisoeven--f391488126ff3372970b51f6.md) | 85 | `declaration-track:f391488126ff3372970b51f64cdbfc393136e1bb1846954bba6f093a483c1603` |
| 4 | `abbrev` | [groupHomologyπEven](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCyclic/Variant1e1f6281c2bffd14662d4fc87a4648434345506f65d3a19e5aa849bf4524236f.lean/declarations/grouphomology-even--00d1b6008ac9f7f45089787f.md) | 97 | `declaration-track:00d1b6008ac9f7f45089787f0b55e64c02b0a3aa583c45a4e7b73becde547fc2` |
| 5 | `lemma` | [groupHomologyπEven_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCyclic/Variant1e1f6281c2bffd14662d4fc87a4648434345506f65d3a19e5aa849bf4524236f.lean/declarations/grouphomology-even-eq-zero-iff--689ea5a1394eb261f0d46bb7.md) | 105 | `result-track:689ea5a1394eb261f0d46bb7fbd2051349a3defb8ccf339cdd2de0966412193d` |
| 6 | `lemma` | [groupHomologyπEven_eq_iff](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCyclic/Variant1e1f6281c2bffd14662d4fc87a4648434345506f65d3a19e5aa849bf4524236f.lean/declarations/grouphomology-even-eq-iff--94dd4ca2cc6faed0b40017c9.md) | 113 | `result-track:94dd4ca2cc6faed0b40017c9b61af618e5c1312a49bca78367d4e01c358fe89b` |
| 7 | `def` | [groupHomologyIsoOdd](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCyclic/Variant1e1f6281c2bffd14662d4fc87a4648434345506f65d3a19e5aa849bf4524236f.lean/declarations/grouphomologyisoodd--50b7a23c6ff4305b7e8484ac.md) | 122 | `declaration-track:50b7a23c6ff4305b7e8484acc80c02cfd69f5da02b2035665bb4b6f5dabc066d` |
| 8 | `abbrev` | [groupHomologyπOdd](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCyclic/Variant1e1f6281c2bffd14662d4fc87a4648434345506f65d3a19e5aa849bf4524236f.lean/declarations/grouphomology-odd--edaac6b29fbae8dd038cb3ad.md) | 132 | `declaration-track:edaac6b29fbae8dd038cb3adb79e9503a1c50023e1985a50800e3665c2419932` |
| 9 | `lemma` | [groupHomologyπOdd_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCyclic/Variant1e1f6281c2bffd14662d4fc87a4648434345506f65d3a19e5aa849bf4524236f.lean/declarations/grouphomology-odd-eq-zero-iff--a83b91d39eefba7b406c0228.md) | 139 | `result-track:a83b91d39eefba7b406c022882657e1e606726b2a7e8a969712b5efd8a3a7f1e` |
| 10 | `lemma` | [groupHomologyπOdd_eq_iff](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCyclic/Variant1e1f6281c2bffd14662d4fc87a4648434345506f65d3a19e5aa849bf4524236f.lean/declarations/grouphomology-odd-eq-iff--a13a794055009e3204bc8dc5.md) | 145 | `result-track:a13a794055009e3204bc8dc5c667d8c4e2fe2945eb03cad8b62efe653a9d4fa9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
