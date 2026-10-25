# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Basic.Variantedc55b1574c236276762f0b85712c1e3556f115984cf1b0215f28c54ac16d542

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1dee1beb8749636551f65187302175a0edb5b804",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variantedc55b1574c236276762f0b85712c1e3556f115984cf1b0215f28c54ac16d542.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantedc55b1574c236276762f0b85712c1e3556f115984cf1b0215f28c54ac16d542.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantedc55b1574c236276762f0b85712c1e3556f115984cf1b0215f28c54ac16d542.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1dee1beb8749636551f65187302175a0edb5b804`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variantedc55b1574c236276762f0b85712c1e3556f115984cf1b0215f28c54ac16d542.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Basic/Variantedc55b1574c236276762f0b85712c1e3556f115984cf1b0215f28c54ac16d542.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Cast.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cast_sub](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantedc55b1574c236276762f0b85712c1e3556f115984cf1b0215f28c54ac16d542.lean/declarations/cast-sub--709ee2bf0997597ce3768331.md) | 32 | `result-track:709ee2bf0997597ce3768331ac642efadf71a36e7e048f1dbd1016fcd72d1e78` |
| 2 | `theorem` | [cast_pred](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantedc55b1574c236276762f0b85712c1e3556f115984cf1b0215f28c54ac16d542.lean/declarations/cast-pred--f3ed9b49d54b317c3317d7fe.md) | 37 | `result-track:f3ed9b49d54b317c3317d7fe58c2686dfb778b0b0fbab4b12b3604f47394ce74` |
| 3 | `theorem` | [cast_negSucc](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantedc55b1574c236276762f0b85712c1e3556f115984cf1b0215f28c54ac16d542.lean/declarations/cast-negsucc--793e6dcc0639a7772c3767a4.md) | 52 | `result-track:793e6dcc0639a7772c3767a4fe17415b810335dbbbb033adae9aca82bb8c9873` |
| 4 | `theorem` | [cast_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantedc55b1574c236276762f0b85712c1e3556f115984cf1b0215f28c54ac16d542.lean/declarations/cast-zero--071b24be03f87badd6a11dbd.md) | 57 | `result-track:071b24be03f87badd6a11dbd6e9eff04ec5d3448c0a1b8e5dd7c2236bd1c0cfe` |
| 5 | `theorem` | [cast_natCast](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantedc55b1574c236276762f0b85712c1e3556f115984cf1b0215f28c54ac16d542.lean/declarations/cast-natcast--756f509bd9ea845355780a25.md) | 63 | `result-track:756f509bd9ea845355780a25e39b9fa2f43ef2ba50c49cee522a696c8ffd1e9e` |
| 6 | `theorem` | [cast_ofNat](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantedc55b1574c236276762f0b85712c1e3556f115984cf1b0215f28c54ac16d542.lean/declarations/cast-ofnat--5b64ab134f0ec02b1aec7e35.md) | 68 | `result-track:5b64ab134f0ec02b1aec7e35e7d0f7512066d2e5654b34d57a26f9c14ded959c` |
| 7 | `theorem` | [cast_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantedc55b1574c236276762f0b85712c1e3556f115984cf1b0215f28c54ac16d542.lean/declarations/cast-one--f7f1745db61414fd6fe2070d.md) | 73 | `result-track:f7f1745db61414fd6fe2070dbf98f005008ebad8a7d17cfa64239548b5b2daed` |
| 8 | `theorem` | [cast_neg](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantedc55b1574c236276762f0b85712c1e3556f115984cf1b0215f28c54ac16d542.lean/declarations/cast-neg--94dd723b0990f240c0f664a4.md) | 78 | `result-track:94dd723b0990f240c0f664a4b8b641d573e452175588f5cba1a8ef3d57a67de9` |
| 9 | `theorem` | [cast_subNatNat](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantedc55b1574c236276762f0b85712c1e3556f115984cf1b0215f28c54ac16d542.lean/declarations/cast-subnatnat--4699ca5104500f53679b23b1.md) | 85 | `result-track:4699ca5104500f53679b23b1d98ec99f2726d3abc4fdc2d8d6f34d9d40f29457` |
| 10 | `theorem` | [cast_negOfNat](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantedc55b1574c236276762f0b85712c1e3556f115984cf1b0215f28c54ac16d542.lean/declarations/cast-negofnat--6900cb3c76ca66ce7fe0edf2.md) | 94 | `result-track:6900cb3c76ca66ce7fe0edf2a217e4dfc898cf24ac2ce6f5779082daa46dab2d` |
| 11 | `theorem` | [cast_add](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantedc55b1574c236276762f0b85712c1e3556f115984cf1b0215f28c54ac16d542.lean/declarations/cast-add--4b2b7e7291119b7cd567fd2e.md) | 97 | `result-track:4b2b7e7291119b7cd567fd2e9f58eb46ccdefc47c7345171f860b88db25ba55b` |
| 12 | `theorem` | [cast_sub](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantedc55b1574c236276762f0b85712c1e3556f115984cf1b0215f28c54ac16d542.lean/declarations/cast-sub--ab5563475112cea7fda37754.md) | 110 | `result-track:ab5563475112cea7fda377544b5832401ae338c00eaef8936b3adf97f3887a6d` |
| 13 | `theorem` | [cast_two](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantedc55b1574c236276762f0b85712c1e3556f115984cf1b0215f28c54ac16d542.lean/declarations/cast-two--1731b68e4f5a093ef834c692.md) | 114 | `result-track:1731b68e4f5a093ef834c6928d141f73d8d9b1d1929320c4e4c794d00176f2ca` |
| 14 | `theorem` | [cast_three](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantedc55b1574c236276762f0b85712c1e3556f115984cf1b0215f28c54ac16d542.lean/declarations/cast-three--eb23dfe4f30f47a961749b7e.md) | 116 | `result-track:eb23dfe4f30f47a961749b7ec991cda89abfb59095b498126d0b3eb55abfe62a` |
| 15 | `theorem` | [cast_four](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantedc55b1574c236276762f0b85712c1e3556f115984cf1b0215f28c54ac16d542.lean/declarations/cast-four--1890b87fc263bbd21d8ea4a9.md) | 118 | `result-track:1890b87fc263bbd21d8ea4a9e400955d232ca4d996f1a2d637d85d4390d7096a` |
| 16 | `lemma` | [zsmul_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantedc55b1574c236276762f0b85712c1e3556f115984cf1b0215f28c54ac16d542.lean/declarations/zsmul-one--19f110f614a447ded435cf76.md) | 126 | `result-track:19f110f614a447ded435cf7671cbe2a2b6b33d122a19233ba4e0422db1d52b8a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
