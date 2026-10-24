# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.String.Variant71963a74812cdaa9f816f800f0de63cf89a5cb25418e4d2973fbda931b6b91cc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d9a8aadd0865af9a1af3584c79cd66bc3a79a077",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant71963a74812cdaa9f816f800f0de63cf89a5cb25418e4d2973fbda931b6b91cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant71963a74812cdaa9f816f800f0de63cf89a5cb25418e4d2973fbda931b6b91cc.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant71963a74812cdaa9f816f800f0de63cf89a5cb25418e4d2973fbda931b6b91cc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d9a8aadd0865af9a1af3584c79cd66bc3a79a077`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant71963a74812cdaa9f816f800f0de63cf89a5cb25418e4d2973fbda931b6b91cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant71963a74812cdaa9f816f800f0de63cf89a5cb25418e4d2973fbda931b6b91cc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Grind` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quoteCore](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant71963a74812cdaa9f816f800f0de63cf89a5cb25418e4d2973fbda931b6b91cc.lean/declarations/quotecore--8db3e1e7e9840a90798e4d96.md) | 35 | `declaration-track:8db3e1e7e9840a90798e4d96e79853da7b017e4c655b956a6e1e062785c6d678` |
| 2 | `def` | [quoteHttpString](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant71963a74812cdaa9f816f800f0de63cf89a5cb25418e4d2973fbda931b6b91cc.lean/declarations/quotehttpstring--6fa62fd9b4ce89e62f96369d.md) | 53 | `declaration-track:6fa62fd9b4ce89e62f96369dcffa2727edfb3e535e00bb24ef0519f9a7f145a5` |
| 3 | `def` | [quoteHttpString?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant71963a74812cdaa9f816f800f0de63cf89a5cb25418e4d2973fbda931b6b91cc.lean/declarations/quotehttpstring--0a5e17264a71001fe863570b.md) | 70 | `declaration-track:0a5e17264a71001fe863570bfa3f896dc44240df8cd19cb434dd070c0a4f7cec` |
| 4 | `def` | [quoteHttpString!](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant71963a74812cdaa9f816f800f0de63cf89a5cb25418e4d2973fbda931b6b91cc.lean/declarations/quotehttpstring--c75384591bf9e2a0660d4a72.md) | 80 | `declaration-track:c75384591bf9e2a0660d4a72d020482d3866f8524c3d1e7d6c1b614ec0391ce7` |
| 5 | `inductive` | [UnquoteState](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant71963a74812cdaa9f816f800f0de63cf89a5cb25418e4d2973fbda931b6b91cc.lean/declarations/unquotestate--ed66b61fc96ca4e9560395f0.md) | 85 | `declaration-track:ed66b61fc96ca4e9560395f0a18b387b3b15b29363c6830720c57805de52e918` |
| 6 | `def` | [unquoteHttpString?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant71963a74812cdaa9f816f800f0de63cf89a5cb25418e4d2973fbda931b6b91cc.lean/declarations/unquotehttpstring--4aca654e2951a789137b66cd.md) | 94 | `declaration-track:4aca654e2951a789137b66cdbeee2c7d80da743c044d878c60129040ecde711e` |
| 7 | `def` | [isToken](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant71963a74812cdaa9f816f800f0de63cf89a5cb25418e4d2973fbda931b6b91cc.lean/declarations/istoken--412b1e0880dc068681553371.md) | 120 | `declaration-track:412b1e0880dc068681553371a319173ac026a6e2a70a47fb36d41a239009f01c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
