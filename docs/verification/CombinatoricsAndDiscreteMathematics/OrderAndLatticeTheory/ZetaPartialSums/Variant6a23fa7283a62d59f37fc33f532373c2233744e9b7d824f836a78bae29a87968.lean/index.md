# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ZetaPartialSums.Variant6a23fa7283a62d59f37fc33f532373c2233744e9b7d824f836a78bae29a87968

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9db2e5a8cac020af7748c656c875be8bca052b56",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZetaPartialSums/Variant6a23fa7283a62d59f37fc33f532373c2233744e9b7d824f836a78bae29a87968.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZetaPartialSums/Variant6a23fa7283a62d59f37fc33f532373c2233744e9b7d824f836a78bae29a87968.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZetaPartialSums/Variant6a23fa7283a62d59f37fc33f532373c2233744e9b7d824f836a78bae29a87968.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9db2e5a8cac020af7748c656c875be8bca052b56`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZetaPartialSums/Variant6a23fa7283a62d59f37fc33f532373c2233744e9b7d824f836a78bae29a87968.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZetaPartialSums/Variant6a23fa7283a62d59f37fc33f532373c2233744e9b7d824f836a78bae29a87968.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.ZetaRealHalfPlane` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Nat` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zetaPartialReal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZetaPartialSums/Variant6a23fa7283a62d59f37fc33f532373c2233744e9b7d824f836a78bae29a87968.lean/declarations/zetapartialreal--50e94de4e54c83e2702d0371.md) | 16 | `declaration-track:50e94de4e54c83e2702d0371027cc3947738aab0104dcfdc0b634b7bf94fd713` |
| 2 | `theorem` | [zetaPartialReal_nonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZetaPartialSums/Variant6a23fa7283a62d59f37fc33f532373c2233744e9b7d824f836a78bae29a87968.lean/declarations/zetapartialreal-nonneg--d713b6262ea570e84e090930.md) | 21 | `result-track:d713b6262ea570e84e0909300aa48b098afb181e16a74a9e43280c727e24f9d2` |
| 3 | `theorem` | [zetaPartialReal_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZetaPartialSums/Variant6a23fa7283a62d59f37fc33f532373c2233744e9b7d824f836a78bae29a87968.lean/declarations/zetapartialreal-mono--609fecf59aaa951169f1981e.md) | 28 | `result-track:609fecf59aaa951169f1981e7d3677415f27ebcbc66afd6f13d18ca7ec19be71` |
| 4 | `theorem` | [zetaPartialReal_eq_range_sum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZetaPartialSums/Variant6a23fa7283a62d59f37fc33f532373c2233744e9b7d824f836a78bae29a87968.lean/declarations/zetapartialreal-eq-range-sum--afcb0e96758f0eccdcd9438e.md) | 40 | `result-track:afcb0e96758f0eccdcd9438ee7f6bf6fd271c9ba58a1372c37b6cc8683ed7a41` |
| 5 | `theorem` | [tendsto_zetaPartialReal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZetaPartialSums/Variant6a23fa7283a62d59f37fc33f532373c2233744e9b7d824f836a78bae29a87968.lean/declarations/tendsto-zetapartialreal--789b5a5e142dea41461e29ca.md) | 64 | `result-track:789b5a5e142dea41461e29ca3b7659ebe095c63dc47c16e895b79a3895f6ef7d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
