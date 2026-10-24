# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Fourier.Variante85e6718fb38e1410069f722084dc97a46f70fbba3af64d6af8cd80aeb38bd07

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2a6c4f690b99051afe05631d8a3ce0e282cc238",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante85e6718fb38e1410069f722084dc97a46f70fbba3af64d6af8cd80aeb38bd07.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante85e6718fb38e1410069f722084dc97a46f70fbba3af64d6af8cd80aeb38bd07.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante85e6718fb38e1410069f722084dc97a46f70fbba3af64d6af8cd80aeb38bd07.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2a6c4f690b99051afe05631d8a3ce0e282cc238`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante85e6718fb38e1410069f722084dc97a46f70fbba3af64d6af8cd80aeb38bd07.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante85e6718fb38e1410069f722084dc97a46f70fbba3af64d6af8cd80aeb38bd07.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.TruthTable` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Fourier.IntFunction](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante85e6718fb38e1410069f722084dc97a46f70fbba3af64d6af8cd80aeb38bd07.lean/declarations/fourier-intfunction--4859532c0d2bd3f52d4dea71.md) | 14 | `declaration-track:4859532c0d2bd3f52d4dea713b649ab84d975a6a7c3bcc116f85e48e5a8423d4` |
| 2 | `abbrev` | [Fourier.SignedFunction](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante85e6718fb38e1410069f722084dc97a46f70fbba3af64d6af8cd80aeb38bd07.lean/declarations/fourier-signedfunction--693b8a51079a12ae0672b99d.md) | 18 | `declaration-track:693b8a51079a12ae0672b99da47799a1eb82304e6eb7758f2565d8be420b4ccf` |
| 3 | `structure` | [Fourier.Dyadic](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante85e6718fb38e1410069f722084dc97a46f70fbba3af64d6af8cd80aeb38bd07.lean/declarations/fourier-dyadic--0d6586cb3703354ed17d595b.md) | 22 | `declaration-track:0d6586cb3703354ed17d595bea30bb3d68ea933bddcf401d9a0ec2f54728d2b7` |
| 4 | `def` | [Fourier.Dyadic.denominator](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante85e6718fb38e1410069f722084dc97a46f70fbba3af64d6af8cd80aeb38bd07.lean/declarations/fourier-dyadic-denominator--1cc25bafacd2c16b2e6ecd43.md) | 28 | `declaration-track:1cc25bafacd2c16b2e6ecd43e42499d6eb984eb2bddff38f2d20d0ae53071fae` |
| 5 | `def` | [Fourier.signedOutput](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante85e6718fb38e1410069f722084dc97a46f70fbba3af64d6af8cd80aeb38bd07.lean/declarations/fourier-signedoutput--0dca4569328fbd55f3e1b9db.md) | 32 | `declaration-track:0dca4569328fbd55f3e1b9dbb670c3e51051a00e56420af2188f88b29769e710` |
| 6 | `def` | [Fourier.zeroOneOutput](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante85e6718fb38e1410069f722084dc97a46f70fbba3af64d6af8cd80aeb38bd07.lean/declarations/fourier-zerooneoutput--b82be0e67db15fe36322f433.md) | 37 | `declaration-track:b82be0e67db15fe36322f433f37980139bc158b551ff6d93c8faa8e26a0051da` |
| 7 | `def` | [Fourier.character](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante85e6718fb38e1410069f722084dc97a46f70fbba3af64d6af8cd80aeb38bd07.lean/declarations/fourier-character--37d47b1de17294031ca00338.md) | 47 | `declaration-track:37d47b1de17294031ca00338086ca462944f7c1bd357b1c2e9a18a4d79daac07` |
| 8 | `def` | [Fourier.coefficientNumerator](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante85e6718fb38e1410069f722084dc97a46f70fbba3af64d6af8cd80aeb38bd07.lean/declarations/fourier-coefficientnumerator--905523808cef7c571b53e282.md) | 66 | `declaration-track:905523808cef7c571b53e282993b883a409c785dda9ded4c3d0d199e82e63625` |
| 9 | `def` | [Fourier.coefficient](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante85e6718fb38e1410069f722084dc97a46f70fbba3af64d6af8cd80aeb38bd07.lean/declarations/fourier-coefficient--7243c027428a3e43f213c6db.md) | 75 | `declaration-track:7243c027428a3e43f213c6dbc571b3b923fd18ed008e2d6cf938ef45157bac8a` |
| 10 | `def` | [Fourier.subsets](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante85e6718fb38e1410069f722084dc97a46f70fbba3af64d6af8cd80aeb38bd07.lean/declarations/fourier-subsets--ea78fa7cebdd2a1d771372a9.md) | 83 | `declaration-track:ea78fa7cebdd2a1d771372a940484a19a875b905f4f0dad557bc9332b33f2bb2` |
| 11 | `def` | [Fourier.synthesisNumeratorAt](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante85e6718fb38e1410069f722084dc97a46f70fbba3af64d6af8cd80aeb38bd07.lean/declarations/fourier-synthesisnumeratorat--b9e1a8aacae414554f2d5002.md) | 88 | `declaration-track:b9e1a8aacae414554f2d5002a29110ee8b33a314a0284d6cadcbdcb5b6907cb6` |
| 12 | `def` | [Fourier.synthesisAt](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante85e6718fb38e1410069f722084dc97a46f70fbba3af64d6af8cd80aeb38bd07.lean/declarations/fourier-synthesisat--709c9eeb993daef73dcf5637.md) | 97 | `declaration-track:709c9eeb993daef73dcf56372661f1ef2da54991502756a9ad708dfcbf7c0b41` |
| 13 | `def` | [Fourier.workflow](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante85e6718fb38e1410069f722084dc97a46f70fbba3af64d6af8cd80aeb38bd07.lean/declarations/fourier-workflow--f924667453709e65a5870032.md) | 105 | `declaration-track:f924667453709e65a587003210638e75b51529b212c4a4088a6603ec397d6d8f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
