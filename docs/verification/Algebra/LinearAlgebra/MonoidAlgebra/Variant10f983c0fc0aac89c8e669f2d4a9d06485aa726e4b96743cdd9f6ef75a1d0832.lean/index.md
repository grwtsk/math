# Verification target: GRWTSK.Algebra.LinearAlgebra.MonoidAlgebra.Variant10f983c0fc0aac89c8e669f2d4a9d06485aa726e4b96743cdd9f6ef75a1d0832

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5aa726b1460cdedc3a9ca304a1133c5624248743",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MonoidAlgebra/Variant10f983c0fc0aac89c8e669f2d4a9d06485aa726e4b96743cdd9f6ef75a1d0832.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MonoidAlgebra/Variant10f983c0fc0aac89c8e669f2d4a9d06485aa726e4b96743cdd9f6ef75a1d0832.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MonoidAlgebra/Variant10f983c0fc0aac89c8e669f2d4a9d06485aa726e4b96743cdd9f6ef75a1d0832.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5aa726b1460cdedc3a9ca304a1133c5624248743`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MonoidAlgebra/Variant10f983c0fc0aac89c8e669f2d4a9d06485aa726e4b96743cdd9f6ef75a1d0832.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MonoidAlgebra/Variant10f983c0fc0aac89c8e669f2d4a9d06485aa726e4b96743cdd9f6ef75a1d0832.lean.json)

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
| 1 | `instance` | [instCoalgebra](../../../../../mathematics/Algebra/LinearAlgebra/MonoidAlgebra/Variant10f983c0fc0aac89c8e669f2d4a9d06485aa726e4b96743cdd9f6ef75a1d0832.lean/declarations/instcoalgebra--a314a5bc088c7f8aa33c650b.md) | 39 | `declaration-track:a314a5bc088c7f8aa33c650bf944543dd7c883ac504310a104dcc3cd3c27cf71` |
| 2 | `instance` | [instIsCocomm](../../../../../mathematics/Algebra/LinearAlgebra/MonoidAlgebra/Variant10f983c0fc0aac89c8e669f2d4a9d06485aa726e4b96743cdd9f6ef75a1d0832.lean/declarations/instiscocomm--5d5a4f3e4befe0021427215d.md) | 42 | `declaration-track:5d5a4f3e4befe0021427215dc068e92955aaeea7c8adc36713639429564154c3` |
| 3 | `lemma` | [counit_single](../../../../../mathematics/Algebra/LinearAlgebra/MonoidAlgebra/Variant10f983c0fc0aac89c8e669f2d4a9d06485aa726e4b96743cdd9f6ef75a1d0832.lean/declarations/counit-single--478cc12f96c684a067155e22.md) | 45 | `result-track:478cc12f96c684a067155e225c7b366b638956de9b7ae5fa3875560aa5876abe` |
| 4 | `lemma` | [comul_def](../../../../../mathematics/Algebra/LinearAlgebra/MonoidAlgebra/Variant10f983c0fc0aac89c8e669f2d4a9d06485aa726e4b96743cdd9f6ef75a1d0832.lean/declarations/comul-def--d94de4a446bfbb16e0b569d5.md) | 50 | `result-track:d94de4a446bfbb16e0b569d51b06b55a5318628553047ee4ee009d2f1a86b349` |
| 5 | `lemma` | [comul_single](../../../../../mathematics/Algebra/LinearAlgebra/MonoidAlgebra/Variant10f983c0fc0aac89c8e669f2d4a9d06485aa726e4b96743cdd9f6ef75a1d0832.lean/declarations/comul-single--502478925167309d0a7e06ba.md) | 56 | `result-track:502478925167309d0a7e06ba39d1060d6abdf414bb893d8042612e070bc5cacd` |
| 6 | `instance` | [instCoalgebra](../../../../../mathematics/Algebra/LinearAlgebra/MonoidAlgebra/Variant10f983c0fc0aac89c8e669f2d4a9d06485aa726e4b96743cdd9f6ef75a1d0832.lean/declarations/instcoalgebra--c185ee8e8fb0733680c3f209.md) | 69 | `declaration-track:c185ee8e8fb0733680c3f209e26e561ca5ddf6076be0b3275e7171fdc800a2c1` |
| 7 | `instance` | [instIsCocomm](../../../../../mathematics/Algebra/LinearAlgebra/MonoidAlgebra/Variant10f983c0fc0aac89c8e669f2d4a9d06485aa726e4b96743cdd9f6ef75a1d0832.lean/declarations/instiscocomm--5166436d0ac14b966a75ad1b.md) | 71 | `declaration-track:5166436d0ac14b966a75ad1b473d9d11d429e9f888408e29a0e5b823d7164d72` |
| 8 | `theorem` | [comul_C](../../../../../mathematics/Algebra/LinearAlgebra/MonoidAlgebra/Variant10f983c0fc0aac89c8e669f2d4a9d06485aa726e4b96743cdd9f6ef75a1d0832.lean/declarations/comul-c--4d18c1ab7f4c6fa154f2f48d.md) | 76 | `result-track:4d18c1ab7f4c6fa154f2f48db1c678fac42e039a9bddff57c60daf955076772f` |
| 9 | `theorem` | [comul_C_mul_T](../../../../../mathematics/Algebra/LinearAlgebra/MonoidAlgebra/Variant10f983c0fc0aac89c8e669f2d4a9d06485aa726e4b96743cdd9f6ef75a1d0832.lean/declarations/comul-c-mul-t--95037ad2d1eeee39929524a1.md) | 82 | `result-track:95037ad2d1eeee39929524a1abfd0a93c3b7c5182cce7b9c4f03b31dc8c5e494` |
| 10 | `theorem` | [comul_C_mul_T_self](../../../../../mathematics/Algebra/LinearAlgebra/MonoidAlgebra/Variant10f983c0fc0aac89c8e669f2d4a9d06485aa726e4b96743cdd9f6ef75a1d0832.lean/declarations/comul-c-mul-t-self--d81a59f7c3618b0f5ec7e68d.md) | 87 | `result-track:d81a59f7c3618b0f5ec7e68d8fa19543a0a15d09983a3e5e9e7ff6fcb52a5605` |
| 11 | `theorem` | [counit_C](../../../../../mathematics/Algebra/LinearAlgebra/MonoidAlgebra/Variant10f983c0fc0aac89c8e669f2d4a9d06485aa726e4b96743cdd9f6ef75a1d0832.lean/declarations/counit-c--e622e02ddf437cd150f7f1d1.md) | 92 | `result-track:e622e02ddf437cd150f7f1d17dc3f8ddcc70c4240eecb4bb1f281077f781a52a` |
| 12 | `theorem` | [counit_C_mul_T](../../../../../mathematics/Algebra/LinearAlgebra/MonoidAlgebra/Variant10f983c0fc0aac89c8e669f2d4a9d06485aa726e4b96743cdd9f6ef75a1d0832.lean/declarations/counit-c-mul-t--da7e609983e2b323d2a400e5.md) | 97 | `result-track:da7e609983e2b323d2a400e54433f6e95250e244797b19cda5bb1a990743d83c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
