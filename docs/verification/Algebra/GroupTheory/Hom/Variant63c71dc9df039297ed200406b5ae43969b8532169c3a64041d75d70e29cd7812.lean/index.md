# Verification target: GRWTSK.Algebra.GroupTheory.Hom.Variant63c71dc9df039297ed200406b5ae43969b8532169c3a64041d75d70e29cd7812

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c209053146769ffec29f9e4a56cbf2f8ec67b301",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Hom/Variant63c71dc9df039297ed200406b5ae43969b8532169c3a64041d75d70e29cd7812.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant63c71dc9df039297ed200406b5ae43969b8532169c3a64041d75d70e29cd7812.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant63c71dc9df039297ed200406b5ae43969b8532169c3a64041d75d70e29cd7812.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c209053146769ffec29f9e4a56cbf2f8ec67b301`.

Source path: `GRWTSK/Algebra/GroupTheory/Hom/Variant63c71dc9df039297ed200406b5ae43969b8532169c3a64041d75d70e29cd7812.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Hom/Variant63c71dc9df039297ed200406b5ae43969b8532169c3a64041d75d70e29cd7812.lean.json)

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
| 1 | `lemma` | [ext_nat'](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant63c71dc9df039297ed200406b5ae43969b8532169c3a64041d75d70e29cd7812.lean/declarations/ext-nat--e69fc8421009c63f18d568d4.md) | 36 | `result-track:e69fc8421009c63f18d568d43ea0184d19a6d2a806d13def7d795b9bda6372bd` |
| 2 | `lemma` | [AddMonoidHom.ext_nat](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant63c71dc9df039297ed200406b5ae43969b8532169c3a64041d75d70e29cd7812.lean/declarations/addmonoidhom-ext-nat--14efb8ee9833548b69b7754d.md) | 45 | `result-track:14efb8ee9833548b69b7754ddf5e93859255b3c78f3a431ccfb17705ce3549df` |
| 3 | `def` | [multiplesHom](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant63c71dc9df039297ed200406b5ae43969b8532169c3a64041d75d70e29cd7812.lean/declarations/multipleshom--db36ca3edaa45560e6dc259b.md) | 55 | `declaration-track:db36ca3edaa45560e6dc259ba73a2b10a2fcdb143c92729fdcd6d98dd29da194` |
| 4 | `lemma` | [multiplesHom_apply](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant63c71dc9df039297ed200406b5ae43969b8532169c3a64041d75d70e29cd7812.lean/declarations/multipleshom-apply--f3d0d6a12ec993ba88ac209e.md) | 64 | `result-track:f3d0d6a12ec993ba88ac209e24f0f784e4896f3ec06bda891cf36f69b23f66a4` |
| 5 | `lemma` | [multiplesHom_symm_apply](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant63c71dc9df039297ed200406b5ae43969b8532169c3a64041d75d70e29cd7812.lean/declarations/multipleshom-symm-apply--13a8c6c214fb11748c90f034.md) | 66 | `result-track:13a8c6c214fb11748c90f034cf54120bf27c9bc61f62493ec95a09ef131f01a9` |
| 6 | `lemma` | [AddMonoidHom.apply_nat](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant63c71dc9df039297ed200406b5ae43969b8532169c3a64041d75d70e29cd7812.lean/declarations/addmonoidhom-apply-nat--14c552f0248ffb29138c7e36.md) | 68 | `result-track:14c552f0248ffb29138c7e36059c3367c934624e230c9a65ce03c8ae540becb1` |
| 7 | `def` | [powersHom](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant63c71dc9df039297ed200406b5ae43969b8532169c3a64041d75d70e29cd7812.lean/declarations/powershom--50cd392924f34e3d2a70b0d2.md) | 79 | `declaration-track:50cd392924f34e3d2a70b0d26b12b104405d4c5ff50e3f068d548c1be5918953` |
| 8 | `lemma` | [powersHom_apply](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant63c71dc9df039297ed200406b5ae43969b8532169c3a64041d75d70e29cd7812.lean/declarations/powershom-apply--38393ae7e601ce32538f8167.md) | 82 | `result-track:38393ae7e601ce32538f81678ab6baa9672b197a24736a38c913b9a079b70e96` |
| 9 | `lemma` | [powersHom_symm_apply](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant63c71dc9df039297ed200406b5ae43969b8532169c3a64041d75d70e29cd7812.lean/declarations/powershom-symm-apply--926e40ea5a1d6d9d1c084b12.md) | 85 | `result-track:926e40ea5a1d6d9d1c084b12b1fc4985325d997c897444908372698c0482486d` |
| 10 | `lemma` | [MonoidHom.apply_mnat](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant63c71dc9df039297ed200406b5ae43969b8532169c3a64041d75d70e29cd7812.lean/declarations/monoidhom-apply-mnat--a2c568ac091cf4c32beb080c.md) | 88 | `result-track:a2c568ac091cf4c32beb080c24f9173ff8fc8e8f71a8fd97183962beaedd30fd` |
| 11 | `lemma` | [MonoidHom.ext_mnat](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant63c71dc9df039297ed200406b5ae43969b8532169c3a64041d75d70e29cd7812.lean/declarations/monoidhom-ext-mnat--90d1a47802e94bfedcb756b5.md) | 93 | `result-track:90d1a47802e94bfedcb756b58de3cd477706c7feab5bd28cd5aab3462892ad9b` |
| 12 | `def` | [multiplesAddHom](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant63c71dc9df039297ed200406b5ae43969b8532169c3a64041d75d70e29cd7812.lean/declarations/multiplesaddhom--ea6ccbea750ad103614adac9.md) | 104 | `declaration-track:ea6ccbea750ad103614adac935aecc0e40098444ae247ce84f544463bf1c27f0` |
| 13 | `lemma` | [multiplesAddHom_apply](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant63c71dc9df039297ed200406b5ae43969b8532169c3a64041d75d70e29cd7812.lean/declarations/multiplesaddhom-apply--adae5bf7893f521a341b0939.md) | 108 | `result-track:adae5bf7893f521a341b09391e1c44415e9d62a55fa8f70ffb9e8b73fcf8cd87` |
| 14 | `lemma` | [multiplesAddHom_symm_apply](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant63c71dc9df039297ed200406b5ae43969b8532169c3a64041d75d70e29cd7812.lean/declarations/multiplesaddhom-symm-apply--fd992334c71445afeb1bdf9f.md) | 110 | `result-track:fd992334c71445afeb1bdf9f6297ad763a264b3f9c4c2ba683ecdbd4ee8f476c` |
| 15 | `def` | [powersMulHom](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant63c71dc9df039297ed200406b5ae43969b8532169c3a64041d75d70e29cd7812.lean/declarations/powersmulhom--e79b8a8560c6e2466e36ecac.md) | 119 | `declaration-track:e79b8a8560c6e2466e36ecac70c6f02700fd35cb75f586e7640f420f50e65ff8` |
| 16 | `lemma` | [powersMulHom_apply](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant63c71dc9df039297ed200406b5ae43969b8532169c3a64041d75d70e29cd7812.lean/declarations/powersmulhom-apply--65ec66435c5e6b33e1477591.md) | 124 | `result-track:65ec66435c5e6b33e14775919727610e6dfbd5e8177c25d90d708a16d96c5a4f` |
| 17 | `lemma` | [powersMulHom_symm_apply](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant63c71dc9df039297ed200406b5ae43969b8532169c3a64041d75d70e29cd7812.lean/declarations/powersmulhom-symm-apply--dee5d317ca6908f02bc51b56.md) | 127 | `result-track:dee5d317ca6908f02bc51b569d2f43762654217b9acbb2a85e5a4838f8288beb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
