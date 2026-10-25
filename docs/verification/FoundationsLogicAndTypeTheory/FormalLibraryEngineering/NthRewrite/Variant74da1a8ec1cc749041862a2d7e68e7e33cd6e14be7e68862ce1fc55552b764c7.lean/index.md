# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NthRewrite.Variant74da1a8ec1cc749041862a2d7e68e7e33cd6e14be7e68862ce1fc55552b764c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f448d45e28ad4e143d0fdbe2c20ca73d0949d31",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NthRewrite/Variant74da1a8ec1cc749041862a2d7e68e7e33cd6e14be7e68862ce1fc55552b764c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NthRewrite/Variant74da1a8ec1cc749041862a2d7e68e7e33cd6e14be7e68862ce1fc55552b764c7.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NthRewrite/Variant74da1a8ec1cc749041862a2d7e68e7e33cd6e14be7e68862ce1fc55552b764c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f448d45e28ad4e143d0fdbe2c20ca73d0949d31`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NthRewrite/Variant74da1a8ec1cc749041862a2d7e68e7e33cd6e14be7e68862ce1fc55552b764c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NthRewrite/Variant74da1a8ec1cc749041862a2d7e68e7e33cd6e14be7e68862ce1fc55552b764c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Tactic.Rewrite` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Elab.BuiltinTerm` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rewriteTarget'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NthRewrite/Variant74da1a8ec1cc749041862a2d7e68e7e33cd6e14be7e68862ce1fc55552b764c7.lean/declarations/rewritetarget--dafc8168d5b119184079cc30.md) | 32 | `declaration-track:dafc8168d5b119184079cc30d0a946368b0d640d2fdc9ba249e0048dbd0c2912` |
| 2 | `def` | [rewriteLocalDecl'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NthRewrite/Variant74da1a8ec1cc749041862a2d7e68e7e33cd6e14be7e68862ce1fc55552b764c7.lean/declarations/rewritelocaldecl--615ff02979c1c768b0c969f4.md) | 43 | `declaration-track:615ff02979c1c768b0c969f430dbde2ff29558511dd0591cd05d1102759d5ed0` |
| 3 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NthRewrite/Variant74da1a8ec1cc749041862a2d7e68e7e33cd6e14be7e68862ce1fc55552b764c7.lean/declarations/syntax--da4f4b94906411a5c98577d1.md) | 58 | `declaration-track:da4f4b94906411a5c98577d1206817daf9a44a4db53d8a96f1d141efdb7e5bf9` |
| 4 | `def` | [evalNthRewriteSeq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NthRewrite/Variant74da1a8ec1cc749041862a2d7e68e7e33cd6e14be7e68862ce1fc55552b764c7.lean/declarations/evalnthrewriteseq--8dc2135c5e1ab47b7c88108d.md) | 60 | `declaration-track:8dc2135c5e1ab47b7c88108d698b0bb8960d5972130fd99e1703acc1f9acc9bf` |
| 5 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NthRewrite/Variant74da1a8ec1cc749041862a2d7e68e7e33cd6e14be7e68862ce1fc55552b764c7.lean/declarations/macro--307dad8d13f8324742c1ef3c.md) | 78 | `declaration-track:307dad8d13f8324742c1ef3c29f8e2a86eac18d57c610ee896b282fe9009e782` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
