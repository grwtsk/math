# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Girth.Variant3a32042bb9f1f794a0da2d2a28cb19589a49524e5b4c0c09de04e4adc7d2730c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f15089fb9372f9a8f87bcf5582d49892ed202a2f",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant3a32042bb9f1f794a0da2d2a28cb19589a49524e5b4c0c09de04e4adc7d2730c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant3a32042bb9f1f794a0da2d2a28cb19589a49524e5b4c0c09de04e4adc7d2730c.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant3a32042bb9f1f794a0da2d2a28cb19589a49524e5b4c0c09de04e4adc7d2730c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f15089fb9372f9a8f87bcf5582d49892ed202a2f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant3a32042bb9f1f794a0da2d2a28cb19589a49524e5b4c0c09de04e4adc7d2730c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant3a32042bb9f1f794a0da2d2a28cb19589a49524e5b4c0c09de04e4adc7d2730c.lean.json)

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
| 1 | `def` | [egirth](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant3a32042bb9f1f794a0da2d2a28cb19589a49524e5b4c0c09de04e4adc7d2730c.lean/declarations/egirth--dff65553963c6a9c449fa5c2.md) | 31 | `declaration-track:dff65553963c6a9c449fa5c2c12892540e500ce5593645ba07492b6d400d9c6d` |
| 2 | `lemma` | [le_egirth](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant3a32042bb9f1f794a0da2d2a28cb19589a49524e5b4c0c09de04e4adc7d2730c.lean/declarations/le-egirth--dc1ede9ab6a6c3ec9217bb75.md) | 35 | `result-track:dc1ede9ab6a6c3ec9217bb756880aae7950131f1ce07d2cf7214d7568d41f299` |
| 3 | `lemma` | [Walk.IsCycle.egirth_le_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant3a32042bb9f1f794a0da2d2a28cb19589a49524e5b4c0c09de04e4adc7d2730c.lean/declarations/walk-iscycle-egirth-le-length--144dffb6ae8461bbe5822a81.md) | 38 | `result-track:144dffb6ae8461bbe5822a81a900b118620865ece4ab742a0e22d1a375854e4f` |
| 4 | `lemma` | [Walk.IsCircuit.egirth_le_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant3a32042bb9f1f794a0da2d2a28cb19589a49524e5b4c0c09de04e4adc7d2730c.lean/declarations/walk-iscircuit-egirth-le-length--dbea11d5f618cb7d95d09ab4.md) | 43 | `result-track:dbea11d5f618cb7d95d09ab4677c9f1d47954a6f1ed19040e1e5cb66957ab13d` |
| 5 | `lemma` | [egirth_eq_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant3a32042bb9f1f794a0da2d2a28cb19589a49524e5b4c0c09de04e4adc7d2730c.lean/declarations/egirth-eq-top--c3d807126e06c5cd6571f4fa.md) | 55 | `result-track:c3d807126e06c5cd6571f4fa556738ba4b21d6bc275480f85361b59ff76c6d29` |
| 6 | `lemma` | [egirth_anti](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant3a32042bb9f1f794a0da2d2a28cb19589a49524e5b4c0c09de04e4adc7d2730c.lean/declarations/egirth-anti--cc07466be07d43ef923c6a06.md) | 59 | `result-track:cc07466be07d43ef923c6a06ac2c66291b8398a45a7f6ad125db20a35b500aa1` |
| 7 | `lemma` | [exists_egirth_eq_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant3a32042bb9f1f794a0da2d2a28cb19589a49524e5b4c0c09de04e4adc7d2730c.lean/declarations/exists-egirth-eq-length--2ebf31b17624bf0ba91ef0f3.md) | 62 | `result-track:2ebf31b17624bf0ba91ef0f392970645864d3669c1acf87643e5c7facfaa25e2` |
| 8 | `lemma` | [three_le_egirth](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant3a32042bb9f1f794a0da2d2a28cb19589a49524e5b4c0c09de04e4adc7d2730c.lean/declarations/three-le-egirth--130ba606f3bd846140d30e1f.md) | 71 | `result-track:130ba606f3bd846140d30e1f761d50584bf28613e08aa276d8e18ba643566ca1` |
| 9 | `lemma` | [egirth_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant3a32042bb9f1f794a0da2d2a28cb19589a49524e5b4c0c09de04e4adc7d2730c.lean/declarations/egirth-bot--5a9233cfa16284dc94434905.md) | 74 | `result-track:5a9233cfa16284dc94434905e46df80b29f0bfbe2a588f90e91db046f2e0b1f1` |
| 10 | `theorem` | [egirth_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant3a32042bb9f1f794a0da2d2a28cb19589a49524e5b4c0c09de04e4adc7d2730c.lean/declarations/egirth-top--94534704052183342245b400.md) | 76 | `result-track:94534704052183342245b4001cc0a65599fe2fbcded43731589760992bacf771` |
| 11 | `lemma` | [egirth_le_two_mul_ediam_add_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant3a32042bb9f1f794a0da2d2a28cb19589a49524e5b4c0c09de04e4adc7d2730c.lean/declarations/egirth-le-two-mul-ediam-add-one--d2bbd0dc4eb0b1841547c5f4.md) | 90 | `result-track:d2bbd0dc4eb0b1841547c5f4644a868c31f64b1d13c474e7e578b1eda8eec43f` |
| 12 | `lemma` | [IsContained.egirth_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant3a32042bb9f1f794a0da2d2a28cb19589a49524e5b4c0c09de04e4adc7d2730c.lean/declarations/iscontained-egirth-le--605c15ec3270cbaf4a2ad490.md) | 101 | `result-track:605c15ec3270cbaf4a2ad490228dcf235d76f1ddabd116bbe01e3bf4d78a7849` |
| 13 | `lemma` | [Iso.egirth_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant3a32042bb9f1f794a0da2d2a28cb19589a49524e5b4c0c09de04e4adc7d2730c.lean/declarations/iso-egirth-eq--3244c64013d6262bc9664b6d.md) | 109 | `result-track:3244c64013d6262bc9664b6d65b226e2580c0a6b652f2d9f3b2e26b687504910` |
| 14 | `def` | [girth](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant3a32042bb9f1f794a0da2d2a28cb19589a49524e5b4c0c09de04e4adc7d2730c.lean/declarations/girth--2678276a4e33876bf8235323.md) | 121 | `declaration-track:2678276a4e33876bf82353231c555b25865ec25179329d62b2f7e05301dc0c11` |
| 15 | `lemma` | [Walk.IsCycle.girth_le_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant3a32042bb9f1f794a0da2d2a28cb19589a49524e5b4c0c09de04e4adc7d2730c.lean/declarations/walk-iscycle-girth-le-length--4f10f758927dc016157ac2d5.md) | 124 | `result-track:4f10f758927dc016157ac2d5c09905964d62c807ccab036cf2ffae89cc0cbcee` |
| 16 | `lemma` | [natCast_girth_le_egirth](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant3a32042bb9f1f794a0da2d2a28cb19589a49524e5b4c0c09de04e4adc7d2730c.lean/declarations/natcast-girth-le-egirth--d0cdbdbc13513c8c6611ac14.md) | 129 | `result-track:d0cdbdbc13513c8c6611ac142887bf6e5599ffbdeacf08f471355c7ffb9ccd4b` |
| 17 | `lemma` | [three_le_girth](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant3a32042bb9f1f794a0da2d2a28cb19589a49524e5b4c0c09de04e4adc7d2730c.lean/declarations/three-le-girth--6bc285f0fcffa4fc68e699f4.md) | 132 | `result-track:6bc285f0fcffa4fc68e699f4f7387d28ee4e5b8c0435fbd3975af216f70c0d5d` |
| 18 | `lemma` | [girth_eq_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant3a32042bb9f1f794a0da2d2a28cb19589a49524e5b4c0c09de04e4adc7d2730c.lean/declarations/girth-eq-zero--d10783ca62f3a2a6e8bb6453.md) | 135 | `result-track:d10783ca62f3a2a6e8bb64537cdec567f9e2b82efd467e57ea44701fe27cc7bb` |
| 19 | `lemma` | [girth_anti](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant3a32042bb9f1f794a0da2d2a28cb19589a49524e5b4c0c09de04e4adc7d2730c.lean/declarations/girth-anti--0da21146ff07f3b5a50ce3ad.md) | 140 | `result-track:0da21146ff07f3b5a50ce3addfaa228d9bee4f3364095c680598eff89cbb4ce5` |
| 20 | `lemma` | [Walk.IsCircuit.girth_le_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant3a32042bb9f1f794a0da2d2a28cb19589a49524e5b4c0c09de04e4adc7d2730c.lean/declarations/walk-iscircuit-girth-le-length--48118e644dcace9f1a728aed.md) | 143 | `result-track:48118e644dcace9f1a728aed0f78a5d07e60f12ec5fa9aa534420d7fb144abf8` |
| 21 | `lemma` | [exists_girth_eq_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant3a32042bb9f1f794a0da2d2a28cb19589a49524e5b4c0c09de04e4adc7d2730c.lean/declarations/exists-girth-eq-length--741a229c25b9537653c48669.md) | 147 | `result-track:741a229c25b9537653c4866904535603b92856ef61fb25f977a1e6ee75254c5f` |
| 22 | `lemma` | [girth_le_two_mul_ediam_add_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant3a32042bb9f1f794a0da2d2a28cb19589a49524e5b4c0c09de04e4adc7d2730c.lean/declarations/girth-le-two-mul-ediam-add-one--5b6576cd740f0620a911bd5e.md) | 154 | `result-track:5b6576cd740f0620a911bd5e1d85d95e7f9677b52b5c78d61eab1134d934a1c3` |
| 23 | `lemma` | [girth_le_two_mul_diam_add_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant3a32042bb9f1f794a0da2d2a28cb19589a49524e5b4c0c09de04e4adc7d2730c.lean/declarations/girth-le-two-mul-diam-add-one--137307ee9f0a0a2680402966.md) | 159 | `result-track:137307ee9f0a0a26804029663628b2b1ffc44b80d3f6fd98328cf63fff7e9697` |
| 24 | `lemma` | [girth_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant3a32042bb9f1f794a0da2d2a28cb19589a49524e5b4c0c09de04e4adc7d2730c.lean/declarations/girth-bot--9284dbdf5dd06ff442b36e94.md) | 162 | `result-track:9284dbdf5dd06ff442b36e94a179d40ff997794c6d125e01f12c2a8943751e51` |
| 25 | `theorem` | [girth_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant3a32042bb9f1f794a0da2d2a28cb19589a49524e5b4c0c09de04e4adc7d2730c.lean/declarations/girth-top--5445bdac73f3e603c2b048cf.md) | 165 | `result-track:5445bdac73f3e603c2b048cf9c70a63742e617e0c635d425f55b2dba777323ee` |
| 26 | `lemma` | [IsContained.girth_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant3a32042bb9f1f794a0da2d2a28cb19589a49524e5b4c0c09de04e4adc7d2730c.lean/declarations/iscontained-girth-le--6d8dcab2a35e5b1c3ff1cee6.md) | 168 | `result-track:6d8dcab2a35e5b1c3ff1cee6069231a029b47ece78886e5e0346625b8cc72c61` |
| 27 | `lemma` | [Iso.girth_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant3a32042bb9f1f794a0da2d2a28cb19589a49524e5b4c0c09de04e4adc7d2730c.lean/declarations/iso-girth-eq--2d0d1d62a88c090056ca2e68.md) | 171 | `result-track:2d0d1d62a88c090056ca2e685d3aeabb6c3f49a5c1e3824e9b9a32902d02bdb3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
