# Verification target: GRWTSK.Algebra.GroupTheory.End.Variant3a84629234ee4bf7eb905a945800b1fd7b532a008a40953b0e35ae4cb42292cb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "250f6726f534cf953ad01cfa2a2ccaa93dedf5ce",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/End/Variant3a84629234ee4bf7eb905a945800b1fd7b532a008a40953b0e35ae4cb42292cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/End/Variant3a84629234ee4bf7eb905a945800b1fd7b532a008a40953b0e35ae4cb42292cb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/End/Variant3a84629234ee4bf7eb905a945800b1fd7b532a008a40953b0e35ae4cb42292cb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `250f6726f534cf953ad01cfa2a2ccaa93dedf5ce`.

Source path: `GRWTSK/Algebra/GroupTheory/End/Variant3a84629234ee4bf7eb905a945800b1fd7b532a008a40953b0e35ae4cb42292cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/End/Variant3a84629234ee4bf7eb905a945800b1fd7b532a008a40953b0e35ae4cb42292cb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Hom` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Equiv.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.Units` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Function.Surjective.distribMulActionLeft](../../../../../mathematics/Algebra/GroupTheory/End/Variant3a84629234ee4bf7eb905a945800b1fd7b532a008a40953b0e35ae4cb42292cb.lean/declarations/function-surjective-distribmulactionleft--9344dbde28198b2be4a34480.md) | 24 | `declaration-track:9344dbde28198b2be4a34480ab14aad20f01b397d4316b42c13fc1c20e91deb4` |
| 2 | `abbrev` | [DistribMulAction.compHom](../../../../../mathematics/Algebra/GroupTheory/End/Variant3a84629234ee4bf7eb905a945800b1fd7b532a008a40953b0e35ae4cb42292cb.lean/declarations/distribmulaction-comphom--36dc9e47caca2a4f57354cb9.md) | 35 | `declaration-track:36dc9e47caca2a4f57354cb9fb0ff0b17deccf62a9b45397cd808a9a48f6737d` |
| 3 | `abbrev` | [MulDistribMulAction.compHom](../../../../../mathematics/Algebra/GroupTheory/End/Variant3a84629234ee4bf7eb905a945800b1fd7b532a008a40953b0e35ae4cb42292cb.lean/declarations/muldistribmulaction-comphom--da366b92651dd1a36e19b10d.md) | 46 | `declaration-track:da366b92651dd1a36e19b10d3fa95946601064c85fd960dd783a4850b1480ff8` |
| 4 | `instance` | [AddMonoid.End.applyDistribMulAction](../../../../../mathematics/Algebra/GroupTheory/End/Variant3a84629234ee4bf7eb905a945800b1fd7b532a008a40953b0e35ae4cb42292cb.lean/declarations/addmonoid-end-applydistribmulaction--e168095c0dd802d61fab333c.md) | 56 | `declaration-track:e168095c0dd802d61fab333c630213d17325232dea0141816ce74e816b36ac01` |
| 5 | `theorem` | [AddMonoid.End.smul_def](../../../../../mathematics/Algebra/GroupTheory/End/Variant3a84629234ee4bf7eb905a945800b1fd7b532a008a40953b0e35ae4cb42292cb.lean/declarations/addmonoid-end-smul-def--220f848a40551835b39619f1.md) | 65 | `result-track:220f848a40551835b39619f1454fde4c489df8fb87345889c882ec9db78154a1` |
| 6 | `instance` | [AddMonoid.End.applyFaithfulSMul](../../../../../mathematics/Algebra/GroupTheory/End/Variant3a84629234ee4bf7eb905a945800b1fd7b532a008a40953b0e35ae4cb42292cb.lean/declarations/addmonoid-end-applyfaithfulsmul--8586c5e2705d3491b7abe776.md) | 69 | `declaration-track:8586c5e2705d3491b7abe77625d8b6b003ff6a9ff9847777aeca8ae72f0a3d01` |
| 7 | `def` | [DistribMulAction.toAddEquiv₀](../../../../../mathematics/Algebra/GroupTheory/End/Variant3a84629234ee4bf7eb905a945800b1fd7b532a008a40953b0e35ae4cb42292cb.lean/declarations/distribmulaction-toaddequiv--c8ba464a55514ab5dfa44dc5.md) | 76 | `declaration-track:c8ba464a55514ab5dfa44dc507c3bc72d7ddb6a2f3d6b3635b1bf5cfdf4b1145` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
