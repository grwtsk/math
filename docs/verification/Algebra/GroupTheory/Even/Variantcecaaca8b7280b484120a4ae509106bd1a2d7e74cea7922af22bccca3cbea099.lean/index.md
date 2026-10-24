# Verification target: GRWTSK.Algebra.GroupTheory.Even.Variantcecaaca8b7280b484120a4ae509106bd1a2d7e74cea7922af22bccca3cbea099

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5991e2bc18c137c1c730e787855a035728e600c1",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Even/Variantcecaaca8b7280b484120a4ae509106bd1a2d7e74cea7922af22bccca3cbea099.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Even/Variantcecaaca8b7280b484120a4ae509106bd1a2d7e74cea7922af22bccca3cbea099.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Even/Variantcecaaca8b7280b484120a4ae509106bd1a2d7e74cea7922af22bccca3cbea099.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5991e2bc18c137c1c730e787855a035728e600c1`.

Source path: `GRWTSK/Algebra/GroupTheory/Even/Variantcecaaca8b7280b484120a4ae509106bd1a2d7e74cea7922af22bccca3cbea099.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Even/Variantcecaaca8b7280b484120a4ae509106bd1a2d7e74cea7922af22bccca3cbea099.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Even` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [square](../../../../../mathematics/Algebra/GroupTheory/Even/Variantcecaaca8b7280b484120a4ae509106bd1a2d7e74cea7922af22bccca3cbea099.lean/declarations/square--5a79de16d0ebaa7d3c40e001.md) | 35 | `declaration-track:5a79de16d0ebaa7d3c40e0010558f2a658afe963bb4fc0664c7eeaabdb913371` |
| 2 | `theorem` | [mem_square](../../../../../mathematics/Algebra/GroupTheory/Even/Variantcecaaca8b7280b484120a4ae509106bd1a2d7e74cea7922af22bccca3cbea099.lean/declarations/mem-square--336cfd95fd50aa0a5d6a6ff2.md) | 40 | `result-track:336cfd95fd50aa0a5d6a6ff23d32fa5a876d584cd0dc3cfe057dad860aee0206` |
| 3 | `theorem` | [coe_square](../../../../../mathematics/Algebra/GroupTheory/Even/Variantcecaaca8b7280b484120a4ae509106bd1a2d7e74cea7922af22bccca3cbea099.lean/declarations/coe-square--36d98d4c7931ff72fd53a51c.md) | 43 | `result-track:36d98d4c7931ff72fd53a51caf24c855c78d9dd5dd22cabca705ee7d7a36c9c2` |
| 4 | `def` | [square](../../../../../mathematics/Algebra/GroupTheory/Even/Variantcecaaca8b7280b484120a4ae509106bd1a2d7e74cea7922af22bccca3cbea099.lean/declarations/square--8147c0c27bdecfb5483b7db0.md) | 57 | `declaration-track:8147c0c27bdecfb5483b7db0df73b860a4962cf449baa21533cad5c6ba9fb8b2` |
| 5 | `theorem` | [square_toSubsemigroup](../../../../../mathematics/Algebra/GroupTheory/Even/Variantcecaaca8b7280b484120a4ae509106bd1a2d7e74cea7922af22bccca3cbea099.lean/declarations/square-tosubsemigroup--78d6067bc486d8785c14451f.md) | 62 | `result-track:78d6067bc486d8785c14451f35723760b2892a4e7ede24ab6cee0adf555be93d` |
| 6 | `theorem` | [mem_square](../../../../../mathematics/Algebra/GroupTheory/Even/Variantcecaaca8b7280b484120a4ae509106bd1a2d7e74cea7922af22bccca3cbea099.lean/declarations/mem-square--27be563a53cf56886ac635d0.md) | 65 | `result-track:27be563a53cf56886ac635d0ffdc5251af02a19b5fd964bcdf1f03f5c5d3d78b` |
| 7 | `theorem` | [coe_square](../../../../../mathematics/Algebra/GroupTheory/Even/Variantcecaaca8b7280b484120a4ae509106bd1a2d7e74cea7922af22bccca3cbea099.lean/declarations/coe-square--cb08bc9449887773559b7916.md) | 68 | `result-track:cb08bc9449887773559b791693837e3d6a9229326bdec29521bb777098ba24e5` |
| 8 | `def` | [square](../../../../../mathematics/Algebra/GroupTheory/Even/Variantcecaaca8b7280b484120a4ae509106bd1a2d7e74cea7922af22bccca3cbea099.lean/declarations/square--2071fd685776964e1e0145f1.md) | 82 | `declaration-track:2071fd685776964e1e0145f1f5a9dbec7f2468b16cd8f2ab4163e1afc5325e7c` |
| 9 | `theorem` | [square_toSubmonoid](../../../../../mathematics/Algebra/GroupTheory/Even/Variantcecaaca8b7280b484120a4ae509106bd1a2d7e74cea7922af22bccca3cbea099.lean/declarations/square-tosubmonoid--8d94a74ac5e1aca92b1eb1ba.md) | 87 | `result-track:8d94a74ac5e1aca92b1eb1ba9ff02baa20a5593a005b4bae7a9825192d111ff8` |
| 10 | `theorem` | [mem_square](../../../../../mathematics/Algebra/GroupTheory/Even/Variantcecaaca8b7280b484120a4ae509106bd1a2d7e74cea7922af22bccca3cbea099.lean/declarations/mem-square--b3e681cef452dcb6860f4a8a.md) | 90 | `result-track:b3e681cef452dcb6860f4a8a1edc1f6446265ef728d22823cc64d9d642313fc0` |
| 11 | `theorem` | [coe_square](../../../../../mathematics/Algebra/GroupTheory/Even/Variantcecaaca8b7280b484120a4ae509106bd1a2d7e74cea7922af22bccca3cbea099.lean/declarations/coe-square--9ae1cd51460d748ccc634159.md) | 93 | `result-track:9ae1cd51460d748ccc6341599bef21868b0f007b1c0ab864177d593520b1dc70` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
