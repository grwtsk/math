# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.FreeCommRing.Variantfddcdd5a14e28f55cb25fba0589bf5b8c20d7e0dfadbbb8488c7e2172a17aa8d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79229795a1cca29af25e80b9ba52cd9618ac8e44",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FreeCommRing/Variantfddcdd5a14e28f55cb25fba0589bf5b8c20d7e0dfadbbb8488c7e2172a17aa8d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FreeCommRing/Variantfddcdd5a14e28f55cb25fba0589bf5b8c20d7e0dfadbbb8488c7e2172a17aa8d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FreeCommRing/Variantfddcdd5a14e28f55cb25fba0589bf5b8c20d7e0dfadbbb8488c7e2172a17aa8d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79229795a1cca29af25e80b9ba52cd9618ac8e44`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FreeCommRing/Variantfddcdd5a14e28f55cb25fba0589bf5b8c20d7e0dfadbbb8488c7e2172a17aa8d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/FreeCommRing/Variantfddcdd5a14e28f55cb25fba0589bf5b8c20d7e0dfadbbb8488c7e2172a17aa8d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.ModelTheory.Algebra.Ring.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.FreeCommRing` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_term_realize_eq_freeCommRing](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FreeCommRing/Variantfddcdd5a14e28f55cb25fba0589bf5b8c20d7e0dfadbbb8488c7e2172a17aa8d.lean/declarations/exists-term-realize-eq-freecommring--c85d091b5ed272865ae931ef.md) | 40 | `result-track:c85d091b5ed272865ae931ef80b378117041cd6fb72c85ab57cf38d9d2cf26df` |
| 2 | `def` | [termOfFreeCommRing](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FreeCommRing/Variantfddcdd5a14e28f55cb25fba0589bf5b8c20d7e0dfadbbb8488c7e2172a17aa8d.lean/declarations/termoffreecommring--6f0c31ccff8e23c658f64652.md) | 54 | `declaration-track:6f0c31ccff8e23c658f6465223743adb78bc1a4713aa961b5ba13b40ba344cae` |
| 3 | `theorem` | [realize_termOfFreeCommRing](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FreeCommRing/Variantfddcdd5a14e28f55cb25fba0589bf5b8c20d7e0dfadbbb8488c7e2172a17aa8d.lean/declarations/realize-termoffreecommring--7370a6ea686ddfea085979cf.md) | 60 | `result-track:7370a6ea686ddfea085979cf0b3758a79110b2a0f152c81291101d091ce72b88` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
