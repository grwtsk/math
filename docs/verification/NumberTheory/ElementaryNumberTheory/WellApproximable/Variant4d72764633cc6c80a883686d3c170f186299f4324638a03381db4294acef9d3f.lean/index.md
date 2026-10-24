# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.WellApproximable.Variant4d72764633cc6c80a883686d3c170f186299f4324638a03381db4294acef9d3f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f0c4d939f3efd9121a4f4ba6f06dbf553002a58a",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/WellApproximable/Variant4d72764633cc6c80a883686d3c170f186299f4324638a03381db4294acef9d3f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variant4d72764633cc6c80a883686d3c170f186299f4324638a03381db4294acef9d3f.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variant4d72764633cc6c80a883686d3c170f186299f4324638a03381db4294acef9d3f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f0c4d939f3efd9121a4f4ba6f06dbf553002a58a`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/WellApproximable/Variant4d72764633cc6c80a883686d3c170f186299f4324638a03381db4294acef9d3f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/WellApproximable/Variant4d72764633cc6c80a883686d3c170f186299f4324638a03381db4294acef9d3f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Dynamics.Ergodic.AddCircle` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Covering.LiminfLimsup` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [approxOrderOf](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variant4d72764633cc6c80a883686d3c170f186299f4324638a03381db4294acef9d3f.lean/declarations/approxorderof--e1008bdf4f241b4c662aea21.md) | 79 | `declaration-track:e1008bdf4f241b4c662aea213656b304e1f1a21275f4980f6110c1461b08dd53` |
| 2 | `theorem` | [mem_approxOrderOf_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variant4d72764633cc6c80a883686d3c170f186299f4324638a03381db4294acef9d3f.lean/declarations/mem-approxorderof-iff--6a01c88dee310e5d950963dc.md) | 85 | `result-track:6a01c88dee310e5d950963dc9457e2a7e503585f6a2c726544f930b41f587978` |
| 3 | `def` | [wellApproximable](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variant4d72764633cc6c80a883686d3c170f186299f4324638a03381db4294acef9d3f.lean/declarations/wellapproximable--09bfa3dfd93abf47153ee8c5.md) | 98 | `declaration-track:09bfa3dfd93abf47153ee8c55f69658f14da2fd0e476e6a8a0351f9a869b017f` |
| 4 | `theorem` | [mem_wellApproximable_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variant4d72764633cc6c80a883686d3c170f186299f4324638a03381db4294acef9d3f.lean/declarations/mem-wellapproximable-iff--afe90627ab3ad8d0c32656fd.md) | 104 | `result-track:afe90627ab3ad8d0c32656fd8739feeb4fb2d2a4f6bfd45bc0a28dfbf4d856ac` |
| 5 | `theorem` | [image_pow_subset_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variant4d72764633cc6c80a883686d3c170f186299f4324638a03381db4294acef9d3f.lean/declarations/image-pow-subset-of-coprime--998dc6aeaefbb0f5424e79ec.md) | 116 | `result-track:998dc6aeaefbb0f5424e79ec6fd7400aaa6c7063d32c93e859b7265b1e382ef0` |
| 6 | `theorem` | [image_pow_subset](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variant4d72764633cc6c80a883686d3c170f186299f4324638a03381db4294acef9d3f.lean/declarations/image-pow-subset--c1c4be252812999576e06279.md) | 129 | `result-track:c1c4be252812999576e062794bdc142ba51365ac450011f4477badc94718b376` |
| 7 | `theorem` | [smul_subset_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variant4d72764633cc6c80a883686d3c170f186299f4324638a03381db4294acef9d3f.lean/declarations/smul-subset-of-coprime--e557f4eb53478ad8c24397c7.md) | 142 | `result-track:e557f4eb53478ad8c24397c7514ab40f8e97c451312b52d0dc970984da8ce3fa` |
| 8 | `theorem` | [smul_eq_of_mul_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variant4d72764633cc6c80a883686d3c170f186299f4324638a03381db4294acef9d3f.lean/declarations/smul-eq-of-mul-dvd--638761565af4fdd28ad260ee.md) | 155 | `result-track:638761565af4fdd28ad260ee155e34ddd062f4a415b83c5d23a14cfa6337d244` |
| 9 | `theorem` | [mem_approxAddOrderOf_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variant4d72764633cc6c80a883686d3c170f186299f4324638a03381db4294acef9d3f.lean/declarations/mem-approxaddorderof-iff--bf33c1837ba4ce27802b4c46.md) | 182 | `result-track:bf33c1837ba4ce27802b4c4669ea7284ea239c19a800ce09a288f9c5f578b49b` |
| 10 | `theorem` | [mem_addWellApproximable_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variant4d72764633cc6c80a883686d3c170f186299f4324638a03381db4294acef9d3f.lean/declarations/mem-addwellapproximable-iff--546695570d08edde8f7738f6.md) | 192 | `result-track:546695570d08edde8f7738f6365989c822f17819b2c8f9aeedd8b7b0a52cd83a` |
| 11 | `theorem` | [addWellApproximable_ae_empty_or_univ](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variant4d72764633cc6c80a883686d3c170f186299f4324638a03381db4294acef9d3f.lean/declarations/addwellapproximable-ae-empty-or-univ--91e0262486579725e43c92ce.md) | 216 | `result-track:91e0262486579725e43c92ce0bfbaf2ba865d732475d49852aaff06c1d615072` |
| 12 | `lemma` | [_root_.GRWTSK.NumberTheory.ElementaryNumberTheory.ApproxOrderOf.Variante1cff0a1d4564b137da9e3c70e349e0010441778823453d194ee25d38f5d45c6.NormedAddCommGroup.exists_norm_nsmul_le](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variant4d72764633cc6c80a883686d3c170f186299f4324638a03381db4294acef9d3f.lean/declarations/root-grwtsk-numbertheory-elementarynumbertheory-approxorderof-variante1c--908258012fd46c5063117ad1.md) | 350 | `result-track:908258012fd46c5063117ad14163fec2b3d612456994e40c710332e3c00eb5d8` |
| 13 | `lemma` | [exists_norm_nsmul_le](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/WellApproximable/Variant4d72764633cc6c80a883686d3c170f186299f4324638a03381db4294acef9d3f.lean/declarations/exists-norm-nsmul-le--26a94eddda89ca22542909be.md) | 387 | `result-track:26a94eddda89ca22542909be37d7e7a97476f05fbed2af58daf5a4bbcd70dea9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
