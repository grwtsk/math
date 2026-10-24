# Verification target: GRWTSK.Algebra.LinearAlgebra.TotallyUnimodular.Variantbc6d07394869a4afe07364d4116ec859bc74278f5dcef6507402db3738197952

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d8c1a878069aa18d657a217eeb9dfa4157ea9fc8",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TotallyUnimodular/Variantbc6d07394869a4afe07364d4116ec859bc74278f5dcef6507402db3738197952.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variantbc6d07394869a4afe07364d4116ec859bc74278f5dcef6507402db3738197952.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variantbc6d07394869a4afe07364d4116ec859bc74278f5dcef6507402db3738197952.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d8c1a878069aa18d657a217eeb9dfa4157ea9fc8`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TotallyUnimodular/Variantbc6d07394869a4afe07364d4116ec859bc74278f5dcef6507402db3738197952.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TotallyUnimodular/Variantbc6d07394869a4afe07364d4116ec859bc74278f5dcef6507402db3738197952.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.ColumnRowPartitioned` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Sign` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsTotallyUnimodular](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variantbc6d07394869a4afe07364d4116ec859bc74278f5dcef6507402db3738197952.lean/declarations/istotallyunimodular--386925c8e39036e17f01044e.md) | 42 | `declaration-track:386925c8e39036e17f01044ea733bc0f1edb2cd1297cae66edfe9e28cc86ecf9` |
| 2 | `lemma` | [isTotallyUnimodular_iff](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variantbc6d07394869a4afe07364d4116ec859bc74278f5dcef6507402db3738197952.lean/declarations/istotallyunimodular-iff--3ed15d3845cde5d993aad378.md) | 46 | `result-track:3ed15d3845cde5d993aad3784611a6409b7506008444c9fa223f3477b1e24193` |
| 3 | `lemma` | [isTotallyUnimodular_iff_fintype.](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variantbc6d07394869a4afe07364d4116ec859bc74278f5dcef6507402db3738197952.lean/declarations/istotallyunimodular-iff-fintype--68e08449617f52381e460236.md) | 65 | `result-track:68e08449617f52381e46023600d2227d42557a0b51a6f914ca5f4c028acc536a` |
| 4 | `lemma` | [IsTotallyUnimodular.apply](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variantbc6d07394869a4afe07364d4116ec859bc74278f5dcef6507402db3738197952.lean/declarations/istotallyunimodular-apply--8a543a9a6ac213fef7d2ece3.md) | 77 | `result-track:8a543a9a6ac213fef7d2ece313eb1f6c71b72671c9858086f00381d2ef4c2669` |
| 5 | `lemma` | [IsTotallyUnimodular.submatrix](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variantbc6d07394869a4afe07364d4116ec859bc74278f5dcef6507402db3738197952.lean/declarations/istotallyunimodular-submatrix--73564f890f217dfe7530e7ca.md) | 82 | `result-track:73564f890f217dfe7530e7ca0eb9c040c49802c077c1b15a10da58ace4f97067` |
| 6 | `lemma` | [IsTotallyUnimodular.transpose](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variantbc6d07394869a4afe07364d4116ec859bc74278f5dcef6507402db3738197952.lean/declarations/istotallyunimodular-transpose--ba74834e1b7c06b8a9a07136.md) | 89 | `result-track:ba74834e1b7c06b8a9a07136ad6726070af8787b1185a455a3c39159a57970b7` |
| 7 | `lemma` | [transpose_isTotallyUnimodular_iff](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variantbc6d07394869a4afe07364d4116ec859bc74278f5dcef6507402db3738197952.lean/declarations/transpose-istotallyunimodular-iff--8d40848c9e8a4d1e34e0f25e.md) | 95 | `result-track:8d40848c9e8a4d1e34e0f25e4685178d858cdedc22bbb65a90b067bbe126e8e6` |
| 8 | `lemma` | [IsTotallyUnimodular.reindex](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variantbc6d07394869a4afe07364d4116ec859bc74278f5dcef6507402db3738197952.lean/declarations/istotallyunimodular-reindex--0ee5a88d347e79ff00648c87.md) | 99 | `result-track:0ee5a88d347e79ff00648c870b1149092864bbdd8eef1b5b05c1861662d2e3ab` |
| 9 | `lemma` | [reindex_isTotallyUnimodular](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variantbc6d07394869a4afe07364d4116ec859bc74278f5dcef6507402db3738197952.lean/declarations/reindex-istotallyunimodular--aaf92a9594c1e40b8aeb52d5.md) | 104 | `result-track:aaf92a9594c1e40b8aeb52d5539f1ae2b5e77b734cacfe36ad98a63f3878851d` |
| 10 | `lemma` | [IsTotallyUnimodular.fromRows_unitlike](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variantbc6d07394869a4afe07364d4116ec859bc74278f5dcef6507402db3738197952.lean/declarations/istotallyunimodular-fromrows-unitlike--2ce7d01843884ddd3c26291a.md) | 111 | `result-track:2ce7d01843884ddd3c26291a0a06891afc3d552e70f1b079c5204d6fa134e9cc` |
| 11 | `lemma` | [fromRows_isTotallyUnimodular_iff_rows](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variantbc6d07394869a4afe07364d4116ec859bc74278f5dcef6507402db3738197952.lean/declarations/fromrows-istotallyunimodular-iff-rows--a5873ff603abe2ee0d089577.md) | 151 | `result-track:a5873ff603abe2ee0d089577bdff4382b7723a1fa09cdb8386dbec8d43497dae` |
| 12 | `lemma` | [fromRows_one_isTotallyUnimodular_iff](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variantbc6d07394869a4afe07364d4116ec859bc74278f5dcef6507402db3738197952.lean/declarations/fromrows-one-istotallyunimodular-iff--c6f1bc4f3b2394b32273765d.md) | 156 | `result-track:c6f1bc4f3b2394b32273765d2eb63752a492597c3b1c37b544e4a3b823693f81` |
| 13 | `lemma` | [one_fromRows_isTotallyUnimodular_iff](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variantbc6d07394869a4afe07364d4116ec859bc74278f5dcef6507402db3738197952.lean/declarations/one-fromrows-istotallyunimodular-iff--c453c7c4142c016429e152da.md) | 161 | `result-track:c453c7c4142c016429e152da7328a6926709e94b8983995ee433d279232897db` |
| 14 | `lemma` | [fromCols_one_isTotallyUnimodular_iff](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variantbc6d07394869a4afe07364d4116ec859bc74278f5dcef6507402db3738197952.lean/declarations/fromcols-one-istotallyunimodular-iff--2e5c3556408f9e5a62ed10f5.md) | 169 | `result-track:2e5c3556408f9e5a62ed10f52db87d5c37028f8f2e6affdc30d2a439e01ba15a` |
| 15 | `lemma` | [one_fromCols_isTotallyUnimodular_iff](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variantbc6d07394869a4afe07364d4116ec859bc74278f5dcef6507402db3738197952.lean/declarations/one-fromcols-istotallyunimodular-iff--9c13970be2561510ca7bc98f.md) | 177 | `result-track:9c13970be2561510ca7bc98fc57e5ddaf42b9639d2f723197d2a4d3175b73fb7` |
| 16 | `lemma` | [fromRows_replicateRow0_isTotallyUnimodular_iff](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variantbc6d07394869a4afe07364d4116ec859bc74278f5dcef6507402db3738197952.lean/declarations/fromrows-replicaterow0-istotallyunimodular-iff--41cf3414025107a6d9bba3f8.md) | 190 | `result-track:41cf3414025107a6d9bba3f85e72225543b39a582960f52bbb6d4438b01dbf3b` |
| 17 | `lemma` | [fromCols_replicateCol0_isTotallyUnimodular_iff](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variantbc6d07394869a4afe07364d4116ec859bc74278f5dcef6507402db3738197952.lean/declarations/fromcols-replicatecol0-istotallyunimodular-iff--0a07b0b492cad51976db1f7f.md) | 202 | `result-track:0a07b0b492cad51976db1f7f4c929bac706a4e7790f74cee92d517321fbb0b21` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
