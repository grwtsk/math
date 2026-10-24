# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IntervalArray.Variant488f17b03db22b20ecaeca7f251fb423f84c98bfd08e87366d06c118e511610d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7618749cc7ca2668bdf19cb05325d585c22835e",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArray/Variant488f17b03db22b20ecaeca7f251fb423f84c98bfd08e87366d06c118e511610d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArray/Variant488f17b03db22b20ecaeca7f251fb423f84c98bfd08e87366d06c118e511610d.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArray/Variant488f17b03db22b20ecaeca7f251fb423f84c98bfd08e87366d06c118e511610d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7618749cc7ca2668bdf19cb05325d585c22835e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArray/Variant488f17b03db22b20ecaeca7f251fb423f84c98bfd08e87366d06c118e511610d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArray/Variant488f17b03db22b20ecaeca7f251fb423f84c98bfd08e87366d06c118e511610d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Core.IntervalDyadic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IntervalArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArray/Variant488f17b03db22b20ecaeca7f251fb423f84c98bfd08e87366d06c118e511610d.lean/declarations/intervalarray--00cb7d240ed6f673367c2f9e.md) | 52 | `declaration-track:00cb7d240ed6f673367c2f9ec7a03ffbdd6bc9d0a3c7a89583ae399c9c7f32bd` |
| 2 | `def` | [getLo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArray/Variant488f17b03db22b20ecaeca7f251fb423f84c98bfd08e87366d06c118e511610d.lean/declarations/getlo--94a0c671d96a8ff8dd7879f2.md) | 68 | `declaration-track:94a0c671d96a8ff8dd7879f238283c2119e921e66859035c1638c5ef8ed9a964` |
| 3 | `def` | [getHi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArray/Variant488f17b03db22b20ecaeca7f251fb423f84c98bfd08e87366d06c118e511610d.lean/declarations/gethi--bce9b5412856377e4110df69.md) | 72 | `declaration-track:bce9b5412856377e4110df69a8799958f8dfd8eed663b8e34c49e5b35be32b0a` |
| 4 | `def` | [get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArray/Variant488f17b03db22b20ecaeca7f251fb423f84c98bfd08e87366d06c118e511610d.lean/declarations/get--706969c55be9b7805b1d59ce.md) | 76 | `declaration-track:706969c55be9b7805b1d59cea717c97a175029b65ce22a83f78a7778cdcccbc8` |
| 5 | `def` | [mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArray/Variant488f17b03db22b20ecaeca7f251fb423f84c98bfd08e87366d06c118e511610d.lean/declarations/mem--8c8fd2d340dba43c420c7630.md) | 83 | `declaration-track:8c8fd2d340dba43c420c7630e5a044e980edeb3b67fcbeed62dd037fe864752c` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArray/Variant488f17b03db22b20ecaeca7f251fb423f84c98bfd08e87366d06c118e511610d.lean/declarations/instance--7f11bb904546be6d783dc5d9.md) | 86 | `declaration-track:7f11bb904546be6d783dc5d945e72934ee5d0a34953fb74d51258670608c5a5a` |
| 7 | `def` | [ofFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArray/Variant488f17b03db22b20ecaeca7f251fb423f84c98bfd08e87366d06c118e511610d.lean/declarations/offn--768ae938a8302c1ee2b09e26.md) | 90 | `declaration-track:768ae938a8302c1ee2b09e26adb2dcf6056a2da1d45914889e7a986753787af1` |
| 8 | `def` | [mk'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArray/Variant488f17b03db22b20ecaeca7f251fb423f84c98bfd08e87366d06c118e511610d.lean/declarations/mk--930e54e98bc63daf232938ae.md) | 97 | `declaration-track:930e54e98bc63daf232938ae8d08c67c99f6c978c1677d63936f48956bf66469` |
| 9 | `def` | [empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArray/Variant488f17b03db22b20ecaeca7f251fb423f84c98bfd08e87366d06c118e511610d.lean/declarations/empty--63caf8ce2c0bb7c7cb6a82e7.md) | 101 | `declaration-track:63caf8ce2c0bb7c7cb6a82e7ad4b037eb2117505626506ecc765a48540ef8ed7` |
| 10 | `def` | [singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArray/Variant488f17b03db22b20ecaeca7f251fb423f84c98bfd08e87366d06c118e511610d.lean/declarations/singleton--5d7a625370b502e7eed759fd.md) | 108 | `declaration-track:5d7a625370b502e7eed759fdfc2f56eaae43b7e94a50afdfdf5d109db6ca2c13` |
| 11 | `def` | [add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArray/Variant488f17b03db22b20ecaeca7f251fb423f84c98bfd08e87366d06c118e511610d.lean/declarations/add--6bb6d3a7802af0d8c8a3562b.md) | 115 | `declaration-track:6bb6d3a7802af0d8c8a3562b17ee0149ac29e65498e956cc8867356c5a2390d9` |
| 12 | `def` | [neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArray/Variant488f17b03db22b20ecaeca7f251fb423f84c98bfd08e87366d06c118e511610d.lean/declarations/neg--bff565accafe0ac5a1b8de6a.md) | 122 | `declaration-track:bff565accafe0ac5a1b8de6a7f07b4315b963ac213ad50af10a2db079aeeae2a` |
| 13 | `def` | [sub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArray/Variant488f17b03db22b20ecaeca7f251fb423f84c98bfd08e87366d06c118e511610d.lean/declarations/sub--9192d7ba9d6ef2f4ab3ea6bb.md) | 129 | `declaration-track:9192d7ba9d6ef2f4ab3ea6bbe2acaa0ee6eeb839a07785aac0ff9da189029a30` |
| 14 | `def` | [relu](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArray/Variant488f17b03db22b20ecaeca7f251fb423f84c98bfd08e87366d06c118e511610d.lean/declarations/relu--aab1a2e4ef861756c7a74105.md) | 133 | `declaration-track:aab1a2e4ef861756c7a74105d10c1c89904f8e2ae5574fa40c09d6ccd33a69fd` |
| 15 | `theorem` | [mem_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArray/Variant488f17b03db22b20ecaeca7f251fb423f84c98bfd08e87366d06c118e511610d.lean/declarations/mem-add--3a79fe896a12879e2ef7dced.md) | 142 | `result-track:3a79fe896a12879e2ef7dcedb4fc1efdd060a4950c7092f537b22865967e0f70` |
| 16 | `theorem` | [mem_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArray/Variant488f17b03db22b20ecaeca7f251fb423f84c98bfd08e87366d06c118e511610d.lean/declarations/mem-neg--c17024d4961c877615283cd0.md) | 159 | `result-track:c17024d4961c877615283cd092d3f4038e233b26d69bec85a5cc54c0115c04fb` |
| 17 | `theorem` | [mem_sub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArray/Variant488f17b03db22b20ecaeca7f251fb423f84c98bfd08e87366d06c118e511610d.lean/declarations/mem-sub--e69b796fcc49a156212cb33f.md) | 171 | `result-track:e69b796fcc49a156212cb33fee7b4001857f90134adf911a10ff49116563a2b3` |
| 18 | `theorem` | [mem_relu](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArray/Variant488f17b03db22b20ecaeca7f251fb423f84c98bfd08e87366d06c118e511610d.lean/declarations/mem-relu--c87ef2a5e26e690ae3251f3c.md) | 178 | `result-track:c87ef2a5e26e690ae3251f3ce92475e2f0376dcbbbe170d3f8676cfe7005d94c` |
| 19 | `def` | [ofList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArray/Variant488f17b03db22b20ecaeca7f251fb423f84c98bfd08e87366d06c118e511610d.lean/declarations/oflist--eeb8e7740b249eddad658428.md) | 201 | `declaration-track:eeb8e7740b249eddad65842889d55a6d84d2aa9d57424169df157a65926ce9c4` |
| 20 | `def` | [toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalArray/Variant488f17b03db22b20ecaeca7f251fb423f84c98bfd08e87366d06c118e511610d.lean/declarations/tolist--e5d986a6c1161a146ad9cbf0.md) | 208 | `declaration-track:e5d986a6c1161a146ad9cbf020cbc09b58649b10b1a26f265430917842f559c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
