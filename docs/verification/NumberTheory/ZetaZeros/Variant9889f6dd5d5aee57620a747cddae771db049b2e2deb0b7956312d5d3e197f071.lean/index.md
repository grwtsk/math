# Verification target: GRWTSK.NumberTheory.ZetaZeros.Variant9889f6dd5d5aee57620a747cddae771db049b2e2deb0b7956312d5d3e197f071

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a061262f567eb33cac8ef5f52e5212246254e708",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ZetaZeros/Variant9889f6dd5d5aee57620a747cddae771db049b2e2deb0b7956312d5d3e197f071.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/ZetaZeros/Variant9889f6dd5d5aee57620a747cddae771db049b2e2deb0b7956312d5d3e197f071.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/ZetaZeros/Variant9889f6dd5d5aee57620a747cddae771db049b2e2deb0b7956312d5d3e197f071.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a061262f567eb33cac8ef5f52e5212246254e708`.

Source path: `GRWTSK/NumberTheory/ZetaZeros/Variant9889f6dd5d5aee57620a747cddae771db049b2e2deb0b7956312d5d3e197f071.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ZetaZeros/Variant9889f6dd5d5aee57620a747cddae771db049b2e2deb0b7956312d5d3e197f071.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [riemannZetaZeros](../../../../mathematics/NumberTheory/ZetaZeros/Variant9889f6dd5d5aee57620a747cddae771db049b2e2deb0b7956312d5d3e197f071.lean/declarations/riemannzetazeros--ab935136ff0c5cf1b94549cd.md) | 36 | `declaration-track:ab935136ff0c5cf1b94549cdccf86bf03d75f9411432c7b3bceb0b569e93a261` |
| 2 | `lemma` | [mem_riemannZetaZeros](../../../../mathematics/NumberTheory/ZetaZeros/Variant9889f6dd5d5aee57620a747cddae771db049b2e2deb0b7956312d5d3e197f071.lean/declarations/mem-riemannzetazeros--c81253ddad4efc0a58bf53f9.md) | 38 | `result-track:c81253ddad4efc0a58bf53f96a8c08302603e78505521126623e7906e1e6ef11` |
| 3 | `lemma` | [riemannZetaZeros_codiscreteWithin_compl_one](../../../../mathematics/NumberTheory/ZetaZeros/Variant9889f6dd5d5aee57620a747cddae771db049b2e2deb0b7956312d5d3e197f071.lean/declarations/riemannzetazeros-codiscretewithin-compl-one--d975c5dbc509dde84c27c630.md) | 42 | `result-track:d975c5dbc509dde84c27c630031c5d1616b5ba4b9cc37d0e96572abf7b67def6` |
| 4 | `lemma` | [compl_riemannZetaZeros_mem_codiscrete](../../../../mathematics/NumberTheory/ZetaZeros/Variant9889f6dd5d5aee57620a747cddae771db049b2e2deb0b7956312d5d3e197f071.lean/declarations/compl-riemannzetazeros-mem-codiscrete--719072b4cc941b1fac1289aa.md) | 49 | `result-track:719072b4cc941b1fac1289aaab12778d1c67b618da144ba2deb680a2e117b068` |
| 5 | `lemma` | [isClosed_riemannZetaZeros](../../../../mathematics/NumberTheory/ZetaZeros/Variant9889f6dd5d5aee57620a747cddae771db049b2e2deb0b7956312d5d3e197f071.lean/declarations/isclosed-riemannzetazeros--51fb372d03e93ce7fcd135fc.md) | 60 | `result-track:51fb372d03e93ce7fcd135fcf453d83f3620451f177b317e6a376266aa7db906` |
| 6 | `lemma` | [isDiscrete_riemannZetaZeros](../../../../mathematics/NumberTheory/ZetaZeros/Variant9889f6dd5d5aee57620a747cddae771db049b2e2deb0b7956312d5d3e197f071.lean/declarations/isdiscrete-riemannzetazeros--277cdce5d4b856350f2bb20c.md) | 63 | `result-track:277cdce5d4b856350f2bb20cf841f0964320da4f6b51be9823e48b2bccfd2487` |
| 7 | `lemma` | [IsCompact.inter_riemannZetaZeros_finite](../../../../mathematics/NumberTheory/ZetaZeros/Variant9889f6dd5d5aee57620a747cddae771db049b2e2deb0b7956312d5d3e197f071.lean/declarations/iscompact-inter-riemannzetazeros-finite--d7d5fb72f46d3e079a771a80.md) | 67 | `result-track:d7d5fb72f46d3e079a771a800934fa4bba094431306dbc8033a1c0112b2e1dad` |
| 8 | `lemma` | [tendsto_riemannZeta_cofinite_cocompact](../../../../mathematics/NumberTheory/ZetaZeros/Variant9889f6dd5d5aee57620a747cddae771db049b2e2deb0b7956312d5d3e197f071.lean/declarations/tendsto-riemannzeta-cofinite-cocompact--1a67b8cbf594942521494686.md) | 73 | `result-track:1a67b8cbf5949425214946860c7c1ca9253a0782cbff2518abb04df05aa03da2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
