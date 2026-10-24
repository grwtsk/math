# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.InducedMaps.Variant0de3cbdf19f65513a3237ce1294ded902b1467464aeda325e2838b4c5134a65d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cdf3bd623541049089206c3cf04d39a2f64eb6df",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedMaps/Variant0de3cbdf19f65513a3237ce1294ded902b1467464aeda325e2838b4c5134a65d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedMaps/Variant0de3cbdf19f65513a3237ce1294ded902b1467464aeda325e2838b4c5134a65d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedMaps/Variant0de3cbdf19f65513a3237ce1294ded902b1467464aeda325e2838b4c5134a65d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cdf3bd623541049089206c3cf04d39a2f64eb6df`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedMaps/Variant0de3cbdf19f65513a3237ce1294ded902b1467464aeda325e2838b4c5134a65d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedMaps/Variant0de3cbdf19f65513a3237ce1294ded902b1467464aeda325e2838b4c5134a65d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Homotopy.Equiv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Equivalence` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.FundamentalGroupoid.Product` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [path01](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedMaps/Variant0de3cbdf19f65513a3237ce1294ded902b1467464aeda325e2838b4c5134a65d.lean/declarations/path01--9305f360f5393550e413b106.md) | 56 | `declaration-track:9305f360f5393550e413b106f73f1ec7d7a13cb00b39fa8058b18b9ee22a6bd8` |
| 2 | `def` | [upath01](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedMaps/Variant0de3cbdf19f65513a3237ce1294ded902b1467464aeda325e2838b4c5134a65d.lean/declarations/upath01--01fd5cabb1431cae9f980c72.md) | 62 | `declaration-track:01fd5cabb1431cae9f980c72a987cb6ec3221dd239ee4471b817ce24f670916d` |
| 3 | `def` | [uhpath01](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedMaps/Variant0de3cbdf19f65513a3237ce1294ded902b1467464aeda325e2838b4c5134a65d.lean/declarations/uhpath01--af250a970504c6f339c741a4.md) | 70 | `declaration-track:af250a970504c6f339c741a4cf68ba778603a6d86dea2ad20a4ad63eeb58c0c8` |
| 4 | `abbrev` | [hcast](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedMaps/Variant0de3cbdf19f65513a3237ce1294ded902b1467464aeda325e2838b4c5134a65d.lean/declarations/hcast--9a1a62a73ec8335bbee9c889.md) | 84 | `declaration-track:9a1a62a73ec8335bbee9c889e14802b8317dbd9d783a5af69da7defd5fd05866` |
| 5 | `theorem` | [hcast_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedMaps/Variant0de3cbdf19f65513a3237ce1294ded902b1467464aeda325e2838b4c5134a65d.lean/declarations/hcast-def--5ccccb97ee6c5b35d4f2b2a7.md) | 88 | `result-track:5ccccb97ee6c5b35d4f2b2a7ca40cb82427c6972c2f3328ac529ff8bfc630272` |
| 6 | `theorem` | [heq_path_of_eq_image](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedMaps/Variant0de3cbdf19f65513a3237ce1294ded902b1467464aeda325e2838b4c5134a65d.lean/declarations/heq-path-of-eq-image--fd1a899ebef9273f371e0630.md) | 98 | `result-track:fd1a899ebef9273f371e06308d20a633f73967539e13ef6c8cf8561d049a7125` |
| 7 | `theorem` | [start_path](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedMaps/Variant0de3cbdf19f65513a3237ce1294ded902b1467464aeda325e2838b4c5134a65d.lean/declarations/start-path--ebd90f4b71b62cc4e2096e1b.md) | 102 | `result-track:ebd90f4b71b62cc4e2096e1bef0b0f6bc7871014ee05181ea31ffe082422e010` |
| 8 | `theorem` | [end_path](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedMaps/Variant0de3cbdf19f65513a3237ce1294ded902b1467464aeda325e2838b4c5134a65d.lean/declarations/end-path--026f829a24e3485b2c380d2e.md) | 104 | `result-track:026f829a24e3485b2c380d2ef0cbebc151376822e5094906c1327f99a6cb5cee` |
| 9 | `theorem` | [eq_path_of_eq_image](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedMaps/Variant0de3cbdf19f65513a3237ce1294ded902b1467464aeda325e2838b4c5134a65d.lean/declarations/eq-path-of-eq-image--d8363167fd0c2c0355af3d8b.md) | 106 | `result-track:d8363167fd0c2c0355af3d8b36f48f4e7005ff76110faf8d1c3c7f7eab7efe66` |
| 10 | `def` | [uliftMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedMaps/Variant0de3cbdf19f65513a3237ce1294ded902b1467464aeda325e2838b4c5134a65d.lean/declarations/uliftmap--ced133bd45d06a9035e736e1.md) | 145 | `declaration-track:ced133bd45d06a9035e736e189c2cbfaa80224ec64ffbedf270cdc5c58075cec` |
| 11 | `theorem` | [ulift_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedMaps/Variant0de3cbdf19f65513a3237ce1294ded902b1467464aeda325e2838b4c5134a65d.lean/declarations/ulift-apply--1d8dd71a0f52aee7b93e0533.md) | 149 | `result-track:1d8dd71a0f52aee7b93e05336fc6e3a4307d0c930ee0333cdad1492a87b62bb5` |
| 12 | `abbrev` | [prodToProdTopI](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedMaps/Variant0de3cbdf19f65513a3237ce1294ded902b1467464aeda325e2838b4c5134a65d.lean/declarations/prodtoprodtopi--38afd9e6835b0162a37bb2ca.md) | 154 | `declaration-track:38afd9e6835b0162a37bb2ca4d1db9315f8777c3b0cdc9058f062eff3ab62f70` |
| 13 | `def` | [diagonalPath](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedMaps/Variant0de3cbdf19f65513a3237ce1294ded902b1467464aeda325e2838b4c5134a65d.lean/declarations/diagonalpath--f1af75d3284d6df6dedca3d5.md) | 159 | `declaration-track:f1af75d3284d6df6dedca3d56ade43224fa62ab854d0569d2a98dcf21040c373` |
| 14 | `def` | [diagonalPath'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedMaps/Variant0de3cbdf19f65513a3237ce1294ded902b1467464aeda325e2838b4c5134a65d.lean/declarations/diagonalpath--e3ca77d57568f23f73f18b32.md) | 163 | `declaration-track:e3ca77d57568f23f73f18b32996765b67ec06cca3af99ac1a7b241535a6b04af` |
| 15 | `theorem` | [apply_zero_path](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedMaps/Variant0de3cbdf19f65513a3237ce1294ded902b1467464aeda325e2838b4c5134a65d.lean/declarations/apply-zero-path--3abecf33a3c62bc046ab3ed5.md) | 167 | `result-track:3abecf33a3c62bc046ab3ed59de0786aaca886c977b258e8aa8a1a166a8ea4f0` |
| 16 | `theorem` | [apply_one_path](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedMaps/Variant0de3cbdf19f65513a3237ce1294ded902b1467464aeda325e2838b4c5134a65d.lean/declarations/apply-one-path--f251c5ead446fdf552f8f5c8.md) | 178 | `result-track:f251c5ead446fdf552f8f5c8ca756b76ecf367fa4da049792d17abbef4e0b3e8` |
| 17 | `theorem` | [evalAt_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedMaps/Variant0de3cbdf19f65513a3237ce1294ded902b1467464aeda325e2838b4c5134a65d.lean/declarations/evalat-eq--71359a330651be8352fa137d.md) | 189 | `result-track:71359a330651be8352fa137d1dc40483922c44c6aff3beaadd0e7dba76fb099d` |
| 18 | `theorem` | [eq_diag_path](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedMaps/Variant0de3cbdf19f65513a3237ce1294ded902b1467464aeda325e2838b4c5134a65d.lean/declarations/eq-diag-path--8efa7928592df7cfe987e3b5.md) | 200 | `result-track:8efa7928592df7cfe987e3b5ac3cd916dcc3eab44ac2416bd7a4dc20855a9de8` |
| 19 | `def` | [homotopicMapsNatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedMaps/Variant0de3cbdf19f65513a3237ce1294ded902b1467464aeda325e2838b4c5134a65d.lean/declarations/homotopicmapsnatiso--0bc2da6b251aa870da7e49df.md) | 229 | `declaration-track:0bc2da6b251aa870da7e49df9fed15a13aed1477bb77c10943bb0104b16d7d75` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedMaps/Variant0de3cbdf19f65513a3237ce1294ded902b1467464aeda325e2838b4c5134a65d.lean/declarations/instance--a060800c9ca4778ab6bab94f.md) | 235 | `declaration-track:a060800c9ca4778ab6bab94f343023cec8d4cf001426b5e1d97d649b4424ca54` |
| 21 | `def` | [equivOfHomotopyEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedMaps/Variant0de3cbdf19f65513a3237ce1294ded902b1467464aeda325e2838b4c5134a65d.lean/declarations/equivofhomotopyequiv--14dde2f4f66ecc9112f74018.md) | 240 | `declaration-track:14dde2f4f66ecc9112f74018c0746026cfd870f717b08e06ca4042a5dc2a4386` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
