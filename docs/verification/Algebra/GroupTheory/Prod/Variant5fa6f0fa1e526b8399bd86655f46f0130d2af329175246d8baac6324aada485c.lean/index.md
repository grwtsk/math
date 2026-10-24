# Verification target: GRWTSK.Algebra.GroupTheory.Prod.Variant5fa6f0fa1e526b8399bd86655f46f0130d2af329175246d8baac6324aada485c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "167e9d1fa921865da7cbdc7a92983e3c689b64c1",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Prod/Variant5fa6f0fa1e526b8399bd86655f46f0130d2af329175246d8baac6324aada485c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant5fa6f0fa1e526b8399bd86655f46f0130d2af329175246d8baac6324aada485c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant5fa6f0fa1e526b8399bd86655f46f0130d2af329175246d8baac6324aada485c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `167e9d1fa921865da7cbdc7a92983e3c689b64c1`.

Source path: `GRWTSK/Algebra/GroupTheory/Prod/Variant5fa6f0fa1e526b8399bd86655f46f0130d2af329175246d8baac6324aada485c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Prod/Variant5fa6f0fa1e526b8399bd86655f46f0130d2af329175246d8baac6324aada485c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Prod` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instAddMonoidWithOne](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant5fa6f0fa1e526b8399bd86655f46f0130d2af329175246d8baac6324aada485c.lean/declarations/instaddmonoidwithone--be98e85de8d4100ed9c2c4c7.md) | 28 | `declaration-track:be98e85de8d4100ed9c2c4c7bf6656e65a8eb3435186e25209038e61ec476437` |
| 2 | `theorem` | [fst_natCast](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant5fa6f0fa1e526b8399bd86655f46f0130d2af329175246d8baac6324aada485c.lean/declarations/fst-natcast--6299d87474e3deba6570b222.md) | 35 | `result-track:6299d87474e3deba6570b22266bce8dcab351f5e20da3b4a881b955789b3e15e` |
| 3 | `theorem` | [fst_ofNat](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant5fa6f0fa1e526b8399bd86655f46f0130d2af329175246d8baac6324aada485c.lean/declarations/fst-ofnat--5cad7ffca8779954315b75c0.md) | 38 | `result-track:5cad7ffca8779954315b75c0679ef71117163b999b0bb815a0232ca8aaa9a80d` |
| 4 | `theorem` | [snd_natCast](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant5fa6f0fa1e526b8399bd86655f46f0130d2af329175246d8baac6324aada485c.lean/declarations/snd-natcast--374f61f458c81c6088dc2be9.md) | 43 | `result-track:374f61f458c81c6088dc2be9dafda6bc983924fd94b521fe9d4e18427ce6348c` |
| 5 | `theorem` | [snd_ofNat](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant5fa6f0fa1e526b8399bd86655f46f0130d2af329175246d8baac6324aada485c.lean/declarations/snd-ofnat--08b3fca0e22f75290d4f7f90.md) | 46 | `result-track:08b3fca0e22f75290d4f7f90a0b8d1cb147d2f5edca421b3b2aa55c9351ca976` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
