# Verification target: GRWTSK.Algebra.UniversalAlgebra.OrderDual.Variant709fb80a880414463c1812e7de24a04aebe613ed67207a7a4f627cb7036664fa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c93cbe11c49023e7580aafe89b09cd675508568b",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/OrderDual/Variant709fb80a880414463c1812e7de24a04aebe613ed67207a7a4f627cb7036664fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/OrderDual/Variant709fb80a880414463c1812e7de24a04aebe613ed67207a7a4f627cb7036664fa.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/OrderDual/Variant709fb80a880414463c1812e7de24a04aebe613ed67207a7a4f627cb7036664fa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c93cbe11c49023e7580aafe89b09cd675508568b`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/OrderDual/Variant709fb80a880414463c1812e7de24a04aebe613ed67207a7a4f627cb7036664fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/OrderDual/Variant709fb80a880414463c1812e7de24a04aebe613ed67207a7a4f627cb7036664fa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Synonym` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [mulLeftReflectLE](../../../../../mathematics/Algebra/UniversalAlgebra/OrderDual/Variant709fb80a880414463c1812e7de24a04aebe613ed67207a7a4f627cb7036664fa.lean/declarations/mulleftreflectle--ed80232df936112704792ada.md) | 20 | `declaration-track:ed80232df936112704792ada9f2fa8b399920976fa1057c147c4f2e69297a2f2` |
| 2 | `instance` | [mulLeftMono](../../../../../mathematics/Algebra/UniversalAlgebra/OrderDual/Variant709fb80a880414463c1812e7de24a04aebe613ed67207a7a4f627cb7036664fa.lean/declarations/mulleftmono--deaf0be87a38d6a5b68659f0.md) | 24 | `declaration-track:deaf0be87a38d6a5b68659f0bd22478906abcf5c56aed2a4a1c91de2b4f13b0a` |
| 3 | `instance` | [mulRightReflectLE](../../../../../mathematics/Algebra/UniversalAlgebra/OrderDual/Variant709fb80a880414463c1812e7de24a04aebe613ed67207a7a4f627cb7036664fa.lean/declarations/mulrightreflectle--dd3712a579fbdb29a253a39a.md) | 28 | `declaration-track:dd3712a579fbdb29a253a39a1fa9130e70b6f9663c6f81922f24f3356fa88030` |
| 4 | `instance` | [mulRightMono](../../../../../mathematics/Algebra/UniversalAlgebra/OrderDual/Variant709fb80a880414463c1812e7de24a04aebe613ed67207a7a4f627cb7036664fa.lean/declarations/mulrightmono--88053baab54dd0b27f1c9a5e.md) | 32 | `declaration-track:88053baab54dd0b27f1c9a5e95b5b90ca92e39c1ca7e86c0e8d611429046d288` |
| 5 | `instance` | [mulLeftReflectLT](../../../../../mathematics/Algebra/UniversalAlgebra/OrderDual/Variant709fb80a880414463c1812e7de24a04aebe613ed67207a7a4f627cb7036664fa.lean/declarations/mulleftreflectlt--db185a7f22fedcc7d123e7e9.md) | 36 | `declaration-track:db185a7f22fedcc7d123e7e97291e7f73b8a7948ffded8f3e2a26ca6cab0e980` |
| 6 | `instance` | [mulLeftStrictMono](../../../../../mathematics/Algebra/UniversalAlgebra/OrderDual/Variant709fb80a880414463c1812e7de24a04aebe613ed67207a7a4f627cb7036664fa.lean/declarations/mulleftstrictmono--c8f31f4d85dee31807e1332e.md) | 40 | `declaration-track:c8f31f4d85dee31807e1332e27f0980729bfcd616c1dcc787ee30c4a9357dd41` |
| 7 | `instance` | [mulRightReflectLT](../../../../../mathematics/Algebra/UniversalAlgebra/OrderDual/Variant709fb80a880414463c1812e7de24a04aebe613ed67207a7a4f627cb7036664fa.lean/declarations/mulrightreflectlt--d6622e16e1955f807e25e92d.md) | 44 | `declaration-track:d6622e16e1955f807e25e92d49a99a40661af1dc513e36d5f691568be3177e64` |
| 8 | `instance` | [mulRightStrictMono](../../../../../mathematics/Algebra/UniversalAlgebra/OrderDual/Variant709fb80a880414463c1812e7de24a04aebe613ed67207a7a4f627cb7036664fa.lean/declarations/mulrightstrictmono--75d2d48a4d80b2664a4e28e4.md) | 48 | `declaration-track:75d2d48a4d80b2664a4e28e46ef4f1d4b386862961a799b313cf263827698115` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
