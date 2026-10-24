# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Towers.Variant41ed3707c6049dbafe3de860b640f35c76dd5d92d1dffad4120cd5c490b36995

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f16394e9e7fe8bcffa3cd37374c97fb2350d3f69",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Towers/Variant41ed3707c6049dbafe3de860b640f35c76dd5d92d1dffad4120cd5c490b36995.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Towers/Variant41ed3707c6049dbafe3de860b640f35c76dd5d92d1dffad4120cd5c490b36995.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Towers/Variant41ed3707c6049dbafe3de860b640f35c76dd5d92d1dffad4120cd5c490b36995.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f16394e9e7fe8bcffa3cd37374c97fb2350d3f69`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Towers/Variant41ed3707c6049dbafe3de860b640f35c76dd5d92d1dffad4120cd5c490b36995.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Towers/Variant41ed3707c6049dbafe3de860b640f35c76dd5d92d1dffad4120cd5c490b36995.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.IntermediateField.Adjoin.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Lattice.Fold` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cumulativeField](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Towers/Variant41ed3707c6049dbafe3de860b640f35c76dd5d92d1dffad4120cd5c490b36995.lean/declarations/cumulativefield--4490ea6323d25ea9c5796be6.md) | 18 | `declaration-track:4490ea6323d25ea9c5796be61c02079ccaef412e4e7200801c1ac944f7720213` |
| 2 | `theorem` | [cumulative_field_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Towers/Variant41ed3707c6049dbafe3de860b640f35c76dd5d92d1dffad4120cd5c490b36995.lean/declarations/cumulative-field-mono--833da93184051c1a1efce13f.md) | 22 | `result-track:833da93184051c1a1efce13f357b8334885f9269a26227b629d15261d3595b5d` |
| 3 | `theorem` | [component_le_cumulative](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Towers/Variant41ed3707c6049dbafe3de860b640f35c76dd5d92d1dffad4120cd5c490b36995.lean/declarations/component-le-cumulative--a9cd46406346dd61bc99ff21.md) | 27 | `result-track:a9cd46406346dd61bc99ff21a38cb557cd4d2e7bd71a5c4a4b04b7b483ded376` |
| 4 | `def` | [cumulativeInclusion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Towers/Variant41ed3707c6049dbafe3de860b640f35c76dd5d92d1dffad4120cd5c490b36995.lean/declarations/cumulativeinclusion--953e4ad1426c506b3fbb08c3.md) | 32 | `declaration-track:953e4ad1426c506b3fbb08c363b1a7e7c2144e403517f20dbaed82d9c90a2987` |
| 5 | `theorem` | [cumulative_inclusion_comp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Towers/Variant41ed3707c6049dbafe3de860b640f35c76dd5d92d1dffad4120cd5c490b36995.lean/declarations/cumulative-inclusion-comp--3fea11b474c62fcc44725046.md) | 37 | `result-track:3fea11b474c62fcc4472504657b2a0566dbd8225adbe6f5da8d5f86ab1181c78` |
| 6 | `structure` | [FiniteInverseSystem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Towers/Variant41ed3707c6049dbafe3de860b640f35c76dd5d92d1dffad4120cd5c490b36995.lean/declarations/finiteinversesystem--a5b89ef0e4e9498d4bf06c8d.md) | 45 | `declaration-track:a5b89ef0e4e9498d4bf06c8d10c9a109333c1d024a7cb97974d0b0aa382a04ce` |
| 7 | `def` | [CompatibleSection](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Towers/Variant41ed3707c6049dbafe3de860b640f35c76dd5d92d1dffad4120cd5c490b36995.lean/declarations/compatiblesection--6e5cdff28c5bab5202081a49.md) | 61 | `declaration-track:6e5cdff28c5bab5202081a49b22a13b026768c624dbf5e4cf4239a4ef92ed1dc` |
| 8 | `theorem` | [compatible_section_restrict](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Towers/Variant41ed3707c6049dbafe3de860b640f35c76dd5d92d1dffad4120cd5c490b36995.lean/declarations/compatible-section-restrict--75fc70ce2c29f2ad5046fc3e.md) | 65 | `result-track:75fc70ce2c29f2ad5046fc3e39d840cdc37dce594952cae60066d2121865b51b` |
| 9 | `def` | [constantInverseSystem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Towers/Variant41ed3707c6049dbafe3de860b640f35c76dd5d92d1dffad4120cd5c490b36995.lean/declarations/constantinversesystem--dd82c3beab1cb6b437612d25.md) | 71 | `declaration-track:dd82c3beab1cb6b437612d257e0a8ee7a8624dc1841a01e8ce2c316eb8156c73` |
| 10 | `def` | [sectionFromLast](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Towers/Variant41ed3707c6049dbafe3de860b640f35c76dd5d92d1dffad4120cd5c490b36995.lean/declarations/sectionfromlast--c207b9d9cc1d62d109afa8c0.md) | 80 | `declaration-track:c207b9d9cc1d62d109afa8c04c357286916007353036781fabdb6633e7f28c39` |
| 11 | `theorem` | [section_from_last_compatible](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Towers/Variant41ed3707c6049dbafe3de860b640f35c76dd5d92d1dffad4120cd5c490b36995.lean/declarations/section-from-last-compatible--7d3fb068af0d104b6df6309c.md) | 85 | `result-track:7d3fb068af0d104b6df6309c41f2764a8e5970ea932a7441ddb4ae4bc4acdf3f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
