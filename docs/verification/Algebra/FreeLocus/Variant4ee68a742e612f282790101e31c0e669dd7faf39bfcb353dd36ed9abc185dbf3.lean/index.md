# Verification target: GRWTSK.Algebra.FreeLocus.Variant4ee68a742e612f282790101e31c0e669dd7faf39bfcb353dd36ed9abc185dbf3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f1574cb933fd263ea32c0c5f761afb2621e9fa6",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FreeLocus/Variant4ee68a742e612f282790101e31c0e669dd7faf39bfcb353dd36ed9abc185dbf3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/FreeLocus/Variant4ee68a742e612f282790101e31c0e669dd7faf39bfcb353dd36ed9abc185dbf3.lean/index.md) · [Full source](../../../../mathematics/Algebra/FreeLocus/Variant4ee68a742e612f282790101e31c0e669dd7faf39bfcb353dd36ed9abc185dbf3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f1574cb933fd263ea32c0c5f761afb2621e9fa6`.

Source path: `GRWTSK/Algebra/FreeLocus/Variant4ee68a742e612f282790101e31c0e669dd7faf39bfcb353dd36ed9abc185dbf3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FreeLocus/Variant4ee68a742e612f282790101e31c0e669dd7faf39bfcb353dd36ed9abc185dbf3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Flat.Stability` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalProperties.Projective` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.Module` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Free` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.LocalizationLocalization` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.Topology` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocallyConstant.Basic` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Free` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [freeLocus](../../../../mathematics/Algebra/FreeLocus/Variant4ee68a742e612f282790101e31c0e669dd7faf39bfcb353dd36ed9abc185dbf3.lean/declarations/freelocus--35c8669e3c02020f3a83bd7b.md) | 50 | `declaration-track:35c8669e3c02020f3a83bd7ba4440ff0dd8fcfa6713b1cb4f1d21ccce1fae5b2` |
| 2 | `lemma` | [mem_freeLocus](../../../../mathematics/Algebra/FreeLocus/Variant4ee68a742e612f282790101e31c0e669dd7faf39bfcb353dd36ed9abc185dbf3.lean/declarations/mem-freelocus--4c1e0745ebbc09ead4bc26de.md) | 55 | `result-track:4c1e0745ebbc09ead4bc26de0d3f541285d92dc7c88034302dc33ba3be9cbe4c` |
| 3 | `lemma` | [mem_freeLocus_of_isLocalization](../../../../mathematics/Algebra/FreeLocus/Variant4ee68a742e612f282790101e31c0e669dd7faf39bfcb353dd36ed9abc185dbf3.lean/declarations/mem-freelocus-of-islocalization--8409913a323461a0b48182fe.md) | 60 | `result-track:8409913a323461a0b48182fe7ee7137be779aac882a554cb1df18f83eb131b2c` |
| 4 | `lemma` | [mem_freeLocus_iff_tensor](../../../../mathematics/Algebra/FreeLocus/Variant4ee68a742e612f282790101e31c0e669dd7faf39bfcb353dd36ed9abc185dbf3.lean/declarations/mem-freelocus-iff-tensor--42f31ec79d4aaa3a078b5bdb.md) | 79 | `result-track:42f31ec79d4aaa3a078b5bdbd8d6388ea08986b412dbcf4ee0e730c6965580ed` |
| 5 | `lemma` | [freeLocus_congr](../../../../mathematics/Algebra/FreeLocus/Variant4ee68a742e612f282790101e31c0e669dd7faf39bfcb353dd36ed9abc185dbf3.lean/declarations/freelocus-congr--f9e9e1ef6aa8f108b21ef3e5.md) | 86 | `result-track:f9e9e1ef6aa8f108b21ef3e50f229b49aa2d7e12a2da2f76ac9d5aa9df105960` |
| 6 | `lemma` | [comap_freeLocus_le](../../../../mathematics/Algebra/FreeLocus/Variant4ee68a742e612f282790101e31c0e669dd7faf39bfcb353dd36ed9abc185dbf3.lean/declarations/comap-freelocus-le--9082004f64c9ddbc3c728e40.md) | 93 | `result-track:9082004f64c9ddbc3c728e407bb82fb557e3e1546f5b40dfff17d611504be681` |
| 7 | `lemma` | [freeLocus_localization](../../../../mathematics/Algebra/FreeLocus/Variant4ee68a742e612f282790101e31c0e669dd7faf39bfcb353dd36ed9abc185dbf3.lean/declarations/freelocus-localization--79613536934944375e6a57a1.md) | 109 | `result-track:79613536934944375e6a57a1f60a54ec84387236ef369391560847311721bc1e` |
| 8 | `lemma` | [freeLocus_eq_univ_iff](../../../../mathematics/Algebra/FreeLocus/Variant4ee68a742e612f282790101e31c0e669dd7faf39bfcb353dd36ed9abc185dbf3.lean/declarations/freelocus-eq-univ-iff--db4dff3ad3485be592587818.md) | 160 | `result-track:db4dff3ad3485be5925878189cfd1846e46ff9796015c1a1adadde4b0e0ee403` |
| 9 | `lemma` | [freeLocus_eq_univ](../../../../mathematics/Algebra/FreeLocus/Variant4ee68a742e612f282790101e31c0e669dd7faf39bfcb353dd36ed9abc185dbf3.lean/declarations/freelocus-eq-univ--56f03bf3b21d6fc806331c7c.md) | 166 | `result-track:56f03bf3b21d6fc806331c7cc94baf108009a3a6eb662ac540ad843f6d60cb3a` |
| 10 | `lemma` | [basicOpen_subset_freeLocus_iff](../../../../mathematics/Algebra/FreeLocus/Variant4ee68a742e612f282790101e31c0e669dd7faf39bfcb353dd36ed9abc185dbf3.lean/declarations/basicopen-subset-freelocus-iff--93f2c853056c105fe56beb74.md) | 171 | `result-track:93f2c853056c105fe56beb744ce3d0ee8f9dd3683f584de618bec1e5cac96773` |
| 11 | `lemma` | [isOpen_freeLocus](../../../../mathematics/Algebra/FreeLocus/Variant4ee68a742e612f282790101e31c0e669dd7faf39bfcb353dd36ed9abc185dbf3.lean/declarations/isopen-freelocus--a4c6f041bffcb96f34fad0aa.md) | 177 | `result-track:a4c6f041bffcb96f34fad0aafede013caf49aa4564a91990bd2e84f1fe8f099e` |
| 12 | `def` | [rankAtStalk](../../../../mathematics/Algebra/FreeLocus/Variant4ee68a742e612f282790101e31c0e669dd7faf39bfcb353dd36ed9abc185dbf3.lean/declarations/rankatstalk--ae47f3fbb08541132ca2591b.md) | 189 | `declaration-track:ae47f3fbb08541132ca2591b004daa2f23dd53c497a4b70680899364c1aceda6` |
| 13 | `lemma` | [isLocallyConstant_rankAtStalk_freeLocus](../../../../mathematics/Algebra/FreeLocus/Variant4ee68a742e612f282790101e31c0e669dd7faf39bfcb353dd36ed9abc185dbf3.lean/declarations/islocallyconstant-rankatstalk-freelocus--d36526a81c1416ae0621e07c.md) | 192 | `result-track:d36526a81c1416ae0621e07ccf81968e1b6a4959fe1c496a27b14ffe9d16baea` |
| 14 | `lemma` | [isLocallyConstant_rankAtStalk](../../../../mathematics/Algebra/FreeLocus/Variant4ee68a742e612f282790101e31c0e669dd7faf39bfcb353dd36ed9abc185dbf3.lean/declarations/islocallyconstant-rankatstalk--bf7132df29df7271a387394c.md) | 230 | `result-track:bf7132df29df7271a387394c5885bbe4cf141ba24db18c9c9fafdefd0a29bf71` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
