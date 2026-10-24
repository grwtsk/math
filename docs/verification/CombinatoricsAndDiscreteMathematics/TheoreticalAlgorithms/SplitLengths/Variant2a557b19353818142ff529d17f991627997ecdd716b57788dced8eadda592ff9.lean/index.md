# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SplitLengths.Variant2a557b19353818142ff529d17f991627997ecdd716b57788dced8eadda592ff9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "99d7f9e94ed0024d781e5daa273c3af7cceeded6",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitLengths/Variant2a557b19353818142ff529d17f991627997ecdd716b57788dced8eadda592ff9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitLengths/Variant2a557b19353818142ff529d17f991627997ecdd716b57788dced8eadda592ff9.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitLengths/Variant2a557b19353818142ff529d17f991627997ecdd716b57788dced8eadda592ff9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `99d7f9e94ed0024d781e5daa273c3af7cceeded6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitLengths/Variant2a557b19353818142ff529d17f991627997ecdd716b57788dced8eadda592ff9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitLengths/Variant2a557b19353818142ff529d17f991627997ecdd716b57788dced8eadda592ff9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Nat.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.MinMax` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [splitLengths](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitLengths/Variant2a557b19353818142ff529d17f991627997ecdd716b57788dced8eadda592ff9.lean/declarations/splitlengths--cf71ab6475b490de609d7f8a.md) | 22 | `declaration-track:cf71ab6475b490de609d7f8ac8e4709f55fe29b6becfcd94d1c7ae5a93c3db62` |
| 2 | `theorem` | [length_splitLengths](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitLengths/Variant2a557b19353818142ff529d17f991627997ecdd716b57788dced8eadda592ff9.lean/declarations/length-splitlengths--c3b505e23115af4ae2693aa6.md) | 29 | `result-track:c3b505e23115af4ae2693aa6dda0e37c5a3cd07be7072c4fdec7e04cb555c45c` |
| 3 | `lemma` | [splitLengths_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitLengths/Variant2a557b19353818142ff529d17f991627997ecdd716b57788dced8eadda592ff9.lean/declarations/splitlengths-nil--9991040e1c1979c404ea91c2.md) | 33 | `result-track:9991040e1c1979c404ea91c2849ff9f666ac982eaa9ca31f0f0fd5795dd284b0` |
| 4 | `lemma` | [splitLengths_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitLengths/Variant2a557b19353818142ff529d17f991627997ecdd716b57788dced8eadda592ff9.lean/declarations/splitlengths-cons--18393b15a2426e604daa2bb0.md) | 36 | `result-track:18393b15a2426e604daa2bb0718fd3f3df22544277f779f5d43b6f8ef1cf75b9` |
| 5 | `theorem` | [take_splitLength](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitLengths/Variant2a557b19353818142ff529d17f991627997ecdd716b57788dced8eadda592ff9.lean/declarations/take-splitlength--0cbf4b3e6b2335cdf3ca7d62.md) | 40 | `result-track:0cbf4b3e6b2335cdf3ca7d622870fea0235f1edb2008b345abc856fd1250190f` |
| 6 | `theorem` | [length_splitLengths_getElem_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitLengths/Variant2a557b19353818142ff529d17f991627997ecdd716b57788dced8eadda592ff9.lean/declarations/length-splitlengths-getelem-le--e5d34b80aeecc16f2591eaff.md) | 48 | `result-track:e5d34b80aeecc16f2591eafff9a14fb701719db554de5a8be4e1be3a72fa163f` |
| 7 | `theorem` | [flatten_splitLengths](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitLengths/Variant2a557b19353818142ff529d17f991627997ecdd716b57788dced8eadda592ff9.lean/declarations/flatten-splitlengths--43f0c278335a8bb48ca0c073.md) | 58 | `result-track:43f0c278335a8bb48ca0c073def1947ba7f595502210d2bcdc9ca7761a32ea98` |
| 8 | `theorem` | [map_splitLengths_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitLengths/Variant2a557b19353818142ff529d17f991627997ecdd716b57788dced8eadda592ff9.lean/declarations/map-splitlengths-length--7eb6505a45a3ef30a2dafb99.md) | 66 | `result-track:7eb6505a45a3ef30a2dafb99e43fd686cae839c21c0a8e0e24394e25db81e85e` |
| 9 | `theorem` | [length_splitLengths_getElem_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitLengths/Variant2a557b19353818142ff529d17f991627997ecdd716b57788dced8eadda592ff9.lean/declarations/length-splitlengths-getelem-eq--3e8a24bfce6a5038bd34202c.md) | 77 | `result-track:3e8a24bfce6a5038bd34202cfad4ef43438da2baeeb03fa1b87405d4c4b14b04` |
| 10 | `theorem` | [splitLengths_length_getElem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitLengths/Variant2a557b19353818142ff529d17f991627997ecdd716b57788dced8eadda592ff9.lean/declarations/splitlengths-length-getelem--4dace62789de44dd2ed08438.md) | 87 | `result-track:4dace62789de44dd2ed084384564d5e32d5e2fcfffb9c3e065fb90340c3b7368` |
| 11 | `theorem` | [length_mem_splitLengths](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitLengths/Variant2a557b19353818142ff529d17f991627997ecdd716b57788dced8eadda592ff9.lean/declarations/length-mem-splitlengths--3779b97413a24079626484d3.md) | 95 | `result-track:3779b97413a24079626484d3f7c68494d11fed17d588e641ab6353227169cd29` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
