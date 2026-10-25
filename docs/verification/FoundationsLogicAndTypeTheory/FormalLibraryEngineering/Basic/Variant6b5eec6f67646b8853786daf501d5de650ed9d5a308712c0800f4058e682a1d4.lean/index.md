# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant6b5eec6f67646b8853786daf501d5de650ed9d5a308712c0800f4058e682a1d4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "14a33fe145f99f6f7c4e0ab533a1cb30ffc37aba",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6b5eec6f67646b8853786daf501d5de650ed9d5a308712c0800f4058e682a1d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6b5eec6f67646b8853786daf501d5de650ed9d5a308712c0800f4058e682a1d4.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6b5eec6f67646b8853786daf501d5de650ed9d5a308712c0800f4058e682a1d4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `14a33fe145f99f6f7c4e0ab533a1cb30ffc37aba`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6b5eec6f67646b8853786daf501d5de650ed9d5a308712c0800f4058e682a1d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6b5eec6f67646b8853786daf501d5de650ed9d5a308712c0800f4058e682a1d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.LitValues` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Poly.toExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6b5eec6f67646b8853786daf501d5de650ed9d5a308712c0800f4058e682a1d4.lean/declarations/poly-toexpr--756f9c30094ef24bbdf4710d.md) | 19 | `declaration-track:756f9c30094ef24bbdf4710d234dc474e1fdb9f366c3cab55ed8ce766c6b2016` |
| 2 | `def` | [Expr.applyPerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6b5eec6f67646b8853786daf501d5de650ed9d5a308712c0800f4058e682a1d4.lean/declarations/expr-applyperm--e6f7d3d53ced2016e0031f53.md) | 32 | `declaration-track:e6f7d3d53ced2016e0031f53780e2b641db4733bdd9c0e82cbe968c294ea2e35` |
| 3 | `def` | [ofPoly](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6b5eec6f67646b8853786daf501d5de650ed9d5a308712c0800f4058e682a1d4.lean/declarations/ofpoly--05eed8074970d7e399fa9edd.md) | 51 | `declaration-track:05eed8074970d7e399fa9edd11bd9f1633b316483ab761a12c19d4f187d8b948` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6b5eec6f67646b8853786daf501d5de650ed9d5a308712c0800f4058e682a1d4.lean/declarations/instance--61c07757b9997acd51ee1e89.md) | 57 | `declaration-track:61c07757b9997acd51ee1e89323b7011c9f2593b7e52293b693982be9df4c3ee` |
| 5 | `def` | [ofLinearExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6b5eec6f67646b8853786daf501d5de650ed9d5a308712c0800f4058e682a1d4.lean/declarations/oflinearexpr--8be83f260fc12abe051eb56c.md) | 61 | `declaration-track:8be83f260fc12abe051eb56cfe52947ae3655d1b23cc15b9f70830dd53d7556a` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6b5eec6f67646b8853786daf501d5de650ed9d5a308712c0800f4058e682a1d4.lean/declarations/instance--06495186acadb006ad76a996.md) | 72 | `declaration-track:06495186acadb006ad76a996f624a8892b01fdccd401e9e574b995ed386a2941` |
| 7 | `def` | [_root_.Int.Internal.Linear.Expr.denoteExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6b5eec6f67646b8853786daf501d5de650ed9d5a308712c0800f4058e682a1d4.lean/declarations/root-int-internal-linear-expr-denoteexpr--66d73524b4834eac2090dc92.md) | 76 | `declaration-track:66d73524b4834eac2090dc92f5bee535b7c05101213d4e94312a33b6f5508d0a` |
| 8 | `def` | [_root_.Int.Internal.Linear.Poly.denoteExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6b5eec6f67646b8853786daf501d5de650ed9d5a308712c0800f4058e682a1d4.lean/declarations/root-int-internal-linear-poly-denoteexpr--f77010f392a026ac672778bd.md) | 86 | `declaration-track:f77010f392a026ac672778bd7cccae8a35135f1d488aa2e6a18e6d8ed82c108b` |
| 9 | `structure` | [State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6b5eec6f67646b8853786daf501d5de650ed9d5a308712c0800f4058e682a1d4.lean/declarations/state--92d9243f37a1897ec109df7c.md) | 101 | `declaration-track:92d9243f37a1897ec109df7c953ac7dd75456630d922cf59126d9e8b9445eff1` |
| 10 | `abbrev` | [M](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6b5eec6f67646b8853786daf501d5de650ed9d5a308712c0800f4058e682a1d4.lean/declarations/m--80f6793445f66dca3e38d43d.md) | 105 | `declaration-track:80f6793445f66dca3e38d43dac38da33810f789cf312ead30447dee2f3d64deb` |
| 11 | `def` | [addAsVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6b5eec6f67646b8853786daf501d5de650ed9d5a308712c0800f4058e682a1d4.lean/declarations/addasvar--450b78120a5c0c7b1e20c537.md) | 109 | `declaration-track:450b78120a5c0c7b1e20c537c35dcb0373f31313a32926377c79c6969b957d3f` |
| 12 | `def` | [toLinearExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6b5eec6f67646b8853786daf501d5de650ed9d5a308712c0800f4058e682a1d4.lean/declarations/tolinearexpr--a9828b855d72c2d122e4b596.md) | 118 | `declaration-track:a9828b855d72c2d122e4b5965a5ce1dbf0efd7fecb5cdd889c6b139f3427df6d` |
| 13 | `def` | [eqCnstr?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6b5eec6f67646b8853786daf501d5de650ed9d5a308712c0800f4058e682a1d4.lean/declarations/eqcnstr--71485aa4234898f15d79b9a0.md) | 163 | `declaration-track:71485aa4234898f15d79b9a0909b4a70552f8a915b795aa03a9babe8dda56b96` |
| 14 | `def` | [leCnstr?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6b5eec6f67646b8853786daf501d5de650ed9d5a308712c0800f4058e682a1d4.lean/declarations/lecnstr--b1224a4d8d8ec1f6f3c648a8.md) | 177 | `declaration-track:b1224a4d8d8ec1f6f3c648a84fbc55e4834bde8026564d8ea9cd84919661efa7` |
| 15 | `def` | [dvdCnstr?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6b5eec6f67646b8853786daf501d5de650ed9d5a308712c0800f4058e682a1d4.lean/declarations/dvdcnstr--81312d11e255bc2f8732b192.md) | 197 | `declaration-track:81312d11e255bc2f8732b19213328156770aa87067c76f36de7780d8c09596a4` |
| 16 | `def` | [run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6b5eec6f67646b8853786daf501d5de650ed9d5a308712c0800f4058e682a1d4.lean/declarations/run--e1dc6e62cdd1ef169fec66f2.md) | 203 | `declaration-track:e1dc6e62cdd1ef169fec66f21aa1523d7d1d13312e6ec4db49f7297dab23123b` |
| 17 | `def` | [toLinearExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6b5eec6f67646b8853786daf501d5de650ed9d5a308712c0800f4058e682a1d4.lean/declarations/tolinearexpr--e1f9830e4ede5e99e8e8ec5e.md) | 209 | `declaration-track:e1f9830e4ede5e99e8e8ec5ed8643fadbb69376b033a8bbaf820724657118de0` |
| 18 | `def` | [adapter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6b5eec6f67646b8853786daf501d5de650ed9d5a308712c0800f4058e682a1d4.lean/declarations/adapter--6f81e2d921713ae48e7de8f5.md) | 219 | `declaration-track:6f81e2d921713ae48e7de8f5cd19b0986f627adecc468a0cb827fee5d9e3ccec` |
| 19 | `def` | [eqCnstr?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6b5eec6f67646b8853786daf501d5de650ed9d5a308712c0800f4058e682a1d4.lean/declarations/eqcnstr--c9faa7c88da733bec8ea5d3d.md) | 232 | `declaration-track:c9faa7c88da733bec8ea5d3d1b9cbb9c757f5582f46d924ab38d8cadae7aa411` |
| 20 | `def` | [leCnstr?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6b5eec6f67646b8853786daf501d5de650ed9d5a308712c0800f4058e682a1d4.lean/declarations/lecnstr--1fe6f3546255473c4a12020a.md) | 235 | `declaration-track:1fe6f3546255473c4a12020ae5f619500c7445b2ce692f57304962a0f40e3772` |
| 21 | `def` | [dvdCnstr?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6b5eec6f67646b8853786daf501d5de650ed9d5a308712c0800f4058e682a1d4.lean/declarations/dvdcnstr--adb17c42b111570ba2f5131d.md) | 238 | `declaration-track:adb17c42b111570ba2f5131dec35592be16e51f7027b8db32db547e657af93aa` |
| 22 | `def` | [toContextExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6b5eec6f67646b8853786daf501d5de650ed9d5a308712c0800f4058e682a1d4.lean/declarations/tocontextexpr--1b01cb409836c6b432ff3c41.md) | 248 | `declaration-track:1b01cb409836c6b432ff3c419544353564e734a4cb352d5de0e94e687920a325` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
