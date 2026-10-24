# Verification target: GRWTSK.Algebra.Selmer.Variant0ced97d1829bbedcadeedbfd44120ff51f2c538ad3a12754e64ec4a4ddb1e4c4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4d0ee759ef29257c1b1937738615baecf13a254",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Selmer/Variant0ced97d1829bbedcadeedbfd44120ff51f2c538ad3a12754e64ec4a4ddb1e4c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Selmer/Variant0ced97d1829bbedcadeedbfd44120ff51f2c538ad3a12754e64ec4a4ddb1e4c4.lean/index.md) · [Full source](../../../../mathematics/Algebra/Selmer/Variant0ced97d1829bbedcadeedbfd44120ff51f2c538ad3a12754e64ec4a4ddb1e4c4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4d0ee759ef29257c1b1937738615baecf13a254`.

Source path: `GRWTSK/Algebra/Selmer/Variant0ced97d1829bbedcadeedbfd44120ff51f2c538ad3a12754e64ec4a4ddb1e4c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Selmer/Variant0ced97d1829bbedcadeedbfd44120ff51f2c538ad3a12754e64ec4a4ddb1e4c4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Arithmetic.GaloisCohomology.Finite` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteAdditiveStructure](../../../../mathematics/Algebra/Selmer/Variant0ced97d1829bbedcadeedbfd44120ff51f2c538ad3a12754e64ec4a4ddb1e4c4.lean/declarations/finiteadditivestructure--2d7b2182ec2d4d63b01e9a8c.md) | 27 | `declaration-track:2d7b2182ec2d4d63b01e9a8c61d74df9984af5ba49329c9bb85e3d00444ff1a7` |
| 2 | `structure` | [FiniteSubgroup](../../../../mathematics/Algebra/Selmer/Variant0ced97d1829bbedcadeedbfd44120ff51f2c538ad3a12754e64ec4a4ddb1e4c4.lean/declarations/finitesubgroup--6fb100a5a621b64479a8b3ba.md) | 33 | `declaration-track:6fb100a5a621b64479a8b3ba5c188db645e6355725ff0231e624efe53a31e429` |
| 3 | `theorem` | [ext](../../../../mathematics/Algebra/Selmer/Variant0ced97d1829bbedcadeedbfd44120ff51f2c538ad3a12754e64ec4a4ddb1e4c4.lean/declarations/ext--7ddcb24a0fac263f8e5499ef.md) | 45 | `result-track:7ddcb24a0fac263f8e5499efabac10e017b4a98017a5602e8357a594c3c1f9da` |
| 4 | `def` | [top](../../../../mathematics/Algebra/Selmer/Variant0ced97d1829bbedcadeedbfd44120ff51f2c538ad3a12754e64ec4a4ddb1e4c4.lean/declarations/top--d1148e761c22faa0a60a67fe.md) | 61 | `declaration-track:d1148e761c22faa0a60a67fee205cd243602713ec7d5ca8728208e92fe2bef22` |
| 5 | `def` | [le](../../../../mathematics/Algebra/Selmer/Variant0ced97d1829bbedcadeedbfd44120ff51f2c538ad3a12754e64ec4a4ddb1e4c4.lean/declarations/le--06d60c948932f21e9a12f478.md) | 74 | `declaration-track:06d60c948932f21e9a12f4788577a9d1fb3734f1d8bfe279258c69907d0ad79c` |
| 6 | `def` | [FiniteH1.additiveStructure](../../../../mathematics/Algebra/Selmer/Variant0ced97d1829bbedcadeedbfd44120ff51f2c538ad3a12754e64ec4a4ddb1e4c4.lean/declarations/finiteh1-additivestructure--c4211df22ba9fbbd15852860.md) | 83 | `declaration-track:c4211df22ba9fbbd15852860002c5c153c8ed92dd7180d0c3486d6c037f8849c` |
| 7 | `def` | [FiniteSelmerGroup](../../../../mathematics/Algebra/Selmer/Variant0ced97d1829bbedcadeedbfd44120ff51f2c538ad3a12754e64ec4a4ddb1e4c4.lean/declarations/finiteselmergroup--c10e51fd6217f0789ca8810e.md) | 97 | `declaration-track:c10e51fd6217f0789ca8810ec3ed080c45fe79b75726751ce5ac10e167cfd5ef` |
| 8 | `theorem` | [selmer_top_eq_h1](../../../../mathematics/Algebra/Selmer/Variant0ced97d1829bbedcadeedbfd44120ff51f2c538ad3a12754e64ec4a4ddb1e4c4.lean/declarations/selmer-top-eq-h1--9cf6ec77d74b14ffffe7966f.md) | 129 | `result-track:9cf6ec77d74b14ffffe7966f8771a634775c1361a80bbf606006ae18cb31b954` |
| 9 | `theorem` | [selmer_mono](../../../../mathematics/Algebra/Selmer/Variant0ced97d1829bbedcadeedbfd44120ff51f2c538ad3a12754e64ec4a4ddb1e4c4.lean/declarations/selmer-mono--5138065ac6626b046e30d30b.md) | 154 | `result-track:5138065ac6626b046e30d30b20ae496514d7c60c1dcb95fb375d3eeba6c39bb9` |
| 10 | `structure` | [FiniteSelmerProblem](../../../../mathematics/Algebra/Selmer/Variant0ced97d1829bbedcadeedbfd44120ff51f2c538ad3a12754e64ec4a4ddb1e4c4.lean/declarations/finiteselmerproblem--0a61156c6d95dd0fb65a25b2.md) | 188 | `declaration-track:0a61156c6d95dd0fb65a25b29efccadc57e01d159a5c6ed293425f1bd20c2d11` |
| 11 | `def` | [selmerSubgroup](../../../../mathematics/Algebra/Selmer/Variant0ced97d1829bbedcadeedbfd44120ff51f2c538ad3a12754e64ec4a4ddb1e4c4.lean/declarations/selmersubgroup--3d0e649a259a2224be5ab221.md) | 203 | `declaration-track:3d0e649a259a2224be5ab22112409c0002e88339c5dcc5ee0d242b1155109fa0` |
| 12 | `theorem` | [mem_selmerSubgroup_iff](../../../../mathematics/Algebra/Selmer/Variant0ced97d1829bbedcadeedbfd44120ff51f2c538ad3a12754e64ec4a4ddb1e4c4.lean/declarations/mem-selmersubgroup-iff--e678c783e6755ab6661358c1.md) | 212 | `result-track:e678c783e6755ab6661358c1921c2a3d42dac337b1b29f9739901bd72c78adbb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
