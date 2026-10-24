# Verification target: GRWTSK.Algebra.LinearAlgebra.InvertibleBlockSchur.Variant0faacd538e12fb16def3e7b72aed927b2e0020a2c4246018aadd2effa60110a6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d7a805c2c750459d48d80ec851cda8f781d99f5",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant0faacd538e12fb16def3e7b72aed927b2e0020a2c4246018aadd2effa60110a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant0faacd538e12fb16def3e7b72aed927b2e0020a2c4246018aadd2effa60110a6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant0faacd538e12fb16def3e7b72aed927b2e0020a2c4246018aadd2effa60110a6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d7a805c2c750459d48d80ec851cda8f781d99f5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant0faacd538e12fb16def3e7b72aed927b2e0020a2c4246018aadd2effa60110a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant0faacd538e12fb16def3e7b72aed927b2e0020a2c4246018aadd2effa60110a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.BlockSchur` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [provenanceCrossMap](../../../../../mathematics/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant0faacd538e12fb16def3e7b72aed927b2e0020a2c4246018aadd2effa60110a6.lean/declarations/provenancecrossmap--033798f9bc53e1c3b93eb770.md) | 36 | `declaration-track:033798f9bc53e1c3b93eb7702425147ef02586d595be1cd9c3c60b871d66506b` |
| 2 | `theorem` | [provenanceCrossMap_apply](../../../../../mathematics/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant0faacd538e12fb16def3e7b72aed927b2e0020a2c4246018aadd2effa60110a6.lean/declarations/provenancecrossmap-apply--fc43dd81c9ccc173dcc6390d.md) | 57 | `result-track:fc43dd81c9ccc173dcc6390dbed59bf2705fc21ae51ea0c39fbcdd8ab9f3732b` |
| 3 | `structure` | [InvertibleProvenanceBlock](../../../../../mathematics/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant0faacd538e12fb16def3e7b72aed927b2e0020a2c4246018aadd2effa60110a6.lean/declarations/invertibleprovenanceblock--71c0ff92e664daea651a921e.md) | 64 | `declaration-track:71c0ff92e664daea651a921e58fa1e21887753e16aa659daaadceae3bd4adc34` |
| 4 | `def` | [solve](../../../../../mathematics/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant0faacd538e12fb16def3e7b72aed927b2e0020a2c4246018aadd2effa60110a6.lean/declarations/solve--1994338c1085dd3b3980ca78.md) | 76 | `declaration-track:1994338c1085dd3b3980ca78ab4ba52182342e593efd8e51a866c22d9390d627` |
| 5 | `theorem` | [gramEquiv_solve](../../../../../mathematics/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant0faacd538e12fb16def3e7b72aed927b2e0020a2c4246018aadd2effa60110a6.lean/declarations/gramequiv-solve--e0d8dc9a232bb56bd96304e9.md) | 80 | `result-track:e0d8dc9a232bb56bd96304e963cb205c676b08cac26b73183025f7124fd23940` |
| 6 | `theorem` | [provenance_form_solve](../../../../../mathematics/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant0faacd538e12fb16def3e7b72aed927b2e0020a2c4246018aadd2effa60110a6.lean/declarations/provenance-form-solve--30be6861b6bf3eef8fe1f7f4.md) | 86 | `result-track:30be6861b6bf3eef8fe1f7f474cc87ed13eaec5d8b3429be8940e2df0354b997` |
| 7 | `theorem` | [form_sub_right](../../../../../mathematics/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant0faacd538e12fb16def3e7b72aed927b2e0020a2c4246018aadd2effa60110a6.lean/declarations/form-sub-right--2cccd639d821ab5857c29c2f.md) | 98 | `result-track:2cccd639d821ab5857c29c2fa2511294dabe9aa02d9978f20f872238580b8c88` |
| 8 | `def` | [blockSchurSolver](../../../../../mathematics/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant0faacd538e12fb16def3e7b72aed927b2e0020a2c4246018aadd2effa60110a6.lean/declarations/blockschursolver--5a80ebfb15590eea5cb5c9fb.md) | 109 | `declaration-track:5a80ebfb15590eea5cb5c9fb9b0ea43af685f509b5b72463e7ca577adda4362e` |
| 9 | `theorem` | [blockSchurSolver_solve](../../../../../mathematics/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant0faacd538e12fb16def3e7b72aed927b2e0020a2c4246018aadd2effa60110a6.lean/declarations/blockschursolver-solve--85e00dbc6368577ef9d002ec.md) | 119 | `result-track:85e00dbc6368577ef9d002ecd8237e1d9d74556d3cd985a87993446356ed9429` |
| 10 | `theorem` | [schur_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant0faacd538e12fb16def3e7b72aed927b2e0020a2c4246018aadd2effa60110a6.lean/declarations/schur-nonnegative--d3c9814bf39ea5fbf8bd8dd4.md) | 125 | `result-track:d3c9814bf39ea5fbf8bd8dd4b28498518e9b132195429f3c62597353c451c2cb` |
| 11 | `theorem` | [schur_eq_sub](../../../../../mathematics/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant0faacd538e12fb16def3e7b72aed927b2e0020a2c4246018aadd2effa60110a6.lean/declarations/schur-eq-sub--cf26403ef35d635c3be6d7cf.md) | 131 | `result-track:cf26403ef35d635c3be6d7cf3a03571ed4b382ad6a00a26dd729ffdde961ffee` |
| 12 | `theorem` | [schur_diagonal_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant0faacd538e12fb16def3e7b72aed927b2e0020a2c4246018aadd2effa60110a6.lean/declarations/schur-diagonal-nonnegative--47dde10750ffdb96b0872176.md) | 139 | `result-track:47dde10750ffdb96b0872176c293834acc9af6b4773fa07d625c05f3b4ea4549` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
