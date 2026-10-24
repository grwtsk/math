# Verification target: GRWTSK.Algebra.UniversalAlgebra.Pi.Variant84c5a66aa204b8e951a63609887a8caf9c9dc9a0121badf9736418a8393afd12

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f2982fb62ed21fb946eed28eb9d73c16036fd088",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Pi/Variant84c5a66aa204b8e951a63609887a8caf9c9dc9a0121badf9736418a8393afd12.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant84c5a66aa204b8e951a63609887a8caf9c9dc9a0121badf9736418a8393afd12.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant84c5a66aa204b8e951a63609887a8caf9c9dc9a0121badf9736418a8393afd12.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f2982fb62ed21fb946eed28eb9d73c16036fd088`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Pi/Variant84c5a66aa204b8e951a63609887a8caf9c9dc9a0121badf9736418a8393afd12.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Pi/Variant84c5a66aa204b8e951a63609887a8caf9c9dc9a0121badf9736418a8393afd12.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Action.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Regular.SMul` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Pi` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [_root_.GRWTSK.Algebra.UniversalAlgebra.RootIsSMulRegularPi.Variant198e2a3a987713a54a03d51dbe71aaad05d868501aab91bfefe06ba6a8f69a1b.IsSMulRegular.pi](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant84c5a66aa204b8e951a63609887a8caf9c9dc9a0121badf9736418a8393afd12.lean/declarations/root-grwtsk-algebra-universalalgebra-rootissmulregularpi-variant198e2a3a--5bbe4a2d62315687fda4e93d.md) | 35 | `result-track:5bbe4a2d62315687fda4e93d66a83d4f7677b1e0663d4ecb6e34c3475e74897d` |
| 2 | `instance` | [smulWithZero](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant84c5a66aa204b8e951a63609887a8caf9c9dc9a0121badf9736418a8393afd12.lean/declarations/smulwithzero--6f1d7841c8042258655c895f.md) | 39 | `declaration-track:6f1d7841c8042258655c895f562e3f3c7def81fb5f22a18520c940e4e1603866` |
| 3 | `instance` | [smulWithZero'](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant84c5a66aa204b8e951a63609887a8caf9c9dc9a0121badf9736418a8393afd12.lean/declarations/smulwithzero--197a5c7bd9295d93b73e6783.md) | 45 | `declaration-track:197a5c7bd9295d93b73e6783c2f541d976f915d9a19cc3c0ba8c369ad4b19773` |
| 4 | `instance` | [mulActionWithZero](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant84c5a66aa204b8e951a63609887a8caf9c9dc9a0121badf9736418a8393afd12.lean/declarations/mulactionwithzero--399d34d1fb79c25c4cc2f3dd.md) | 51 | `declaration-track:399d34d1fb79c25c4cc2f3dd4189667d28cf5df7bff9532edd6e9c077d9ed1d9` |
| 5 | `instance` | [mulActionWithZero'](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant84c5a66aa204b8e951a63609887a8caf9c9dc9a0121badf9736418a8393afd12.lean/declarations/mulactionwithzero--5c1d1045604af8b82e6f9a91.md) | 55 | `declaration-track:5c1d1045604af8b82e6f9a916ea5fd5356e085b98b4372425ea116c6619763f9` |
| 6 | `instance` | [module](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant84c5a66aa204b8e951a63609887a8caf9c9dc9a0121badf9736418a8393afd12.lean/declarations/module--d069d2915e59227202fdaf71.md) | 61 | `declaration-track:d069d2915e59227202fdaf71c775596d6512dfc119e4ab236acb49e683342512` |
| 7 | `instance` | [Function.module](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant84c5a66aa204b8e951a63609887a8caf9c9dc9a0121badf9736418a8393afd12.lean/declarations/function-module--b53215c54c2f27a371089feb.md) | 76 | `declaration-track:b53215c54c2f27a371089feb97f9cbc07f7d2b8eb60425c9255c892d838fc89f` |
| 8 | `instance` | [module'](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant84c5a66aa204b8e951a63609887a8caf9c9dc9a0121badf9736418a8393afd12.lean/declarations/module--2215491cae8dc3d7ac9ac48a.md) | 82 | `declaration-track:2215491cae8dc3d7ac9ac48a83b12672cba774c17e18d763df209deecc4837f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
