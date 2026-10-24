# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variantd2e0a6b26a663c59fc64322e6122f473862e7ef223f409490553ab7c4e649f9b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e0597c32b9e297ad7baed1cfd9a7077b74e3ac7b",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variantd2e0a6b26a663c59fc64322e6122f473862e7ef223f409490553ab7c4e649f9b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd2e0a6b26a663c59fc64322e6122f473862e7ef223f409490553ab7c4e649f9b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd2e0a6b26a663c59fc64322e6122f473862e7ef223f409490553ab7c4e649f9b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e0597c32b9e297ad7baed1cfd9a7077b74e3ac7b`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variantd2e0a6b26a663c59fc64322e6122f473862e7ef223f409490553ab7c4e649f9b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variantd2e0a6b26a663c59fc64322e6122f473862e7ef223f409490553ab7c4e649f9b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.End` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Action.Prod` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Prod` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [MulAction.bijective₀](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd2e0a6b26a663c59fc64322e6122f473862e7ef223f409490553ab7c4e649f9b.lean/declarations/mulaction-bijective--b737953cd036c2b69c45b395.md) | 64 | `result-track:b737953cd036c2b69c45b395738e8795d43b11d554962cce92f23992b1218001` |
| 2 | `lemma` | [MulAction.injective₀](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd2e0a6b26a663c59fc64322e6122f473862e7ef223f409490553ab7c4e649f9b.lean/declarations/mulaction-injective--473e6ed2ec11b49a0bff47d3.md) | 67 | `result-track:473e6ed2ec11b49a0bff47d3a63f6a445e33ba486604b9ac3b9acbc71bf71789` |
| 3 | `lemma` | [MulAction.surjective₀](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd2e0a6b26a663c59fc64322e6122f473862e7ef223f409490553ab7c4e649f9b.lean/declarations/mulaction-surjective--b9b7cb12db274096c88cbe03.md) | 70 | `result-track:b9b7cb12db274096c88cbe039b9b0c6ba8a24c3cd1a7ce6f8f5e837c1e24e146` |
| 4 | `def` | [DistribMulAction.toAddEquiv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd2e0a6b26a663c59fc64322e6122f473862e7ef223f409490553ab7c4e649f9b.lean/declarations/distribmulaction-toaddequiv--c3a05f013217822fa7f7d7d5.md) | 83 | `declaration-track:c3a05f013217822fa7f7d7d542772cfb385d211727a5d858cf8bcda90addb88a` |
| 5 | `def` | [DistribMulAction.toAddAut](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd2e0a6b26a663c59fc64322e6122f473862e7ef223f409490553ab7c4e649f9b.lean/declarations/distribmulaction-toaddaut--2cc58a0d5494a7ffcc29eb51.md) | 93 | `declaration-track:2cc58a0d5494a7ffcc29eb51c762cfab91d8a34947ab10825b5ed0abcee416af` |
| 6 | `def` | [smulMonoidWithZeroHom](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd2e0a6b26a663c59fc64322e6122f473862e7ef223f409490553ab7c4e649f9b.lean/declarations/smulmonoidwithzerohom--3b09a6a7318c7d9ceba89260.md) | 102 | `declaration-track:3b09a6a7318c7d9ceba89260516b377e1711c8621df468cafca5533e6b577163` |
| 7 | `instance` | [applyDistribMulAction](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd2e0a6b26a663c59fc64322e6122f473862e7ef223f409490553ab7c4e649f9b.lean/declarations/applydistribmulaction--0952db56e70b71ff3a6e9768.md) | 111 | `declaration-track:0952db56e70b71ff3a6e976817ad613a157be2dd502d24f66bc2fa403ac04681` |
| 8 | `lemma` | [IsUnit.smul_sub_iff_sub_inv_smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd2e0a6b26a663c59fc64322e6122f473862e7ef223f409490553ab7c4e649f9b.lean/declarations/isunit-smul-sub-iff-sub-inv-smul--fbbbbe151ab478c6437186a3.md) | 120 | `result-track:fbbbbe151ab478c6437186a3f029d30034b9e217829c8b141d0305bccde4fd45` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
