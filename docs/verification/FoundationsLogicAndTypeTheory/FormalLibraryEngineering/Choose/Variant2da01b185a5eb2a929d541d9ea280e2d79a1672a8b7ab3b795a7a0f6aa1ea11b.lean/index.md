# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Choose.Variant2da01b185a5eb2a929d541d9ea280e2d79a1672a8b7ab3b795a7a0f6aa1ea11b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "06d0b4b5dda8bb4f4881f78065ed489b7c45a5e9",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variant2da01b185a5eb2a929d541d9ea280e2d79a1672a8b7ab3b795a7a0f6aa1ea11b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variant2da01b185a5eb2a929d541d9ea280e2d79a1672a8b7ab3b795a7a0f6aa1ea11b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variant2da01b185a5eb2a929d541d9ea280e2d79a1672a8b7ab3b795a7a0f6aa1ea11b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `06d0b4b5dda8bb4f4881f78065ed489b7c45a5e9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variant2da01b185a5eb2a929d541d9ea280e2d79a1672a8b7ab3b795a7a0f6aa1ea11b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variant2da01b185a5eb2a929d541d9ea280e2d79a1672a8b7ab3b795a7a0f6aa1ea11b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Util.Tactic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mk_sometimes](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variant2da01b185a5eb2a929d541d9ea280e2d79a1672a8b7ab3b795a7a0f6aa1ea11b.lean/declarations/mk-sometimes--96c5052522495c6b02ba7436.md) | 36 | `declaration-track:96c5052522495c6b02ba743662c7fb547de4af5d36b87459dafe2eea9fcba1de` |
| 2 | `inductive` | [ElimStatus](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variant2da01b185a5eb2a929d541d9ea280e2d79a1672a8b7ab3b795a7a0f6aa1ea11b.lean/declarations/elimstatus--fd85336ce06415cd98eddc98.md) | 60 | `declaration-track:fd85336ce06415cd98eddc983d221b26eb4cf7a77c3d65a489d622dec8242682` |
| 3 | `def` | [ElimStatus.merge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variant2da01b185a5eb2a929d541d9ea280e2d79a1672a8b7ab3b795a7a0f6aa1ea11b.lean/declarations/elimstatus-merge--9976d8e967c973486276f922.md) | 66 | `declaration-track:9976d8e967c973486276f9229e04d8823b7dbdb41159f5ac4a740521be8edf16` |
| 4 | `def` | [mkFreshNameFrom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variant2da01b185a5eb2a929d541d9ea280e2d79a1672a8b7ab3b795a7a0f6aa1ea11b.lean/declarations/mkfreshnamefrom--f16f8786fece7ac42c4336a5.md) | 73 | `declaration-track:f16f8786fece7ac42c4336a5e35370bb0ffeb1b794dd1610167aa4878a340118` |
| 5 | `def` | [choose1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variant2da01b185a5eb2a929d541d9ea280e2d79a1672a8b7ab3b795a7a0f6aa1ea11b.lean/declarations/choose1--8554856a0c0a1f2885404c0d.md) | 87 | `declaration-track:8554856a0c0a1f2885404c0db4fe1f63fd0621a1010ee563209d0cf73e257599` |
| 6 | `def` | [choose1WithInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variant2da01b185a5eb2a929d541d9ea280e2d79a1672a8b7ab3b795a7a0f6aa1ea11b.lean/declarations/choose1withinfo--c0294b67eb742dc1b821aa29.md) | 154 | `declaration-track:c0294b67eb742dc1b821aa294f6ae5c4bad3f0377b7f06a12a66ea61183b5bf9` |
| 7 | `def` | [elabChoose](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variant2da01b185a5eb2a929d541d9ea280e2d79a1672a8b7ab3b795a7a0f6aa1ea11b.lean/declarations/elabchoose--58e3824518449c85dc8b71ec.md) | 162 | `declaration-track:58e3824518449c85dc8b71ec5b3cf92fd5b381bccc35dccbbc117ec0f4f85c13` |
| 8 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variant2da01b185a5eb2a929d541d9ea280e2d79a1672a8b7ab3b795a7a0f6aa1ea11b.lean/declarations/syntax--94d758a30eb7044cae3f2da8.md) | 220 | `declaration-track:94d758a30eb7044cae3f2da87e190b966e8f26b2eeb16bfe31bab795f8651184` |
| 9 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variant2da01b185a5eb2a929d541d9ea280e2d79a1672a8b7ab3b795a7a0f6aa1ea11b.lean/declarations/elab-rules--d6dad9872451b83bb801ac0f.md) | 221 | `declaration-track:d6dad9872451b83bb801ac0faac6286717dcb3ada1aa3cfbf341f9f6b7f1c5b3` |
| 10 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variant2da01b185a5eb2a929d541d9ea280e2d79a1672a8b7ab3b795a7a0f6aa1ea11b.lean/declarations/syntax--3155cc07689f5493fd172938.md) | 228 | `declaration-track:3155cc07689f5493fd1729381b5021f265466ebde65411641ce4e28488cd8142` |
| 11 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variant2da01b185a5eb2a929d541d9ea280e2d79a1672a8b7ab3b795a7a0f6aa1ea11b.lean/declarations/macro-rules--623187b2688171644fee9795.md) | 229 | `declaration-track:623187b2688171644fee979574c33730adccf1bc68cd2e66be91a1aebfc09dd9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
