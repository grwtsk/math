# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Polynomial.Variantbf5b3018c563746120baa3e70255bf220012588c7ba737e70adbc20d022680bc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9adaffbcbe4428e67463e26a98cefb16db860408",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variantbf5b3018c563746120baa3e70255bf220012588c7ba737e70adbc20d022680bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variantbf5b3018c563746120baa3e70255bf220012588c7ba737e70adbc20d022680bc.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variantbf5b3018c563746120baa3e70255bf220012588c7ba737e70adbc20d022680bc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9adaffbcbe4428e67463e26a98cefb16db860408`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variantbf5b3018c563746120baa3e70255bf220012588c7ba737e70adbc20d022680bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Polynomial/Variantbf5b3018c563746120baa3e70255bf220012588c7ba737e70adbc20d022680bc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Polynomial` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Star` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UnitInterval` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.Subalgebra` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toContinuousMap](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variantbf5b3018c563746120baa3e70255bf220012588c7ba737e70adbc20d022680bc.lean/declarations/tocontinuousmap--61abd39d4ae14d2e39a5f4cb.md) | 40 | `declaration-track:61abd39d4ae14d2e39a5f4cbb8f2788b2a9ad197175f1024e2a268cb7b407ab2` |
| 2 | `lemma` | [toContinuousMap_X_eq_id](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variantbf5b3018c563746120baa3e70255bf220012588c7ba737e70adbc20d022680bc.lean/declarations/tocontinuousmap-x-eq-id--e37dad667b62f679269514c7.md) | 44 | `result-track:e37dad667b62f679269514c7c7690078ad0d3699de7c198bdd0bb711e14b0ba8` |
| 3 | `def` | [toContinuousMapOn](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variantbf5b3018c563746120baa3e70255bf220012588c7ba737e70adbc20d022680bc.lean/declarations/tocontinuousmapon--ec7412a8dc927a1253f8323c.md) | 53 | `declaration-track:ec7412a8dc927a1253f8323c5b1029b68a1bad5fb8a834697fe415d2494a3e90` |
| 4 | `lemma` | [toContinuousMapOn_X_eq_restrict_id](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variantbf5b3018c563746120baa3e70255bf220012588c7ba737e70adbc20d022680bc.lean/declarations/tocontinuousmapon-x-eq-restrict-id--0fa5ef1673bebbb426f1fd83.md) | 57 | `result-track:0fa5ef1673bebbb426f1fd831924e124fc9acee945f9111708136bad2b36bf4f` |
| 5 | `theorem` | [aeval_continuousMap_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variantbf5b3018c563746120baa3e70255bf220012588c7ba737e70adbc20d022680bc.lean/declarations/aeval-continuousmap-apply--fb9d1a52969d687f48b288c4.md) | 71 | `result-track:fb9d1a52969d687f48b288c4eef56e6654c1d0721c7e7c2ddc21c9d11b12b397` |
| 6 | `def` | [toContinuousMapAlgHom](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variantbf5b3018c563746120baa3e70255bf220012588c7ba737e70adbc20d022680bc.lean/declarations/tocontinuousmapalghom--c48dfd2581030abd84ccf2be.md) | 88 | `declaration-track:c48dfd2581030abd84ccf2be25787f97188809849129b6500857992eaa83fa12` |
| 7 | `def` | [toContinuousMapOnAlgHom](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variantbf5b3018c563746120baa3e70255bf220012588c7ba737e70adbc20d022680bc.lean/declarations/tocontinuousmaponalghom--da9ef51e15a3a37e37fe5f96.md) | 109 | `declaration-track:da9ef51e15a3a37e37fe5f9646b4ced04e1d9d9c5b40fada6aedc2573b9e749e` |
| 8 | `def` | [polynomialFunctions](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variantbf5b3018c563746120baa3e70255bf220012588c7ba737e70adbc20d022680bc.lean/declarations/polynomialfunctions--5f945bd1ca6b9caca6e7a407.md) | 140 | `declaration-track:5f945bd1ca6b9caca6e7a40775f1773fd2ffaee328ad3a300f95e5c6451e3067` |
| 9 | `theorem` | [polynomialFunctions_coe](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variantbf5b3018c563746120baa3e70255bf220012588c7ba737e70adbc20d022680bc.lean/declarations/polynomialfunctions-coe--8f94e00dd9e4db3c57f45af0.md) | 144 | `result-track:8f94e00dd9e4db3c57f45af0f2a0a94de7284fedba81138edf7655cea9d52df8` |
| 10 | `theorem` | [polynomialFunctions_separatesPoints](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variantbf5b3018c563746120baa3e70255bf220012588c7ba737e70adbc20d022680bc.lean/declarations/polynomialfunctions-separatespoints--f7d0c347c85c740bd8946bda.md) | 153 | `result-track:f7d0c347c85c740bd8946bdaf6545b0c6b9f5fbc82d5c51f588ec39be2b99eac` |
| 11 | `theorem` | [polynomialFunctions.comap_compRightAlgHom_iccHomeoI](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variantbf5b3018c563746120baa3e70255bf220012588c7ba737e70adbc20d022680bc.lean/declarations/polynomialfunctions-comap-comprightalghom-icchomeoi--49ac9d5aa8caaf60bbdd8c50.md) | 166 | `result-track:49ac9d5aa8caaf60bbdd8c50d9aacb19a1f51a040c1994467fcd7891b61aca66` |
| 12 | `theorem` | [polynomialFunctions.eq_adjoin_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variantbf5b3018c563746120baa3e70255bf220012588c7ba737e70adbc20d022680bc.lean/declarations/polynomialfunctions-eq-adjoin-x--5fb78c6ba21a3f9b790aa0e2.md) | 206 | `result-track:5fb78c6ba21a3f9b790aa0e258f0d00beab823e5f73e0b5a084a4f822d30fffe` |
| 13 | `theorem` | [polynomialFunctions.le_equalizer](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variantbf5b3018c563746120baa3e70255bf220012588c7ba737e70adbc20d022680bc.lean/declarations/polynomialfunctions-le-equalizer--7aec912435cb85fd37dd12e7.md) | 220 | `result-track:7aec912435cb85fd37dd12e71878a4250da12aae39a7447029d9a6c7375d1231` |
| 14 | `theorem` | [polynomialFunctions.starClosure_eq_adjoin_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variantbf5b3018c563746120baa3e70255bf220012588c7ba737e70adbc20d022680bc.lean/declarations/polynomialfunctions-starclosure-eq-adjoin-x--1b643b369503e39ecbd122f3.md) | 229 | `result-track:1b643b369503e39ecbd122f3facc468c2bf747ff73ba3d7f40403ac5fa4cce7b` |
| 15 | `theorem` | [polynomialFunctions.starClosure_le_equalizer](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variantbf5b3018c563746120baa3e70255bf220012588c7ba737e70adbc20d022680bc.lean/declarations/polynomialfunctions-starclosure-le-equalizer--b8db144a964fed70a5e14d8e.md) | 233 | `result-track:b8db144a964fed70a5e14d8e49db2ce7ce563d3162b17cb95d3c6c5dc5e8468b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
