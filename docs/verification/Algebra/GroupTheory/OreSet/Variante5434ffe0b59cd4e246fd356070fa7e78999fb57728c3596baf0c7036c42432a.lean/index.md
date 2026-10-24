# Verification target: GRWTSK.Algebra.GroupTheory.OreSet.Variante5434ffe0b59cd4e246fd356070fa7e78999fb57728c3596baf0c7036c42432a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0478b8de87fbb1566946ac1957f6f007ce7b84e0",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/OreSet/Variante5434ffe0b59cd4e246fd356070fa7e78999fb57728c3596baf0c7036c42432a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variante5434ffe0b59cd4e246fd356070fa7e78999fb57728c3596baf0c7036c42432a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variante5434ffe0b59cd4e246fd356070fa7e78999fb57728c3596baf0c7036c42432a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0478b8de87fbb1566946ac1957f6f007ce7b84e0`.

Source path: `GRWTSK/Algebra/GroupTheory/OreSet/Variante5434ffe0b59cd4e246fd356070fa7e78999fb57728c3596baf0c7036c42432a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/OreSet/Variante5434ffe0b59cd4e246fd356070fa7e78999fb57728c3596baf0c7036c42432a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Submonoid.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Regular` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.OreLocalization.OreSet` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [oreSetOfCancelMonoidWithZero](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variante5434ffe0b59cd4e246fd356070fa7e78999fb57728c3596baf0c7036c42432a.lean/declarations/oresetofcancelmonoidwithzero--0e0e1488a337e3061b485bc7.md) | 37 | `declaration-track:0e0e1488a337e3061b485bc745c722b00e8f660b6a00924e0f0cae27077fdb76` |
| 2 | `def` | [oreSetOfNoZeroDivisors](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variante5434ffe0b59cd4e246fd356070fa7e78999fb57728c3596baf0c7036c42432a.lean/declarations/oresetofnozerodivisors--82ace1ef75611710895265a0.md) | 47 | `declaration-track:82ace1ef75611710895265a008d0e60ad3d39eacdc9d1d7b0113b8a7a34554a7` |
| 3 | `lemma` | [nonempty_oreSet_iff](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variante5434ffe0b59cd4e246fd356070fa7e78999fb57728c3596baf0c7036c42432a.lean/declarations/nonempty-oreset-iff--5148c597b6c22c5e6062c230.md) | 53 | `result-track:5148c597b6c22c5e6062c2308c536d8be7162144aa0b7f7f4cf5b69d6d000881` |
| 4 | `lemma` | [nonempty_oreSet_iff_of_noZeroDivisors](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variante5434ffe0b59cd4e246fd356070fa7e78999fb57728c3596baf0c7036c42432a.lean/declarations/nonempty-oreset-iff-of-nozerodivisors--abb902a7a4f481690875f452.md) | 62 | `result-track:abb902a7a4f481690875f4524d1e9a0ef92d190a5770de151674312e6e37927f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
