# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ArithmeticModularityObligation.Variantc0b53009c4c899728b21e03efae8570ede350838638abaf3e751ae308ebaca9b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ebd4e18498116f0e0ba11cf2e1f2a3bfe437793f",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ArithmeticModularityObligation/Variantc0b53009c4c899728b21e03efae8570ede350838638abaf3e751ae308ebaca9b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticModularityObligation/Variantc0b53009c4c899728b21e03efae8570ede350838638abaf3e751ae308ebaca9b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticModularityObligation/Variantc0b53009c4c899728b21e03efae8570ede350838638abaf3e751ae308ebaca9b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ebd4e18498116f0e0ba11cf2e1f2a3bfe437793f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ArithmeticModularityObligation/Variantc0b53009c4c899728b21e03efae8570ede350838638abaf3e751ae308ebaca9b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ArithmeticModularityObligation/Variantc0b53009c4c899728b21e03efae8570ede350838638abaf3e751ae308ebaca9b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.DeriveFintype` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Resolution.Conservative` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ArithmeticModularityObligation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticModularityObligation/Variantc0b53009c4c899728b21e03efae8570ede350838638abaf3e751ae308ebaca9b.lean/declarations/arithmeticmodularityobligation--e373539ce2bdb8ca7edf54c6.md) | 15 | `declaration-track:e373539ce2bdb8ca7edf54c64dfa665026cb918078c3cabfa676e74ca652ca35` |
| 2 | `inductive` | [ArithmeticModularityStage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticModularityObligation/Variantc0b53009c4c899728b21e03efae8570ede350838638abaf3e751ae308ebaca9b.lean/declarations/arithmeticmodularitystage--91d28ba5c1d8ac352f507b72.md) | 87 | `declaration-track:91d28ba5c1d8ac352f507b725682a793ea19f2666f6ab67f94c7dcd59d5bec7b` |
| 3 | `def` | [ArithmeticModularityObligation.stage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticModularityObligation/Variantc0b53009c4c899728b21e03efae8570ede350838638abaf3e751ae308ebaca9b.lean/declarations/arithmeticmodularityobligation-stage--30ad349462dd113b9f0671ce.md) | 101 | `declaration-track:30ad349462dd113b9f0671ceba68ce65567cf46a28882b602b48b989124e01ed` |
| 4 | `inductive` | [CertificateConservativeVerdict](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticModularityObligation/Variantc0b53009c4c899728b21e03efae8570ede350838638abaf3e751ae308ebaca9b.lean/declarations/certificateconservativeverdict--1c2483dfd67580ff61b7988c.md) | 176 | `declaration-track:1c2483dfd67580ff61b7988c960ad4ea7e6522175e5ccdd52bc4074cd3bb8421` |
| 5 | `def` | [ofMissing](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticModularityObligation/Variantc0b53009c4c899728b21e03efae8570ede350838638abaf3e751ae308ebaca9b.lean/declarations/ofmissing--cb61f6cc40fe7f5a6b8e77b9.md) | 188 | `declaration-track:cb61f6cc40fe7f5a6b8e77b99d5925927fdaee9041a0a226f9fbdffe21e2c12c` |
| 6 | `def` | [IsCertified](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticModularityObligation/Variantc0b53009c4c899728b21e03efae8570ede350838638abaf3e751ae308ebaca9b.lean/declarations/iscertified--cff29abce79b13a1c70ab883.md) | 194 | `declaration-track:cff29abce79b13a1c70ab883fed440b9cb2996c78f41655f933856d643369f29` |
| 7 | `def` | [IsRefuted](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticModularityObligation/Variantc0b53009c4c899728b21e03efae8570ede350838638abaf3e751ae308ebaca9b.lean/declarations/isrefuted--9807af5d82726c9bf7cc8f5e.md) | 200 | `declaration-track:9807af5d82726c9bf7cc8f5ea6847f2f96c654409480880f6b49a5aee9adb3bb` |
| 8 | `theorem` | [certified_sound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticModularityObligation/Variantc0b53009c4c899728b21e03efae8570ede350838638abaf3e751ae308ebaca9b.lean/declarations/certified-sound--18f9b06f51a639531ff50c85.md) | 206 | `result-track:18f9b06f51a639531ff50c8567f94050857943f70ba00791803fc5fe6ef68191` |
| 9 | `theorem` | [refuted_sound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticModularityObligation/Variantc0b53009c4c899728b21e03efae8570ede350838638abaf3e751ae308ebaca9b.lean/declarations/refuted-sound--3bf88d3487202d9864ff4227.md) | 216 | `result-track:3bf88d3487202d9864ff422701c4a0b1576e19e4ed48fbb7c4fab8028a600518` |
| 10 | `def` | [unknowns](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticModularityObligation/Variantc0b53009c4c899728b21e03efae8570ede350838638abaf3e751ae308ebaca9b.lean/declarations/unknowns--43d029414ebf741546c6850d.md) | 226 | `declaration-track:43d029414ebf741546c6850dc6c5b1268074090555dcf985201ec87f7c3cfddf` |
| 11 | `theorem` | [not_certified_ofMissing](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticModularityObligation/Variantc0b53009c4c899728b21e03efae8570ede350838638abaf3e751ae308ebaca9b.lean/declarations/not-certified-ofmissing--c9bc9a3fb1d7c4700ab5baef.md) | 234 | `result-track:c9bc9a3fb1d7c4700ab5baef455b6172aff7d73c9560dcfcfed4f22cf7622f03` |
| 12 | `theorem` | [not_refuted_ofMissing](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticModularityObligation/Variantc0b53009c4c899728b21e03efae8570ede350838638abaf3e751ae308ebaca9b.lean/declarations/not-refuted-ofmissing--72fe6bf169ec797ddf704b45.md) | 240 | `result-track:72fe6bf169ec797ddf704b45b55cd8e5785850c877b972e97290e4d1f9f2df93` |
| 13 | `theorem` | [unknowns_ofMissing](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ArithmeticModularityObligation/Variantc0b53009c4c899728b21e03efae8570ede350838638abaf3e751ae308ebaca9b.lean/declarations/unknowns-ofmissing--1b9897fd52be4c8603635991.md) | 246 | `result-track:1b9897fd52be4c8603635991ee7e5a356daf12ee9a04e43d18bbd73ffcb54aea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
