# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Monotone.Variant324eabea420b76c39229527614083b30d2666b8010b37e945430a9501393b692

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c48630f7e14b27a39bde7c69ec6358d340cbd7a",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monotone/Variant324eabea420b76c39229527614083b30d2666b8010b37e945430a9501393b692.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monotone/Variant324eabea420b76c39229527614083b30d2666b8010b37e945430a9501393b692.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monotone/Variant324eabea420b76c39229527614083b30d2666b8010b37e945430a9501393b692.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c48630f7e14b27a39bde7c69ec6358d340cbd7a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monotone/Variant324eabea420b76c39229527614083b30d2666b8010b37e945430a9501393b692.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monotone/Variant324eabea420b76c39229527614083b30d2666b8010b37e945430a9501393b692.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fin.VecNotation` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [liftFun_vecCons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monotone/Variant324eabea420b76c39229527614083b30d2666b8010b37e945430a9501393b692.lean/declarations/liftfun-veccons--a32d094659be36bee8eb9b12.md) | 21 | `result-track:a32d094659be36bee8eb9b12a1e17dfa1b0923bb0c4f38bda88c2d3e3ec1535d` |
| 2 | `theorem` | [strictMono_vecCons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monotone/Variant324eabea420b76c39229527614083b30d2666b8010b37e945430a9501393b692.lean/declarations/strictmono-veccons--b22650b2137074bfb08b4c87.md) | 30 | `result-track:b22650b2137074bfb08b4c871930ea7b3c3b5c02f83715e2f5b7bb6ae814e84a` |
| 3 | `theorem` | [monotone_vecCons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monotone/Variant324eabea420b76c39229527614083b30d2666b8010b37e945430a9501393b692.lean/declarations/monotone-veccons--135fea6451692743d8026791.md) | 35 | `result-track:135fea6451692743d8026791581b090dd9899fae77cfefc3ced459e771eee6b2` |
| 4 | `theorem` | [monotone_vecEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monotone/Variant324eabea420b76c39229527614083b30d2666b8010b37e945430a9501393b692.lean/declarations/monotone-vecempty--11ee7b0457126645bba0d503.md) | 41 | `result-track:11ee7b0457126645bba0d5034e2b21f4610d79d02ee5d69f1610d55574a15ac2` |
| 5 | `theorem` | [strictMono_vecEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monotone/Variant324eabea420b76c39229527614083b30d2666b8010b37e945430a9501393b692.lean/declarations/strictmono-vecempty--7142b00ca802a6d7175fe316.md) | 46 | `result-track:7142b00ca802a6d7175fe3169f527a2fef5d38b884ab9e6cd8116fd4d95e3e05` |
| 6 | `theorem` | [strictAnti_vecCons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monotone/Variant324eabea420b76c39229527614083b30d2666b8010b37e945430a9501393b692.lean/declarations/strictanti-veccons--c68f4a5b6478e095b7c366e4.md) | 50 | `result-track:c68f4a5b6478e095b7c366e4c3e562379b89d008b9fa620c3cf123142fbc4393` |
| 7 | `theorem` | [antitone_vecCons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monotone/Variant324eabea420b76c39229527614083b30d2666b8010b37e945430a9501393b692.lean/declarations/antitone-veccons--764262310871017ac33650e0.md) | 55 | `result-track:764262310871017ac33650e0431ab4438c58a094b19eec5d3670e7e6223ea92a` |
| 8 | `theorem` | [antitone_vecEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monotone/Variant324eabea420b76c39229527614083b30d2666b8010b37e945430a9501393b692.lean/declarations/antitone-vecempty--13d6e954b0f4dece49ecdb5a.md) | 61 | `result-track:13d6e954b0f4dece49ecdb5a985dc1f51853b44a230391aa9adb8333d87dea1d` |
| 9 | `theorem` | [strictAnti_vecEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monotone/Variant324eabea420b76c39229527614083b30d2666b8010b37e945430a9501393b692.lean/declarations/strictanti-vecempty--1f2772800b0538853169ff23.md) | 66 | `result-track:1f2772800b0538853169ff232f7ee38cc4489ae5a30b84a6bdf3bf17e8bf014d` |
| 10 | `theorem` | [StrictMono.vecCons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monotone/Variant324eabea420b76c39229527614083b30d2666b8010b37e945430a9501393b692.lean/declarations/strictmono-veccons--100b124e76b317643426e7c0.md) | 69 | `result-track:100b124e76b317643426e7c086c93ddce164c4780add429f25d591801b41a97c` |
| 11 | `theorem` | [StrictAnti.vecCons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monotone/Variant324eabea420b76c39229527614083b30d2666b8010b37e945430a9501393b692.lean/declarations/strictanti-veccons--4811dddbf5e9a5e298c9a274.md) | 73 | `result-track:4811dddbf5e9a5e298c9a2742a9c27ac0b8a73e04168a918598f7fe3285aa9c0` |
| 12 | `theorem` | [Monotone.vecCons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monotone/Variant324eabea420b76c39229527614083b30d2666b8010b37e945430a9501393b692.lean/declarations/monotone-veccons--519e128648528968bed7544c.md) | 77 | `result-track:519e128648528968bed7544c8ac148a7802202c4951ff84f8737941d4a0ea819` |
| 13 | `theorem` | [Antitone.vecCons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monotone/Variant324eabea420b76c39229527614083b30d2666b8010b37e945430a9501393b692.lean/declarations/antitone-veccons--1c4bcc8b0b168c71905a7c6a.md) | 81 | `result-track:1c4bcc8b0b168c71905a7c6a79efc7f2f1be53b3da42b20088fa3d0130f93110` |
| 14 | `example` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monotone/Variant324eabea420b76c39229527614083b30d2666b8010b37e945430a9501393b692.lean/declarations/example--fb19902dd92f4acbdc1cfa5b.md) | 85 | `declaration-track:fb19902dd92f4acbdc1cfa5be4453fa4fa5e0753ccf793bf4fdf36af690fa682` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
