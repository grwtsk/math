# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Snoc.Variant113fe93aa929a6a491dd7def46d8de725d70085048342f6a6bcc76ed6b777f70

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a304dad8d2b97701750b832c44ea4e246b82b49",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant113fe93aa929a6a491dd7def46d8de725d70085048342f6a6bcc76ed6b777f70.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant113fe93aa929a6a491dd7def46d8de725d70085048342f6a6bcc76ed6b777f70.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant113fe93aa929a6a491dd7def46d8de725d70085048342f6a6bcc76ed6b777f70.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a304dad8d2b97701750b832c44ea4e246b82b49`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant113fe93aa929a6a491dd7def46d8de725d70085048342f6a6bcc76ed6b777f70.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant113fe93aa929a6a491dd7def46d8de725d70085048342f6a6bcc76ed6b777f70.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [snoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant113fe93aa929a6a491dd7def46d8de725d70085048342f6a6bcc76ed6b777f70.lean/declarations/snoc--0122d7d594ef9121e948cd98.md) | 40 | `declaration-track:0122d7d594ef9121e948cd987cb0a9266d8f01788db5f3c08358f1c77b307a55` |
| 2 | `theorem` | [snoc_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant113fe93aa929a6a491dd7def46d8de725d70085048342f6a6bcc76ed6b777f70.lean/declarations/snoc-cons--65fb15692fab8325d805aa7d.md) | 50 | `result-track:65fb15692fab8325d805aa7dd10f9ef6b3ceb0075a9e5d25fba1c32086445d38` |
| 3 | `theorem` | [snoc_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant113fe93aa929a6a491dd7def46d8de725d70085048342f6a6bcc76ed6b777f70.lean/declarations/snoc-nil--d7cd544b6a94ba9c7707067d.md) | 54 | `result-track:d7cd544b6a94ba9c7707067dd0311df02ee24e25d88d711be35b082d8bc01b17` |
| 4 | `theorem` | [reverse_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant113fe93aa929a6a491dd7def46d8de725d70085048342f6a6bcc76ed6b777f70.lean/declarations/reverse-cons--81ed156df935752ff240f6dc.md) | 58 | `result-track:81ed156df935752ff240f6dc928a53a45afd215eb136f28d1c319bd57ec1f5fc` |
| 5 | `theorem` | [reverse_snoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant113fe93aa929a6a491dd7def46d8de725d70085048342f6a6bcc76ed6b777f70.lean/declarations/reverse-snoc--34cd9db0322c8344e607cc81.md) | 64 | `result-track:34cd9db0322c8344e607cc81813915da5c231aaca9a275d9da433ae3b1c206c6` |
| 6 | `theorem` | [replicate_succ_to_snoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant113fe93aa929a6a491dd7def46d8de725d70085048342f6a6bcc76ed6b777f70.lean/declarations/replicate-succ-to-snoc--568bba918e2bd8b30f0567fd.md) | 70 | `result-track:568bba918e2bd8b30f0567fdc4e221989bd1bfbc335c561aee36e314ab5c8ee6` |
| 7 | `def` | [revInductionOn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant113fe93aa929a6a491dd7def46d8de725d70085048342f6a6bcc76ed6b777f70.lean/declarations/revinductionon--2e767e82e4d63679e0ba08f6.md) | 94 | `declaration-track:2e767e82e4d63679e0ba08f65351d512ba569d37316849d73d1b79f29ff06344` |
| 8 | `def` | [revInductionOn₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant113fe93aa929a6a491dd7def46d8de725d70085048342f6a6bcc76ed6b777f70.lean/declarations/revinductionon--045f68fad64a036687280464.md) | 107 | `declaration-track:045f68fad64a036687280464dd08fe81f0cd4ebaed9aad200bb9789deb7cc61c` |
| 9 | `def` | [revCasesOn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant113fe93aa929a6a491dd7def46d8de725d70085048342f6a6bcc76ed6b777f70.lean/declarations/revcaseson--a4144917178cda64f8a9d207.md) | 124 | `declaration-track:a4144917178cda64f8a9d207fb67961946dd4b92b740ad005efef8b84a5502e2` |
| 10 | `theorem` | [map_snoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant113fe93aa929a6a491dd7def46d8de725d70085048342f6a6bcc76ed6b777f70.lean/declarations/map-snoc--4fc8cd4e56458719170170e9.md) | 137 | `result-track:4fc8cd4e56458719170170e916e9bf2b73a3bc8ca81803416b40d6d95731fac7` |
| 11 | `theorem` | [mapAccumr_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant113fe93aa929a6a491dd7def46d8de725d70085048342f6a6bcc76ed6b777f70.lean/declarations/mapaccumr-nil--5f517c9d4cf144d2a95010d5.md) | 141 | `result-track:5f517c9d4cf144d2a95010d583d2ad01ef0d3c989022dbe7f44fccc0ecafd898` |
| 12 | `theorem` | [mapAccumr_snoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant113fe93aa929a6a491dd7def46d8de725d70085048342f6a6bcc76ed6b777f70.lean/declarations/mapaccumr-snoc--fdecfa103f74194f55553539.md) | 145 | `result-track:fdecfa103f74194f55553539c8709888567411b1747a44f8802d3fad0e300862` |
| 13 | `theorem` | [map₂_snoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant113fe93aa929a6a491dd7def46d8de725d70085048342f6a6bcc76ed6b777f70.lean/declarations/map-snoc--417bbd6292178025003ad0db.md) | 157 | `result-track:417bbd6292178025003ad0dbecfd9192919aeee578bbc355f4010b8f3b86a5b4` |
| 14 | `theorem` | [mapAccumr₂_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant113fe93aa929a6a491dd7def46d8de725d70085048342f6a6bcc76ed6b777f70.lean/declarations/mapaccumr-nil--b00f454565cb1f14dd3f3d48.md) | 162 | `result-track:b00f454565cb1f14dd3f3d48ba2743e42b4fcf9af83fa1a048843d60aa870bfc` |
| 15 | `theorem` | [mapAccumr₂_snoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snoc/Variant113fe93aa929a6a491dd7def46d8de725d70085048342f6a6bcc76ed6b777f70.lean/declarations/mapaccumr-snoc--e5abfb249a90f9fb3283078f.md) | 167 | `result-track:e5abfb249a90f9fb3283078fb33093b55897c8d9c85b6caa9cbb49d9c6897c20` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
