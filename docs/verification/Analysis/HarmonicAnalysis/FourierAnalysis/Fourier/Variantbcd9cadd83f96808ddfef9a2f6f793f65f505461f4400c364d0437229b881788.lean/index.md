# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Fourier.Variantbcd9cadd83f96808ddfef9a2f6f793f65f505461f4400c364d0437229b881788

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb37c337cd0ab989c54a6f5d5027d922b1df3702",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbcd9cadd83f96808ddfef9a2f6f793f65f505461f4400c364d0437229b881788.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbcd9cadd83f96808ddfef9a2f6f793f65f505461f4400c364d0437229b881788.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbcd9cadd83f96808ddfef9a2f6f793f65f505461f4400c364d0437229b881788.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb37c337cd0ab989c54a6f5d5027d922b1df3702`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbcd9cadd83f96808ddfef9a2f6f793f65f505461f4400c364d0437229b881788.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbcd9cadd83f96808ddfef9a2f6f793f65f505461f4400c364d0437229b881788.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.TruthTable` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Fourier.IntFunction](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbcd9cadd83f96808ddfef9a2f6f793f65f505461f4400c364d0437229b881788.lean/declarations/fourier-intfunction--99f70baf68ffb9d3acbc0298.md) | 6 | `declaration-track:99f70baf68ffb9d3acbc02986ee3ba1f9c0a6ffd9af94001e6fc57d8518a1e64` |
| 2 | `abbrev` | [Fourier.SignedFunction](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbcd9cadd83f96808ddfef9a2f6f793f65f505461f4400c364d0437229b881788.lean/declarations/fourier-signedfunction--7a28bf3fc91e8d0ce7c9f7c1.md) | 10 | `declaration-track:7a28bf3fc91e8d0ce7c9f7c1c72b41e6d099a6897c250b4c823aac2322dc5407` |
| 3 | `structure` | [Fourier.Dyadic](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbcd9cadd83f96808ddfef9a2f6f793f65f505461f4400c364d0437229b881788.lean/declarations/fourier-dyadic--5bb4fef4d8536f32e673c6fe.md) | 14 | `declaration-track:5bb4fef4d8536f32e673c6fed188eb0258285ee7629079c034d1814762e70650` |
| 4 | `def` | [Fourier.Dyadic.denominator](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbcd9cadd83f96808ddfef9a2f6f793f65f505461f4400c364d0437229b881788.lean/declarations/fourier-dyadic-denominator--43bc34536d0f05ea14406986.md) | 20 | `declaration-track:43bc34536d0f05ea14406986595e8e452c17d54275f76c988c4debdc780825a2` |
| 5 | `def` | [Fourier.signedOutput](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbcd9cadd83f96808ddfef9a2f6f793f65f505461f4400c364d0437229b881788.lean/declarations/fourier-signedoutput--218298def84cf58f059f7e57.md) | 24 | `declaration-track:218298def84cf58f059f7e57be184556bc07ce564ee3b5a6f6702fa4395332fc` |
| 6 | `def` | [Fourier.zeroOneOutput](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbcd9cadd83f96808ddfef9a2f6f793f65f505461f4400c364d0437229b881788.lean/declarations/fourier-zerooneoutput--e6966f24a8f2a74fb90d675d.md) | 29 | `declaration-track:e6966f24a8f2a74fb90d675d1c31817791339aab0485d180388c1484618ae1fa` |
| 7 | `def` | [Fourier.character](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbcd9cadd83f96808ddfef9a2f6f793f65f505461f4400c364d0437229b881788.lean/declarations/fourier-character--07e1b412443a8a41b544e00c.md) | 39 | `declaration-track:07e1b412443a8a41b544e00c54bf94c3a8c4f5f9d1eea3ce194d474c5a1aa915` |
| 8 | `def` | [Fourier.coefficientNumerator](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbcd9cadd83f96808ddfef9a2f6f793f65f505461f4400c364d0437229b881788.lean/declarations/fourier-coefficientnumerator--5ccd1569401cf36aeafc4b75.md) | 58 | `declaration-track:5ccd1569401cf36aeafc4b75f79356e634a11138694447cd032492bcaf2ed7dd` |
| 9 | `def` | [Fourier.coefficient](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbcd9cadd83f96808ddfef9a2f6f793f65f505461f4400c364d0437229b881788.lean/declarations/fourier-coefficient--9015d91d386fac5822f98051.md) | 67 | `declaration-track:9015d91d386fac5822f9805124677ef348b072f36552c0e6903edcc229e207e5` |
| 10 | `def` | [Fourier.subsets](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbcd9cadd83f96808ddfef9a2f6f793f65f505461f4400c364d0437229b881788.lean/declarations/fourier-subsets--cb763eb059a433e782b0f152.md) | 75 | `declaration-track:cb763eb059a433e782b0f152f0ea91778b1007d8b2ad85a4a462139906e84aab` |
| 11 | `def` | [Fourier.synthesisNumeratorAt](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbcd9cadd83f96808ddfef9a2f6f793f65f505461f4400c364d0437229b881788.lean/declarations/fourier-synthesisnumeratorat--265a864ebc0e2d731874ee1b.md) | 80 | `declaration-track:265a864ebc0e2d731874ee1b98eac8893f919f1d64cf4015f5d1216ba833f203` |
| 12 | `def` | [Fourier.synthesisAt](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbcd9cadd83f96808ddfef9a2f6f793f65f505461f4400c364d0437229b881788.lean/declarations/fourier-synthesisat--d1a0cf3ca7de29d431f0933e.md) | 89 | `declaration-track:d1a0cf3ca7de29d431f0933ed015dd315b6d26d7b3eec4dfe0c772905c6a2014` |
| 13 | `def` | [Fourier.workflow](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbcd9cadd83f96808ddfef9a2f6f793f65f505461f4400c364d0437229b881788.lean/declarations/fourier-workflow--2dd20cf1b057a1801d01ef17.md) | 97 | `declaration-track:2dd20cf1b057a1801d01ef177c10fd3226c38c62dd7eab359854ddda5ccaa572` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
