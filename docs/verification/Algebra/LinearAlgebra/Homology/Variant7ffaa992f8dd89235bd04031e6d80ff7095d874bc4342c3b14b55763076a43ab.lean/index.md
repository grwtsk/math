# Verification target: GRWTSK.Algebra.LinearAlgebra.Homology.Variant7ffaa992f8dd89235bd04031e6d80ff7095d874bc4342c3b14b55763076a43ab

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c3dd63516697f110ca432c411e4e42f4bbfc0f8",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Homology/Variant7ffaa992f8dd89235bd04031e6d80ff7095d874bc4342c3b14b55763076a43ab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Homology/Variant7ffaa992f8dd89235bd04031e6d80ff7095d874bc4342c3b14b55763076a43ab.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Homology/Variant7ffaa992f8dd89235bd04031e6d80ff7095d874bc4342c3b14b55763076a43ab.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c3dd63516697f110ca432c411e4e42f4bbfc0f8`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Homology/Variant7ffaa992f8dd89235bd04031e6d80ff7095d874bc4342c3b14b55763076a43ab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Homology/Variant7ffaa992f8dd89235bd04031e6d80ff7095d874bc4342c3b14b55763076a43ab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Abelian` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Topology.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.Abelian` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.PreservesHomology` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ker](../../../../../mathematics/Algebra/LinearAlgebra/Homology/Variant7ffaa992f8dd89235bd04031e6d80ff7095d874bc4342c3b14b55763076a43ab.lean/declarations/ker--47a8d4ebf079474bd339cdc2.md) | 42 | `declaration-track:47a8d4ebf079474bd339cdc2d72e17f4cae64aba29ab0850b9b6476545a5ce1d` |
| 2 | `def` | [kerι](../../../../../mathematics/Algebra/LinearAlgebra/Homology/Variant7ffaa992f8dd89235bd04031e6d80ff7095d874bc4342c3b14b55763076a43ab.lean/declarations/ker--8c21dc9a308b1ed4f0ca4738.md) | 45 | `declaration-track:8c21dc9a308b1ed4f0ca473809e3f7de8d90a7c072dde8eea1fefb94458c0f6f` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Homology/Variant7ffaa992f8dd89235bd04031e6d80ff7095d874bc4342c3b14b55763076a43ab.lean/declarations/instance--6b0ac5533edb44c448a1c4f0.md) | 47 | `declaration-track:6b0ac5533edb44c448a1c4f024e8350621eda261b4542fb74e0b5a81876c7fe5` |
| 4 | `lemma` | [kerι_comp](../../../../../mathematics/Algebra/LinearAlgebra/Homology/Variant7ffaa992f8dd89235bd04031e6d80ff7095d874bc4342c3b14b55763076a43ab.lean/declarations/ker-comp--8c2c49f214a63390a18c93df.md) | 49 | `result-track:8c2c49f214a63390a18c93df46779d8dc144b415b16cd94f0f7f9b81754b95a6` |
| 5 | `lemma` | [kerι_apply](../../../../../mathematics/Algebra/LinearAlgebra/Homology/Variant7ffaa992f8dd89235bd04031e6d80ff7095d874bc4342c3b14b55763076a43ab.lean/declarations/ker-apply--21e8a2d47c97e05e0a1c5725.md) | 51 | `result-track:21e8a2d47c97e05e0a1c5725a13a213a070a9064281a1d87bdd957490c09aef4` |
| 6 | `def` | [isLimitKer](../../../../../mathematics/Algebra/LinearAlgebra/Homology/Variant7ffaa992f8dd89235bd04031e6d80ff7095d874bc4342c3b14b55763076a43ab.lean/declarations/islimitker--cf7d7e2cf28d394084a88f51.md) | 54 | `declaration-track:cf7d7e2cf28d394084a88f514884467419ed2dc87aae5cd3c51feacb52440f04` |
| 7 | `abbrev` | [coker](../../../../../mathematics/Algebra/LinearAlgebra/Homology/Variant7ffaa992f8dd89235bd04031e6d80ff7095d874bc4342c3b14b55763076a43ab.lean/declarations/coker--20b9e0def6cbbf09d633cd78.md) | 67 | `declaration-track:20b9e0def6cbbf09d633cd78a44fc57cd3172fa34225e85d2ce13327ca77912e` |
| 8 | `def` | [cokerπ](../../../../../mathematics/Algebra/LinearAlgebra/Homology/Variant7ffaa992f8dd89235bd04031e6d80ff7095d874bc4342c3b14b55763076a43ab.lean/declarations/coker--bd63ef36ea541c61a6ce7b57.md) | 70 | `declaration-track:bd63ef36ea541c61a6ce7b5787b2289ef8669ced87948146abc18947d6468e7a` |
| 9 | `lemma` | [hom_cokerπ](../../../../../mathematics/Algebra/LinearAlgebra/Homology/Variant7ffaa992f8dd89235bd04031e6d80ff7095d874bc4342c3b14b55763076a43ab.lean/declarations/hom-coker--bf8cbfa7d29627a1751cce5a.md) | 73 | `result-track:bf8cbfa7d29627a1751cce5a056cc9b1f3a150d977b064d1554f0010e2b6f947` |
| 10 | `lemma` | [cokerπ_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Homology/Variant7ffaa992f8dd89235bd04031e6d80ff7095d874bc4342c3b14b55763076a43ab.lean/declarations/coker-surjective--6dfd43b5f8443b5449aefdca.md) | 75 | `result-track:6dfd43b5f8443b5449aefdcab64cf1878749f54cac10f2f33b79b1e289383e47` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Homology/Variant7ffaa992f8dd89235bd04031e6d80ff7095d874bc4342c3b14b55763076a43ab.lean/declarations/instance--f7e18c720db7afc65ec921da.md) | 77 | `declaration-track:f7e18c720db7afc65ec921da056b14e48e83d0ba0f91e568908c15830c7e67f8` |
| 12 | `lemma` | [comp_cokerπ](../../../../../mathematics/Algebra/LinearAlgebra/Homology/Variant7ffaa992f8dd89235bd04031e6d80ff7095d874bc4342c3b14b55763076a43ab.lean/declarations/comp-coker--72feb1ad9680ba866278f062.md) | 79 | `result-track:72feb1ad9680ba866278f0620c73f6181b86328c1d636a08fcbc0361f2b834bb` |
| 13 | `def` | [isColimitCoker](../../../../../mathematics/Algebra/LinearAlgebra/Homology/Variant7ffaa992f8dd89235bd04031e6d80ff7095d874bc4342c3b14b55763076a43ab.lean/declarations/iscolimitcoker--406c9ccd200c65313a30b7f8.md) | 85 | `declaration-track:406c9ccd200c65313a30b7f8bae3f12c88733c2db3ad9585c591f1a5baa0cb6b` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Homology/Variant7ffaa992f8dd89235bd04031e6d80ff7095d874bc4342c3b14b55763076a43ab.lean/declarations/instance--c082e21abcca073e8f718570.md) | 97 | `declaration-track:c082e21abcca073e8f718570f339c0364dd932d6022e3ca7b13ffdb6d3962c33` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
