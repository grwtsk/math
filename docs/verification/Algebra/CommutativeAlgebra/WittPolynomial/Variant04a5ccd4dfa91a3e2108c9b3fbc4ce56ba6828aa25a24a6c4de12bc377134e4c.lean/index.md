# Verification target: GRWTSK.Algebra.CommutativeAlgebra.WittPolynomial.Variant04a5ccd4dfa91a3e2108c9b3fbc4ce56ba6828aa25a24a6c4de12bc377134e4c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "53d3517f5e79fd3fed310b7aaa9d3cc1df0ca9d8",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/WittPolynomial/Variant04a5ccd4dfa91a3e2108c9b3fbc4ce56ba6828aa25a24a6c4de12bc377134e4c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variant04a5ccd4dfa91a3e2108c9b3fbc4ce56ba6828aa25a24a6c4de12bc377134e4c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variant04a5ccd4dfa91a3e2108c9b3fbc4ce56ba6828aa25a24a6c4de12bc377134e4c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `53d3517f5e79fd3fed310b7aaa9d3cc1df0ca9d8`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/WittPolynomial/Variant04a5ccd4dfa91a3e2108c9b3fbc4ce56ba6828aa25a24a6c4de12bc377134e4c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/WittPolynomial/Variant04a5ccd4dfa91a3e2108c9b3fbc4ce56ba6828aa25a24a6c4de12bc377134e4c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Invertible` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Variables` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.CommRing` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Expand` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Rat` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [wittPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variant04a5ccd4dfa91a3e2108c9b3fbc4ce56ba6828aa25a24a6c4de12bc377134e4c.lean/declarations/wittpolynomial--da5ef65a33c085b089dba5f2.md) | 76 | `declaration-track:da5ef65a33c085b089dba5f28414f508ce462d63edac285fffbc7ccc55303d0d` |
| 2 | `theorem` | [wittPolynomial_eq_sum_C_mul_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variant04a5ccd4dfa91a3e2108c9b3fbc4ce56ba6828aa25a24a6c4de12bc377134e4c.lean/declarations/wittpolynomial-eq-sum-c-mul-x-pow--46371369aee3a6e43f16e9ef.md) | 79 | `result-track:46371369aee3a6e43f16e9efbd8acffe93830baa9353a5f64b0076a8adff74eb` |
| 3 | `theorem` | [map_wittPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variant04a5ccd4dfa91a3e2108c9b3fbc4ce56ba6828aa25a24a6c4de12bc377134e4c.lean/declarations/map-wittpolynomial--92a9ce4720f06003a26d6184.md) | 112 | `result-track:92a9ce4720f06003a26d6184ca5ccce98a502c557a8eb7b20f22c5c1a1856517` |
| 4 | `theorem` | [constantCoeff_wittPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variant04a5ccd4dfa91a3e2108c9b3fbc4ce56ba6828aa25a24a6c4de12bc377134e4c.lean/declarations/constantcoeff-wittpolynomial--be0962d9835e5494966d3043.md) | 120 | `result-track:be0962d9835e5494966d30435d1f924a937a07eed73b5c70c84b82bf58f6b268` |
| 5 | `theorem` | [wittPolynomial_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variant04a5ccd4dfa91a3e2108c9b3fbc4ce56ba6828aa25a24a6c4de12bc377134e4c.lean/declarations/wittpolynomial-zero--f6590f5c7b553bad7e61789a.md) | 130 | `result-track:f6590f5c7b553bad7e61789a0bb07326341660efac89513cf9d8e6802ff24e5b` |
| 6 | `theorem` | [wittPolynomial_one](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variant04a5ccd4dfa91a3e2108c9b3fbc4ce56ba6828aa25a24a6c4de12bc377134e4c.lean/declarations/wittpolynomial-one--254cd8f0beadbd4f571d2e6a.md) | 134 | `result-track:254cd8f0beadbd4f571d2e6a18963c1fff419c2e9bde8a6d940ccc49ed07b872` |
| 7 | `theorem` | [aeval_wittPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variant04a5ccd4dfa91a3e2108c9b3fbc4ce56ba6828aa25a24a6c4de12bc377134e4c.lean/declarations/aeval-wittpolynomial--91fc7cd951f82c4f27f8a33a.md) | 138 | `result-track:91fc7cd951f82c4f27f8a33ae2a2d7e1e48becf4da9ee36d269fea4ff6d5f325` |
| 8 | `theorem` | [wittPolynomial_zmod_self](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variant04a5ccd4dfa91a3e2108c9b3fbc4ce56ba6828aa25a24a6c4de12bc377134e4c.lean/declarations/wittpolynomial-zmod-self--528c2ddd1e3e17d0238f99b2.md) | 145 | `result-track:528c2ddd1e3e17d0238f99b2551970c914013e44590d0a5779740b12963b8c98` |
| 9 | `theorem` | [wittPolynomial_vars](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variant04a5ccd4dfa91a3e2108c9b3fbc4ce56ba6828aa25a24a6c4de12bc377134e4c.lean/declarations/wittpolynomial-vars--fbd5385d33fc1b3ea3d05687.md) | 160 | `result-track:fbd5385d33fc1b3ea3d056870aa9f279fad94c46237446b1d13a6776ef05b6b7` |
| 10 | `theorem` | [wittPolynomial_vars_subset](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variant04a5ccd4dfa91a3e2108c9b3fbc4ce56ba6828aa25a24a6c4de12bc377134e4c.lean/declarations/wittpolynomial-vars-subset--b47b62ebe54f02adf149ea08.md) | 173 | `result-track:b47b62ebe54f02adf149ea08d8fcd8973a5db71ebd9553ab0c184790c153e70e` |
| 11 | `def` | [xInTermsOfW](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variant04a5ccd4dfa91a3e2108c9b3fbc4ce56ba6828aa25a24a6c4de12bc377134e4c.lean/declarations/xintermsofw--b081be5015b78206c2e93e78.md) | 193 | `declaration-track:b081be5015b78206c2e93e7862fae05a4d9766d414a1ab1f3b081bccd9ca7017` |
| 12 | `theorem` | [xInTermsOfW_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variant04a5ccd4dfa91a3e2108c9b3fbc4ce56ba6828aa25a24a6c4de12bc377134e4c.lean/declarations/xintermsofw-eq--29ab82b18202416927c42813.md) | 197 | `result-track:29ab82b18202416927c42813152f99ed3fc574d0dc054cb5f962441ccf3d4dab` |
| 13 | `theorem` | [constantCoeff_xInTermsOfW](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variant04a5ccd4dfa91a3e2108c9b3fbc4ce56ba6828aa25a24a6c4de12bc377134e4c.lean/declarations/constantcoeff-xintermsofw--d15b21ad904584fefa35bd51.md) | 203 | `result-track:d15b21ad904584fefa35bd518c10cd4306451c75788109f4834491cf8c4779bf` |
| 14 | `theorem` | [xInTermsOfW_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variant04a5ccd4dfa91a3e2108c9b3fbc4ce56ba6828aa25a24a6c4de12bc377134e4c.lean/declarations/xintermsofw-zero--b2443f193cdb5891e7644714.md) | 221 | `result-track:b2443f193cdb5891e7644714bc56f360afea6f309e18cde4c3bdec9a9fe08e10` |
| 15 | `theorem` | [xInTermsOfW_vars_aux](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variant04a5ccd4dfa91a3e2108c9b3fbc4ce56ba6828aa25a24a6c4de12bc377134e4c.lean/declarations/xintermsofw-vars-aux--85da8e4e6efdce0028e66c8d.md) | 228 | `result-track:85da8e4e6efdce0028e66c8d5e203322fbfd0fb372d5b586a6d5638051578691` |
| 16 | `theorem` | [xInTermsOfW_vars_subset](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variant04a5ccd4dfa91a3e2108c9b3fbc4ce56ba6828aa25a24a6c4de12bc377134e4c.lean/declarations/xintermsofw-vars-subset--eacdf56cc56cc00b4df23747.md) | 255 | `result-track:eacdf56cc56cc00b4df23747e8072b74a507bff11ab83019bbbf0843914ae2c2` |
| 17 | `theorem` | [xInTermsOfW_aux](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variant04a5ccd4dfa91a3e2108c9b3fbc4ce56ba6828aa25a24a6c4de12bc377134e4c.lean/declarations/xintermsofw-aux--e037780cc9897e64b2242d92.md) | 260 | `result-track:e037780cc9897e64b2242d92be78268c036916415c0e94f5e9ec24ef675bd6e5` |
| 18 | `theorem` | [bind₁_xInTermsOfW_wittPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variant04a5ccd4dfa91a3e2108c9b3fbc4ce56ba6828aa25a24a6c4de12bc377134e4c.lean/declarations/bind-xintermsofw-wittpolynomial--1f4d2e78aa4e41e6cb9b396d.md) | 267 | `result-track:1f4d2e78aa4e41e6cb9b396df16325cd28ae6b36500c67d0012f0bf2fc0a0f58` |
| 19 | `theorem` | [bind₁_wittPolynomial_xInTermsOfW](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variant04a5ccd4dfa91a3e2108c9b3fbc4ce56ba6828aa25a24a6c4de12bc377134e4c.lean/declarations/bind-wittpolynomial-xintermsofw--44f1798e18ffb7a1f90b41c8.md) | 276 | `result-track:44f1798e18ffb7a1f90b41c87bcb0c01500f3d9d4d33db8fb4fed9d264eea9f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
