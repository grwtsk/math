# Verification target: GRWTSK.Algebra.Types.Variant9b6b6b6c1f57203ddabafe10c535c7404513cc9ec2bec2035a281ffe52edb963

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "972f8f4701bb5348b0f4051a4e89a95725def8c9",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Types/Variant9b6b6b6c1f57203ddabafe10c535c7404513cc9ec2bec2035a281ffe52edb963.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Types/Variant9b6b6b6c1f57203ddabafe10c535c7404513cc9ec2bec2035a281ffe52edb963.lean/index.md) · [Full source](../../../../mathematics/Algebra/Types/Variant9b6b6b6c1f57203ddabafe10c535c7404513cc9ec2bec2035a281ffe52edb963.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `972f8f4701bb5348b0f4051a4e89a95725def8c9`.

Source path: `GRWTSK/Algebra/Types/Variant9b6b6b6c1f57203ddabafe10c535c7404513cc9ec2bec2035a281ffe52edb963.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Types/Variant9b6b6b6c1f57203ddabafe10c535c7404513cc9ec2bec2035a281ffe52edb963.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Sym.Arith.Poly` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [RingExpr](../../../../mathematics/Algebra/Types/Variant9b6b6b6c1f57203ddabafe10c535c7404513cc9ec2bec2035a281ffe52edb963.lean/declarations/ringexpr--1f6fe56065760f7bf2b7eea5.md) | 15 | `declaration-track:1f6fe56065760f7bf2b7eea59c09f3ae0b3a4a525e2c3450c6819a7b162a0a65` |
| 2 | `abbrev` | [SemiringExpr](../../../../mathematics/Algebra/Types/Variant9b6b6b6c1f57203ddabafe10c535c7404513cc9ec2bec2035a281ffe52edb963.lean/declarations/semiringexpr--8a50ab072a3e37505fcbfe45.md) | 20 | `declaration-track:8a50ab072a3e37505fcbfe45749203a3905cb8600626a09f9f910de9ce82b505` |
| 3 | `structure` | [EqCnstr](../../../../mathematics/Algebra/Types/Variant9b6b6b6c1f57203ddabafe10c535c7404513cc9ec2bec2035a281ffe52edb963.lean/declarations/eqcnstr--003ca8870359f3f2b4b23e57.md) | 23 | `declaration-track:003ca8870359f3f2b4b23e572bd8c1746f8285e07a107bbd1381b35aeaac5077` |
| 4 | `inductive` | [EqCnstrProof](../../../../mathematics/Algebra/Types/Variant9b6b6b6c1f57203ddabafe10c535c7404513cc9ec2bec2035a281ffe52edb963.lean/declarations/eqcnstrproof--8d1308e853b10a071d1889c2.md) | 29 | `declaration-track:8d1308e853b10a071d1889c2e9e2d1595cb66ee63d063d90f51eb281e7d90d2c` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Types/Variant9b6b6b6c1f57203ddabafe10c535c7404513cc9ec2bec2035a281ffe52edb963.lean/declarations/instance--09b8017be5da7f4ee0a0368b.md) | 40 | `declaration-track:09b8017be5da7f4ee0a0368be6b47bfea2b0fa965b0a47a18afe35227a678c11` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Types/Variant9b6b6b6c1f57203ddabafe10c535c7404513cc9ec2bec2035a281ffe52edb963.lean/declarations/instance--83a439fe5c54baa71f9f9b2e.md) | 43 | `declaration-track:83a439fe5c54baa71f9f9b2e485ce9840d11110b51c60db6da7ea57fa77daae0` |
| 7 | `def` | [EqCnstr.compare](../../../../mathematics/Algebra/Types/Variant9b6b6b6c1f57203ddabafe10c535c7404513cc9ec2bec2035a281ffe52edb963.lean/declarations/eqcnstr-compare--66d1a97bedc840cd33736df3.md) | 46 | `declaration-track:66d1a97bedc840cd33736df3e66cb59c362349f5a65fc7045ba503ee3ea49dc1` |
| 8 | `abbrev` | [Queue](../../../../mathematics/Algebra/Types/Variant9b6b6b6c1f57203ddabafe10c535c7404513cc9ec2bec2035a281ffe52edb963.lean/declarations/queue--905090ccb48b61c672986b69.md) | 51 | `declaration-track:905090ccb48b61c672986b690b6f7606324dd1867352c2fee8d9544cb0534431` |
| 9 | `inductive` | [PolyDerivation](../../../../mathematics/Algebra/Types/Variant9b6b6b6c1f57203ddabafe10c535c7404513cc9ec2bec2035a281ffe52edb963.lean/declarations/polyderivation--648ee2d01ced79084b7551a0.md) | 79 | `declaration-track:648ee2d01ced79084b7551a003480bfedb4068968baf0b72b0b75a650f126b12` |
| 10 | `def` | [PolyDerivation.p](../../../../mathematics/Algebra/Types/Variant9b6b6b6c1f57203ddabafe10c535c7404513cc9ec2bec2035a281ffe52edb963.lean/declarations/polyderivation-p--aaebf54ad587385126ff0566.md) | 125 | `declaration-track:aaebf54ad587385126ff0566e25d9fba318380d57acf02d2ce8f2c82e7025825` |
| 11 | `structure` | [DiseqCnstr](../../../../mathematics/Algebra/Types/Variant9b6b6b6c1f57203ddabafe10c535c7404513cc9ec2bec2035a281ffe52edb963.lean/declarations/diseqcnstr--242f564d2d361feeabc5d63d.md) | 131 | `declaration-track:242f564d2d361feeabc5d63dab0d9861598f099f240750b26a34af297bebdc71` |
| 12 | `structure` | [Semiring](../../../../mathematics/Algebra/Types/Variant9b6b6b6c1f57203ddabafe10c535c7404513cc9ec2bec2035a281ffe52edb963.lean/declarations/semiring--77f3912698bc11fb47d89541.md) | 147 | `declaration-track:77f3912698bc11fb47d895419e1441159bd826ad50f27c23796f89441842d6df` |
| 13 | `structure` | [Ring](../../../../mathematics/Algebra/Types/Variant9b6b6b6c1f57203ddabafe10c535c7404513cc9ec2bec2035a281ffe52edb963.lean/declarations/ring--b3ba902917a69c5609b936f3.md) | 170 | `declaration-track:b3ba902917a69c5609b936f36a7074c543ad5898674858417fb49a5dfbb58db5` |
| 14 | `structure` | [CommRing](../../../../mathematics/Algebra/Types/Variant9b6b6b6c1f57203ddabafe10c535c7404513cc9ec2bec2035a281ffe52edb963.lean/declarations/commring--8522104cd88af384c184a18e.md) | 201 | `declaration-track:8522104cd88af384c184a18ed33694829f5fcdab5783f1bd1b9d58f3bee973bd` |
| 15 | `structure` | [CommSemiring](../../../../mathematics/Algebra/Types/Variant9b6b6b6c1f57203ddabafe10c535c7404513cc9ec2bec2035a281ffe52edb963.lean/declarations/commsemiring--89b68f0c657a3d46e03c2f39.md) | 257 | `declaration-track:89b68f0c657a3d46e03c2f3988d4c566cd44c6516137f059e52091d0e0d26249` |
| 16 | `structure` | [State](../../../../mathematics/Algebra/Types/Variant9b6b6b6c1f57203ddabafe10c535c7404513cc9ec2bec2035a281ffe52edb963.lean/declarations/state--d169ca2f27cfb46d355f2bc1.md) | 268 | `declaration-track:d169ca2f27cfb46d355f2bc1675c8f38009a08e09f2b21d70d81d746844241b6` |
| 17 | `builtin_initialize` | [(anonymous)](../../../../mathematics/Algebra/Types/Variant9b6b6b6c1f57203ddabafe10c535c7404513cc9ec2bec2035a281ffe52edb963.lean/declarations/builtin-initialize--e480efcc7dee546248b6c851.md) | 318 | `declaration-track:e480efcc7dee546248b6c8512d4815560b55e6eb42b20c8f96ce09101f12163a` |
| 18 | `def` | [get'](../../../../mathematics/Algebra/Types/Variant9b6b6b6c1f57203ddabafe10c535c7404513cc9ec2bec2035a281ffe52edb963.lean/declarations/get--857ecdc598f64639bab82e0c.md) | 320 | `declaration-track:857ecdc598f64639bab82e0ce03467df2508bc919c3a33001ffe8420626d455f` |
| 19 | `def` | [modify'](../../../../mathematics/Algebra/Types/Variant9b6b6b6c1f57203ddabafe10c535c7404513cc9ec2bec2035a281ffe52edb963.lean/declarations/modify--0c3f21c2bafff689625fc819.md) | 323 | `declaration-track:0c3f21c2bafff689625fc8196814e9bd721478d61d8cbfbb2e2f95925087795b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
