# Verification target: GRWTSK.Topology.GeneralTopology.Limits.Variant24fe683261ad32613daeafd01423255590b18c23603dcb1f35eab5492cc5397b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b85fb98d70e27061c783df0d82066dc83e36d54",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Limits/Variant24fe683261ad32613daeafd01423255590b18c23603dcb1f35eab5492cc5397b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant24fe683261ad32613daeafd01423255590b18c23603dcb1f35eab5492cc5397b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant24fe683261ad32613daeafd01423255590b18c23603dcb1f35eab5492cc5397b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b85fb98d70e27061c783df0d82066dc83e36d54`.

Source path: `GRWTSK/Topology/GeneralTopology/Limits/Variant24fe683261ad32613daeafd01423255590b18c23603dcb1f35eab5492cc5397b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Limits/Variant24fe683261ad32613daeafd01423255590b18c23603dcb1f35eab5492cc5397b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.Stonean.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteCoproduct](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant24fe683261ad32613daeafd01423255590b18c23603dcb1f35eab5492cc5397b.lean/declarations/finitecoproduct--5b3836b84f72f9109a15a4bf.md) | 44 | `declaration-track:5b3836b84f72f9109a15a4bfaabac43a3c05b57a30a4a43d61f3ba685be89ea9` |
| 2 | `def` | [finiteCoproduct.ι](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant24fe683261ad32613daeafd01423255590b18c23603dcb1f35eab5492cc5397b.lean/declarations/finitecoproduct--57dd177abb155a997a932ad8.md) | 47 | `declaration-track:57dd177abb155a997a932ad89bdd98bf20f0ba0b50159684a6dd6ccf324e9018` |
| 3 | `def` | [finiteCoproduct.desc](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant24fe683261ad32613daeafd01423255590b18c23603dcb1f35eab5492cc5397b.lean/declarations/finitecoproduct-desc--09d79425cc43c7b265f53d24.md) | 56 | `declaration-track:09d79425cc43c7b265f53d242f9094d670b91387d93f44c778a10ec099153fb1` |
| 4 | `lemma` | [finiteCoproduct.ι_desc](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant24fe683261ad32613daeafd01423255590b18c23603dcb1f35eab5492cc5397b.lean/declarations/finitecoproduct-desc--37b8b34bcb074546e3d8958f.md) | 64 | `result-track:37b8b34bcb074546e3d8958f63c5f0d5831bc482992ec7d12147e6274089cc5c` |
| 5 | `lemma` | [finiteCoproduct.hom_ext](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant24fe683261ad32613daeafd01423255590b18c23603dcb1f35eab5492cc5397b.lean/declarations/finitecoproduct-hom-ext--bf1928a963d5eae66f777040.md) | 67 | `result-track:bf1928a963d5eae66f77704037f752245c670cd5153b8ab6033b578d4aaa895f` |
| 6 | `def` | [finiteCoproduct.cocone](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant24fe683261ad32613daeafd01423255590b18c23603dcb1f35eab5492cc5397b.lean/declarations/finitecoproduct-cocone--3508a69a3f1a57ec8354cf0a.md) | 76 | `declaration-track:3508a69a3f1a57ec8354cf0ad217bfd0394b7d63c757fd574ac269cbfe67b496` |
| 7 | `def` | [finiteCoproduct.isColimit](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant24fe683261ad32613daeafd01423255590b18c23603dcb1f35eab5492cc5397b.lean/declarations/finitecoproduct-iscolimit--8cf609e4e3b7992b56369fb2.md) | 83 | `declaration-track:8cf609e4e3b7992b56369fb2013fd883614a8f9c8aa6dbe71a52a7ae9a22068a` |
| 8 | `instance` | [hasFiniteCoproducts](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant24fe683261ad32613daeafd01423255590b18c23603dcb1f35eab5492cc5397b.lean/declarations/hasfinitecoproducts--ca1b67233d28e8e8335c0c48.md) | 95 | `declaration-track:ca1b67233d28e8e8335c0c48e5d86d24be154647f7e50b2e43152f92e50c4bad` |
| 9 | `def` | [finiteCoproduct.explicitCocone](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant24fe683261ad32613daeafd01423255590b18c23603dcb1f35eab5492cc5397b.lean/declarations/finitecoproduct-explicitcocone--69a8389d6978469e6f7fb08b.md) | 106 | `declaration-track:69a8389d6978469e6f7fb08bcc5af30c776c0e3b0821e996389a5d4b8ffbb40a` |
| 10 | `def` | [finiteCoproduct.isColimit'](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant24fe683261ad32613daeafd01423255590b18c23603dcb1f35eab5492cc5397b.lean/declarations/finitecoproduct-iscolimit--bb3ea433fc9b4a45150497a1.md) | 114 | `declaration-track:bb3ea433fc9b4a45150497a1818992962f336e19403e9887437c33a93a3d164d` |
| 11 | `def` | [coproductIsoCoproduct](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant24fe683261ad32613daeafd01423255590b18c23603dcb1f35eab5492cc5397b.lean/declarations/coproductisocoproduct--3180e095a147d3ce75526452.md) | 125 | `declaration-track:3180e095a147d3ce755264525bb65ce16f078630434c6daa60616a49d9146bf3` |
| 12 | `lemma` | [finiteCoproduct.openEmbedding_ι](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant24fe683261ad32613daeafd01423255590b18c23603dcb1f35eab5492cc5397b.lean/declarations/finitecoproduct-openembedding--baa5a7ce9d842e55cad0284a.md) | 130 | `result-track:baa5a7ce9d842e55cad0284ad31d1543ace786c7699bdb5184f6ab30b7184229` |
| 13 | `lemma` | [Sigma.openEmbedding_ι](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant24fe683261ad32613daeafd01423255590b18c23603dcb1f35eab5492cc5397b.lean/declarations/sigma-openembedding--ffd621415d3d196eff042e59.md) | 135 | `result-track:ffd621415d3d196eff042e598a41a385993c65a724049857a476ec321fabc80c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
