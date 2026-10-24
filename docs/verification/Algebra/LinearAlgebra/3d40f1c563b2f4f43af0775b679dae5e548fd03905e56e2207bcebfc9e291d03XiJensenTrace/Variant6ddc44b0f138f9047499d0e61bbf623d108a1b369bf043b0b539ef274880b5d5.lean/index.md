# Verification target: GRWTSK.Algebra.LinearAlgebra.3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03XiJensenTrace.Variant6ddc44b0f138f9047499d0e61bbf623d108a1b369bf043b0b539ef274880b5d5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7aa88ca97783ef903ed90df86fa2b524952ca81",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03XiJensenTrace/Variant6ddc44b0f138f9047499d0e61bbf623d108a1b369bf043b0b539ef274880b5d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03XiJensenTrace/Variant6ddc44b0f138f9047499d0e61bbf623d108a1b369bf043b0b539ef274880b5d5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03XiJensenTrace/Variant6ddc44b0f138f9047499d0e61bbf623d108a1b369bf043b0b539ef274880b5d5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7aa88ca97783ef903ed90df86fa2b524952ca81`.

Source path: `GRWTSK/Algebra/LinearAlgebra/3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03XiJensenTrace/Variant6ddc44b0f138f9047499d0e61bbf623d108a1b369bf043b0b539ef274880b5d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03XiJensenTrace/Variant6ddc44b0f138f9047499d0e61bbf623d108a1b369bf043b0b539ef274880b5d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.XiCoefficientLogConcavity` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.XiJensenPolynomial` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.PosDef` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Trace` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Charpoly.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quarticCompanion](../../../../../mathematics/Algebra/LinearAlgebra/3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03XiJensenTrace/Variant6ddc44b0f138f9047499d0e61bbf623d108a1b369bf043b0b539ef274880b5d5.lean/declarations/quarticcompanion--a44a05f0c3c82f5cc9734465.md) | 20 | `declaration-track:a44a05f0c3c82f5cc973446537d949384ab97982c5efd5ff158696dbfe996ea7` |
| 2 | `def` | [quarticHermite](../../../../../mathematics/Algebra/LinearAlgebra/3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03XiJensenTrace/Variant6ddc44b0f138f9047499d0e61bbf623d108a1b369bf043b0b539ef274880b5d5.lean/declarations/quartichermite--eb2c016cf43d38424c22ed78.md) | 23 | `declaration-track:eb2c016cf43d38424c22ed78ad10190cae56664b544a837cb8a0d77a5ad49f71` |
| 3 | `theorem` | [quarticHermite_eq](../../../../../mathematics/Algebra/LinearAlgebra/3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03XiJensenTrace/Variant6ddc44b0f138f9047499d0e61bbf623d108a1b369bf043b0b539ef274880b5d5.lean/declarations/quartichermite-eq--0e7d1275d9fbcd781b26b4a7.md) | 26 | `result-track:0e7d1275d9fbcd781b26b4a7fa5f8b519510da83e05e81b602973e03da46f652` |
| 4 | `theorem` | [quarticHermite_square](../../../../../mathematics/Algebra/LinearAlgebra/3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03XiJensenTrace/Variant6ddc44b0f138f9047499d0e61bbf623d108a1b369bf043b0b539ef274880b5d5.lean/declarations/quartichermite-square--f195fe0ee76107745cb23d48.md) | 37 | `result-track:f195fe0ee76107745cb23d487374b3a298545aac17c14097ad2c58e0e14bd5b3` |
| 5 | `theorem` | [quarticCompanion_charpoly](../../../../../mathematics/Algebra/LinearAlgebra/3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03XiJensenTrace/Variant6ddc44b0f138f9047499d0e61bbf623d108a1b369bf043b0b539ef274880b5d5.lean/declarations/quarticcompanion-charpoly--ff2cbcbfaefeb4b24d567034.md) | 47 | `result-track:ff2cbcbfaefeb4b24d56703474d91af7fb034f2897c66a1efb230572eec817d0` |
| 6 | `def` | [jensenTwoB](../../../../../mathematics/Algebra/LinearAlgebra/3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03XiJensenTrace/Variant6ddc44b0f138f9047499d0e61bbf623d108a1b369bf043b0b539ef274880b5d5.lean/declarations/jensentwob--556941f4f6d6f7df573fd693.md) | 57 | `declaration-track:556941f4f6d6f7df573fd693b73082bab29f9833b13fe602cfef52734253c99b` |
| 7 | `def` | [jensenTwoC](../../../../../mathematics/Algebra/LinearAlgebra/3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03XiJensenTrace/Variant6ddc44b0f138f9047499d0e61bbf623d108a1b369bf043b0b539ef274880b5d5.lean/declarations/jensentwoc--d82c392b8332d096e93a6cb1.md) | 59 | `declaration-track:d82c392b8332d096e93a6cb18e8f55a4bb4e471d61f8c65c376b4f4182a0a23d` |
| 8 | `theorem` | [jensenTwoB_pos](../../../../../mathematics/Algebra/LinearAlgebra/3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03XiJensenTrace/Variant6ddc44b0f138f9047499d0e61bbf623d108a1b369bf043b0b539ef274880b5d5.lean/declarations/jensentwob-pos--20e1811f64446a7b28f04354.md) | 61 | `result-track:20e1811f64446a7b28f04354a63be53c7fdff96a3f161dd79646fc950f369a9f` |
| 9 | `theorem` | [jensenTwoC_pos](../../../../../mathematics/Algebra/LinearAlgebra/3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03XiJensenTrace/Variant6ddc44b0f138f9047499d0e61bbf623d108a1b369bf043b0b539ef274880b5d5.lean/declarations/jensentwoc-pos--087c96057353eb2885173d53.md) | 67 | `result-track:087c96057353eb2885173d53f0a6c30c05c46d00d45e9629ac14dbdb18a08483` |
| 10 | `theorem` | [jensenTwo_discriminant_pos](../../../../../mathematics/Algebra/LinearAlgebra/3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03XiJensenTrace/Variant6ddc44b0f138f9047499d0e61bbf623d108a1b369bf043b0b539ef274880b5d5.lean/declarations/jensentwo-discriminant-pos--34abaec57047a0ee0112662c.md) | 73 | `result-track:34abaec57047a0ee0112662c4010111194abf57f798d87bbcddd9855dd31c7a1` |
| 11 | `def` | [jensenTwoTrace](../../../../../mathematics/Algebra/LinearAlgebra/3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03XiJensenTrace/Variant6ddc44b0f138f9047499d0e61bbf623d108a1b369bf043b0b539ef274880b5d5.lean/declarations/jensentwotrace--24191e9c5aa34e39bdf86f1c.md) | 83 | `declaration-track:24191e9c5aa34e39bdf86f1c0eb591348e84d0037cda124e165e42e5ed244bc6` |
| 12 | `theorem` | [jensenTwoTrace_square_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03XiJensenTrace/Variant6ddc44b0f138f9047499d0e61bbf623d108a1b369bf043b0b539ef274880b5d5.lean/declarations/jensentwotrace-square-nonneg--fbe1b37e7c37df0bd6d4d0c0.md) | 86 | `result-track:fbe1b37e7c37df0bd6d4d0c0d01d0464bfbe47d6f734cf0d4d7c88b7bc4495af` |
| 13 | `theorem` | [jensenTwoTrace_posSemidef](../../../../../mathematics/Algebra/LinearAlgebra/3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03XiJensenTrace/Variant6ddc44b0f138f9047499d0e61bbf623d108a1b369bf043b0b539ef274880b5d5.lean/declarations/jensentwotrace-possemidef--2568bdae81cb35835506c24d.md) | 94 | `result-track:2568bdae81cb35835506c24d0906563919e20cb1914afa7e9267594008a0f6ee` |
| 14 | `theorem` | [jensenTwoTrace_posDef](../../../../../mathematics/Algebra/LinearAlgebra/3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03XiJensenTrace/Variant6ddc44b0f138f9047499d0e61bbf623d108a1b369bf043b0b539ef274880b5d5.lean/declarations/jensentwotrace-posdef--cb0b3825bd9275b4cf8b13b2.md) | 102 | `result-track:cb0b3825bd9275b4cf8b13b2f8342cbbafbf06a5f58163755b62c94cd6264dd7` |
| 15 | `theorem` | [jensenPolynomial_two](../../../../../mathematics/Algebra/LinearAlgebra/3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03XiJensenTrace/Variant6ddc44b0f138f9047499d0e61bbf623d108a1b369bf043b0b539ef274880b5d5.lean/declarations/jensenpolynomial-two--a6fae6b62668ba3d7751bea2.md) | 140 | `result-track:a6fae6b62668ba3d7751bea2f8ff83eaf357e8022ed9db685014bafd45749675` |
| 16 | `theorem` | [jensenTwo_charpoly_source](../../../../../mathematics/Algebra/LinearAlgebra/3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03XiJensenTrace/Variant6ddc44b0f138f9047499d0e61bbf623d108a1b369bf043b0b539ef274880b5d5.lean/declarations/jensentwo-charpoly-source--e52b984aa566d14b1f93601a.md) | 148 | `result-track:e52b984aa566d14b1f93601aae218d96617c84572477a56ae0954b4e9b188f58` |
| 17 | `theorem` | [jensenTwo_charpoly](../../../../../mathematics/Algebra/LinearAlgebra/3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03XiJensenTrace/Variant6ddc44b0f138f9047499d0e61bbf623d108a1b369bf043b0b539ef274880b5d5.lean/declarations/jensentwo-charpoly--c6b1f6be028406fd0ce82095.md) | 171 | `result-track:c6b1f6be028406fd0ce82095daa2cf5240da8dcf6821a6996780f2ffce11965e` |
| 18 | `theorem` | [jensenTwo_source_decode](../../../../../mathematics/Algebra/LinearAlgebra/3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03XiJensenTrace/Variant6ddc44b0f138f9047499d0e61bbf623d108a1b369bf043b0b539ef274880b5d5.lean/declarations/jensentwo-source-decode--46457004522cf26663209204.md) | 176 | `result-track:46457004522cf26663209204d2bdabdda671145142fb148018f1be441235651d` |
| 19 | `theorem` | [quarticHermite_mul_companion](../../../../../mathematics/Algebra/LinearAlgebra/3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03XiJensenTrace/Variant6ddc44b0f138f9047499d0e61bbf623d108a1b369bf043b0b539ef274880b5d5.lean/declarations/quartichermite-mul-companion--69bdb7b665aae091719c7c50.md) | 183 | `result-track:69bdb7b665aae091719c7c506ce01c45d39be1c20f62ff3e5ea871ab9efd5b9c` |
| 20 | `theorem` | [jensenTwo_trace_selfadjoint](../../../../../mathematics/Algebra/LinearAlgebra/3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03XiJensenTrace/Variant6ddc44b0f138f9047499d0e61bbf623d108a1b369bf043b0b539ef274880b5d5.lean/declarations/jensentwo-trace-selfadjoint--da540d4401a46b025e5bfbe1.md) | 192 | `result-track:da540d4401a46b025e5bfbe1eb9baf85d2641eee9e7ce625677188050fae094d` |
| 21 | `def` | [cubicCompanion](../../../../../mathematics/Algebra/LinearAlgebra/3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03XiJensenTrace/Variant6ddc44b0f138f9047499d0e61bbf623d108a1b369bf043b0b539ef274880b5d5.lean/declarations/cubiccompanion--34f505eff8498d91143e2fb5.md) | 197 | `declaration-track:34f505eff8498d91143e2fb57fda0a8a2a983df98d6162f5d53ca2cf82977495` |
| 22 | `def` | [cubicHermite](../../../../../mathematics/Algebra/LinearAlgebra/3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03XiJensenTrace/Variant6ddc44b0f138f9047499d0e61bbf623d108a1b369bf043b0b539ef274880b5d5.lean/declarations/cubichermite--067b272559440df769f25485.md) | 200 | `declaration-track:067b272559440df769f254854f7bfabd414447f0c81cfb0f4e3260a3e7842887` |
| 23 | `theorem` | [cubicHermite_eq](../../../../../mathematics/Algebra/LinearAlgebra/3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03XiJensenTrace/Variant6ddc44b0f138f9047499d0e61bbf623d108a1b369bf043b0b539ef274880b5d5.lean/declarations/cubichermite-eq--82ca3c3675bee680e0b418f4.md) | 203 | `result-track:82ca3c3675bee680e0b418f4b30e77c61413cbf3f1a717233aca26744f7ebc4e` |
| 24 | `theorem` | [cubicHermite_det](../../../../../mathematics/Algebra/LinearAlgebra/3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03XiJensenTrace/Variant6ddc44b0f138f9047499d0e61bbf623d108a1b369bf043b0b539ef274880b5d5.lean/declarations/cubichermite-det--896461422e16fd78d27b3ad0.md) | 213 | `result-track:896461422e16fd78d27b3ad0196fcdd005096dc2d5c94fe2939073c43fd22d3a` |
| 25 | `def` | [jensenThreeTrace](../../../../../mathematics/Algebra/LinearAlgebra/3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03XiJensenTrace/Variant6ddc44b0f138f9047499d0e61bbf623d108a1b369bf043b0b539ef274880b5d5.lean/declarations/jensenthreetrace--2c1b0321bf9dfa9310314879.md) | 220 | `declaration-track:2c1b0321bf9dfa931031487913c114bdffad85898484c8215e734e6d5e814d44` |
| 26 | `theorem` | [jensenThreeTrace_det](../../../../../mathematics/Algebra/LinearAlgebra/3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03XiJensenTrace/Variant6ddc44b0f138f9047499d0e61bbf623d108a1b369bf043b0b539ef274880b5d5.lean/declarations/jensenthreetrace-det--4fb130ce060cfba783e3a36a.md) | 224 | `result-track:4fb130ce060cfba783e3a36abcbb8eeb17268f7880f621344e3ad3e3e98165ac` |
| 27 | `theorem` | [geometric_cubic_trace_det_negative](../../../../../mathematics/Algebra/LinearAlgebra/3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03XiJensenTrace/Variant6ddc44b0f138f9047499d0e61bbf623d108a1b369bf043b0b539ef274880b5d5.lean/declarations/geometric-cubic-trace-det-negative--f4e4d83d9fc67cb4fe312084.md) | 236 | `result-track:f4e4d83d9fc67cb4fe31208466fb59c1e6e7f0361f65da3a4c59c2c22c9178f6` |
| 28 | `theorem` | [cubicCompanion_charpoly](../../../../../mathematics/Algebra/LinearAlgebra/3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03XiJensenTrace/Variant6ddc44b0f138f9047499d0e61bbf623d108a1b369bf043b0b539ef274880b5d5.lean/declarations/cubiccompanion-charpoly--b44c3c0fbac545005c0048ec.md) | 241 | `result-track:b44c3c0fbac545005c0048ecf2eeb3eba18df58a8eee311c17b203d577796c73` |
| 29 | `theorem` | [jensenThree_source_decode](../../../../../mathematics/Algebra/LinearAlgebra/3d40f1c563b2f4f43af0775b679dae5e548fd03905e56e2207bcebfc9e291d03XiJensenTrace/Variant6ddc44b0f138f9047499d0e61bbf623d108a1b369bf043b0b539ef274880b5d5.lean/declarations/jensenthree-source-decode--f712337c77d503c974c38d79.md) | 246 | `result-track:f712337c77d503c974c38d790253bb5236045cd30566d6da9a2c3bbae4604774` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
