# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Counit.Variantaa2e47d57ecf67f901afa597215e5de018e0b4602d776a58be51cf69a316c2e1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be5ce465ef3a6cacb3f9d75bff28dc1736e3237e",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Counit/Variantaa2e47d57ecf67f901afa597215e5de018e0b4602d776a58be51cf69a316c2e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Counit/Variantaa2e47d57ecf67f901afa597215e5de018e0b4602d776a58be51cf69a316c2e1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Counit/Variantaa2e47d57ecf67f901afa597215e5de018e0b4602d776a58be51cf69a316c2e1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be5ce465ef3a6cacb3f9d75bff28dc1736e3237e`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Counit/Variantaa2e47d57ecf67f901afa597215e5de018e0b4602d776a58be51cf69a316c2e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Counit/Variantaa2e47d57ecf67f901afa597215e5de018e0b4602d776a58be51cf69a316c2e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.Eval` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ACounit](../../../../../mathematics/Algebra/CommutativeAlgebra/Counit/Variantaa2e47d57ecf67f901afa597215e5de018e0b4602d776a58be51cf69a316c2e1.lean/declarations/acounit--045ecc1519a36498ad496240.md) | 37 | `declaration-track:045ecc1519a36498ad496240e331caac2b001bdf695886866b8fa8065d2ab74a` |
| 2 | `theorem` | [ACounit_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Counit/Variantaa2e47d57ecf67f901afa597215e5de018e0b4602d776a58be51cf69a316c2e1.lean/declarations/acounit-x--2fc4804ff32d91cc1b5e6e4a.md) | 43 | `result-track:2fc4804ff32d91cc1b5e6e4a5721a43c2cb67287f46e4e93c520da38a40a2a23` |
| 3 | `theorem` | [ACounit_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Counit/Variantaa2e47d57ecf67f901afa597215e5de018e0b4602d776a58be51cf69a316c2e1.lean/declarations/acounit-c--a69aa0e5fdf94bf55866c088.md) | 48 | `result-track:a69aa0e5fdf94bf55866c0888727b1a6439c4c82b2bf0561e78b7c843870b257` |
| 4 | `theorem` | [ACounit_surjective](../../../../../mathematics/Algebra/CommutativeAlgebra/Counit/Variantaa2e47d57ecf67f901afa597215e5de018e0b4602d776a58be51cf69a316c2e1.lean/declarations/acounit-surjective--5285e1ed4a80102ec5520dad.md) | 53 | `result-track:5285e1ed4a80102ec5520dad0644d0ea968fcb1d056fa5f3c741d2b00816a1be` |
| 5 | `def` | [counit](../../../../../mathematics/Algebra/CommutativeAlgebra/Counit/Variantaa2e47d57ecf67f901afa597215e5de018e0b4602d776a58be51cf69a316c2e1.lean/declarations/counit--620c4d129837a0870549eb6c.md) | 60 | `declaration-track:620c4d129837a0870549eb6cfd86b67b7bc8ec328147b2c71b852673cb55efe1` |
| 6 | `def` | [counitNat](../../../../../mathematics/Algebra/CommutativeAlgebra/Counit/Variantaa2e47d57ecf67f901afa597215e5de018e0b4602d776a58be51cf69a316c2e1.lean/declarations/counitnat--af1e8a5935f8681e2b355272.md) | 68 | `declaration-track:af1e8a5935f8681e2b3552729dff354499b341878deffdd0a63df8aa8c09fd3d` |
| 7 | `theorem` | [counit_surjective](../../../../../mathematics/Algebra/CommutativeAlgebra/Counit/Variantaa2e47d57ecf67f901afa597215e5de018e0b4602d776a58be51cf69a316c2e1.lean/declarations/counit-surjective--7b8b37ccb5fb3a17a6d5f83b.md) | 71 | `result-track:7b8b37ccb5fb3a17a6d5f83baed61ff9aa8589c4b886b456845279f6b5f61124` |
| 8 | `theorem` | [counitNat_surjective](../../../../../mathematics/Algebra/CommutativeAlgebra/Counit/Variantaa2e47d57ecf67f901afa597215e5de018e0b4602d776a58be51cf69a316c2e1.lean/declarations/counitnat-surjective--96174fcf526b83185cd77292.md) | 74 | `result-track:96174fcf526b83185cd7729280b823839773839555bd01e94923d88ca3fd96ab` |
| 9 | `theorem` | [counit_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Counit/Variantaa2e47d57ecf67f901afa597215e5de018e0b4602d776a58be51cf69a316c2e1.lean/declarations/counit-c--aa5c502f7bc7cb749cfbb621.md) | 77 | `result-track:aa5c502f7bc7cb749cfbb621ff0f429e2aa4ec92b01ba60e8330ea3dfcc883a0` |
| 10 | `theorem` | [counitNat_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Counit/Variantaa2e47d57ecf67f901afa597215e5de018e0b4602d776a58be51cf69a316c2e1.lean/declarations/counitnat-c--f47e71a9124b64ccb98ce5b5.md) | 80 | `result-track:f47e71a9124b64ccb98ce5b524833f4300189dcb3ead16091a8b386de2fdedd1` |
| 11 | `theorem` | [counit_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Counit/Variantaa2e47d57ecf67f901afa597215e5de018e0b4602d776a58be51cf69a316c2e1.lean/declarations/counit-x--c074cccfd96025bfcf8c6fbf.md) | 86 | `result-track:c074cccfd96025bfcf8c6fbfcbe1f613b0f2ed713a418e08fc207adb6b4c22de` |
| 12 | `theorem` | [counitNat_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Counit/Variantaa2e47d57ecf67f901afa597215e5de018e0b4602d776a58be51cf69a316c2e1.lean/declarations/counitnat-x--032578b17f6f67011615c458.md) | 90 | `result-track:032578b17f6f67011615c4584321a9a6d71e2143e469a35beb57e076181322e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
