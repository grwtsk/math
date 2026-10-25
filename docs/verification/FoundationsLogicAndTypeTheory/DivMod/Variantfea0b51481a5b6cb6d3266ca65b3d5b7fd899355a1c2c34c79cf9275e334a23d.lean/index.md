# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.DivMod.Variantfea0b51481a5b6cb6d3266ca65b3d5b7fd899355a1c2c34c79cf9275e334a23d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15a06da89c4c393594ba208842a73db450b91144",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/DivMod/Variantfea0b51481a5b6cb6d3266ca65b3d5b7fd899355a1c2c34c79cf9275e334a23d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/DivMod/Variantfea0b51481a5b6cb6d3266ca65b3d5b7fd899355a1c2c34c79cf9275e334a23d.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/DivMod/Variantfea0b51481a5b6cb6d3266ca65b3d5b7fd899355a1c2c34c79cf9275e334a23d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15a06da89c4c393594ba208842a73db450b91144`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/DivMod/Variantfea0b51481a5b6cb6d3266ca65b3d5b7fd899355a1c2c34c79cf9275e334a23d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/DivMod/Variantfea0b51481a5b6cb6d3266ca65b3d5b7fd899355a1c2c34c79cf9275e334a23d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mul_ediv_le_mul_ediv_assoc](../../../../mathematics/FoundationsLogicAndTypeTheory/DivMod/Variantfea0b51481a5b6cb6d3266ca65b3d5b7fd899355a1c2c34c79cf9275e334a23d.lean/declarations/mul-ediv-le-mul-ediv-assoc--a36d9251f68857e2554b79a6.md) | 26 | `result-track:a36d9251f68857e2554b79a6cc71390a1594187608f978449287c1a023bfa9f3` |
| 2 | `theorem` | [ediv_ediv_eq_ediv_mul](../../../../mathematics/FoundationsLogicAndTypeTheory/DivMod/Variantfea0b51481a5b6cb6d3266ca65b3d5b7fd899355a1c2c34c79cf9275e334a23d.lean/declarations/ediv-ediv-eq-ediv-mul--06d43f5e9d08681ca48a0270.md) | 33 | `result-track:06d43f5e9d08681ca48a02705bbeefec797a81cd651cd5f1d672a9313a2f84b3` |
| 3 | `theorem` | [fdiv_fdiv_eq_fdiv_mul](../../../../mathematics/FoundationsLogicAndTypeTheory/DivMod/Variantfea0b51481a5b6cb6d3266ca65b3d5b7fd899355a1c2c34c79cf9275e334a23d.lean/declarations/fdiv-fdiv-eq-fdiv-mul--dc7009c6b96f3dd6c50e9c8f.md) | 57 | `result-track:dc7009c6b96f3dd6c50e9c8f4254aecdb82938358d235f98f0281fcc7f3e1d0d` |
| 4 | `theorem` | [emod_eq_sub_self_emod](../../../../mathematics/FoundationsLogicAndTypeTheory/DivMod/Variantfea0b51481a5b6cb6d3266ca65b3d5b7fd899355a1c2c34c79cf9275e334a23d.lean/declarations/emod-eq-sub-self-emod--23af62b47f228ecc7cb39c66.md) | 66 | `result-track:23af62b47f228ecc7cb39c66b9f32fd1d1b2d6e133ab61d5ec6cff3923545100` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
