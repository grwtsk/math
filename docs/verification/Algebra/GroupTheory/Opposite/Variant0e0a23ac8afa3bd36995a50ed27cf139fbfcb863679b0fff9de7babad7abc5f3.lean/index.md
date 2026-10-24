# Verification target: GRWTSK.Algebra.GroupTheory.Opposite.Variant0e0a23ac8afa3bd36995a50ed27cf139fbfcb863679b0fff9de7babad7abc5f3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b328aadc85ffd9924af14d3bac89377acdb18d2b",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Opposite/Variant0e0a23ac8afa3bd36995a50ed27cf139fbfcb863679b0fff9de7babad7abc5f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant0e0a23ac8afa3bd36995a50ed27cf139fbfcb863679b0fff9de7babad7abc5f3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant0e0a23ac8afa3bd36995a50ed27cf139fbfcb863679b0fff9de7babad7abc5f3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b328aadc85ffd9924af14d3bac89377acdb18d2b`.

Source path: `GRWTSK/Algebra/GroupTheory/Opposite/Variant0e0a23ac8afa3bd36995a50ed27cf139fbfcb863679b0fff9de7babad7abc5f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Opposite/Variant0e0a23ac8afa3bd36995a50ed27cf139fbfcb863679b0fff9de7babad7abc5f3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Congruence.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Congruence.Opposite` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [op](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant0e0a23ac8afa3bd36995a50ed27cf139fbfcb863679b0fff9de7babad7abc5f3.lean/declarations/op--ea3a3530ef3607f44f07768b.md) | 33 | `declaration-track:ea3a3530ef3607f44f07768b748e37e20c2d2e75e8c0fccc1a264ab6634a9df1` |
| 2 | `lemma` | [op_iff](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant0e0a23ac8afa3bd36995a50ed27cf139fbfcb863679b0fff9de7babad7abc5f3.lean/declarations/op-iff--4c810dc3ff28fb8a49e90d65.md) | 38 | `result-track:4c810dc3ff28fb8a49e90d65de2180654ec2ea7f53296ab52ad90427ce7f9c9f` |
| 3 | `def` | [unop](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant0e0a23ac8afa3bd36995a50ed27cf139fbfcb863679b0fff9de7babad7abc5f3.lean/declarations/unop--14d468bf3960626cbd886485.md) | 43 | `declaration-track:14d468bf3960626cbd88648599704ef91654460dd0f3e251f8fe7d02d92201e3` |
| 4 | `lemma` | [unop_iff](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant0e0a23ac8afa3bd36995a50ed27cf139fbfcb863679b0fff9de7babad7abc5f3.lean/declarations/unop-iff--00c8a09fe2071cc688fba70c.md) | 48 | `result-track:00c8a09fe2071cc688fba70c204c2e7c7208ebe4294b4453b1ef1fa384c3de03` |
| 5 | `def` | [opOrderIso](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant0e0a23ac8afa3bd36995a50ed27cf139fbfcb863679b0fff9de7babad7abc5f3.lean/declarations/oporderiso--8d5d552c2523edf15289c872.md) | 54 | `declaration-track:8d5d552c2523edf15289c872ad7b3c0e2979e79e0edc28c07826b35bedb5840d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
