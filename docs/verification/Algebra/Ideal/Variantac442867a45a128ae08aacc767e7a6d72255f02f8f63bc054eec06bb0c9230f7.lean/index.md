# Verification target: GRWTSK.Algebra.Ideal.Variantac442867a45a128ae08aacc767e7a6d72255f02f8f63bc054eec06bb0c9230f7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "edd4f742ec46d8ff6392297f57277d430fb7eb18",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Ideal/Variantac442867a45a128ae08aacc767e7a6d72255f02f8f63bc054eec06bb0c9230f7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Ideal/Variantac442867a45a128ae08aacc767e7a6d72255f02f8f63bc054eec06bb0c9230f7.lean/index.md) · [Full source](../../../../mathematics/Algebra/Ideal/Variantac442867a45a128ae08aacc767e7a6d72255f02f8f63bc054eec06bb0c9230f7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `edd4f742ec46d8ff6392297f57277d430fb7eb18`.

Source path: `GRWTSK/Algebra/Ideal/Variantac442867a45a128ae08aacc767e7a6d72255f02f8f63bc054eec06bb0c9230f7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Ideal/Variantac442867a45a128ae08aacc767e7a6d72255f02f8f63bc054eec06bb0c9230f7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Pointwise.Interval` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_ideal_span_monomial_image](../../../../mathematics/Algebra/Ideal/Variantac442867a45a128ae08aacc767e7a6d72255f02f8f63bc054eec06bb0c9230f7.lean/declarations/mem-ideal-span-monomial-image--41661736bf28cedf7dba4a0b.md) | 47 | `result-track:41661736bf28cedf7dba4a0be44576b88862fc427a213977d86116f4f3144db2` |
| 2 | `theorem` | [mem_ideal_span_monomial_image_iff_dvd](../../../../mathematics/Algebra/Ideal/Variantac442867a45a128ae08aacc767e7a6d72255f02f8f63bc054eec06bb0c9230f7.lean/declarations/mem-ideal-span-monomial-image-iff-dvd--98650ca1d74e011b5cdaeddc.md) | 53 | `result-track:98650ca1d74e011b5cdaeddc7ead9dac14fffb667b36e6cea9aad68fe26a7524` |
| 3 | `theorem` | [mem_ideal_span_X_image](../../../../mathematics/Algebra/Ideal/Variantac442867a45a128ae08aacc767e7a6d72255f02f8f63bc054eec06bb0c9230f7.lean/declarations/mem-ideal-span-x-image--6861e0e60a37306efb68ea15.md) | 61 | `result-track:6861e0e60a37306efb68ea15329785c2be682c691ad31fa900b03baa995c5023` |
| 4 | `abbrev` | [idealOfVars](../../../../mathematics/Algebra/Ideal/Variantac442867a45a128ae08aacc767e7a6d72255f02f8f63bc054eec06bb0c9230f7.lean/declarations/idealofvars--a03282f58d0c34244aa625b1.md) | 75 | `declaration-track:a03282f58d0c34244aa625b1634a2d1a8c773beb0a4aa7ddb24601ade017bc79` |
| 5 | `lemma` | [idealOfVars_fg](../../../../mathematics/Algebra/Ideal/Variantac442867a45a128ae08aacc767e7a6d72255f02f8f63bc054eec06bb0c9230f7.lean/declarations/idealofvars-fg--51b40ad138f3af36fb54d93e.md) | 78 | `result-track:51b40ad138f3af36fb54d93e8f6f5aa4d145fc2096265f4f02d20def3593b889` |
| 6 | `lemma` | [idealOfVars_eq_restrictSupportIdeal](../../../../mathematics/Algebra/Ideal/Variantac442867a45a128ae08aacc767e7a6d72255f02f8f63bc054eec06bb0c9230f7.lean/declarations/idealofvars-eq-restrictsupportideal--3581a990da5b3758088fd48f.md) | 82 | `result-track:3581a990da5b3758088fd48fab5f6ba138eded956bacd3fb0b4a3d84f42b5ab7` |
| 7 | `theorem` | [pow_idealOfVars](../../../../mathematics/Algebra/Ideal/Variantac442867a45a128ae08aacc767e7a6d72255f02f8f63bc054eec06bb0c9230f7.lean/declarations/pow-idealofvars--cc2df057b7a17829764bee14.md) | 95 | `result-track:cc2df057b7a17829764bee14194395005fa1eab6b418770275d900e191d20822` |
| 8 | `theorem` | [pow_idealOfVars_eq_span](../../../../mathematics/Algebra/Ideal/Variantac442867a45a128ae08aacc767e7a6d72255f02f8f63bc054eec06bb0c9230f7.lean/declarations/pow-idealofvars-eq-span--73b6653af357260f24494f56.md) | 105 | `result-track:73b6653af357260f24494f56e724441402bbbab7cbb2325d5e148de6608acadd` |
| 9 | `theorem` | [mem_pow_idealOfVars_iff](../../../../mathematics/Algebra/Ideal/Variantac442867a45a128ae08aacc767e7a6d72255f02f8f63bc054eec06bb0c9230f7.lean/declarations/mem-pow-idealofvars-iff--4a0d6a258da5603f301d8510.md) | 112 | `result-track:4a0d6a258da5603f301d8510777050bf077e3b637ea718c3a6a1a647706dcd99` |
| 10 | `theorem` | [mem_pow_idealOfVars_iff'](../../../../mathematics/Algebra/Ideal/Variantac442867a45a128ae08aacc767e7a6d72255f02f8f63bc054eec06bb0c9230f7.lean/declarations/mem-pow-idealofvars-iff--6b425d75470407f9adfcce8e.md) | 117 | `result-track:6b425d75470407f9adfcce8e21aff595e922322e44003d4ae2ec4ea255593e72` |
| 11 | `theorem` | [monomial_mem_pow_idealOfVars_iff](../../../../mathematics/Algebra/Ideal/Variantac442867a45a128ae08aacc767e7a6d72255f02f8f63bc054eec06bb0c9230f7.lean/declarations/monomial-mem-pow-idealofvars-iff--174b69d365931f0bdab7bb41.md) | 121 | `result-track:174b69d365931f0bdab7bb417d991c94c721b53eb6bd7f11dbacf8324fff1869` |
| 12 | `theorem` | [C_mem_pow_idealOfVars_iff](../../../../mathematics/Algebra/Ideal/Variantac442867a45a128ae08aacc767e7a6d72255f02f8f63bc054eec06bb0c9230f7.lean/declarations/c-mem-pow-idealofvars-iff--d656b6a6b6dff77c63ba380a.md) | 126 | `result-track:d656b6a6b6dff77c63ba380a7b67586b42e8f4f77a6de7b7dcaa7b86bb5ac4b4` |
| 13 | `theorem` | [mkₐ_eq_aeval](../../../../mathematics/Algebra/Ideal/Variantac442867a45a128ae08aacc767e7a6d72255f02f8f63bc054eec06bb0c9230f7.lean/declarations/mk-eq-aeval--e5440ce6985a8c88469b3ad8.md) | 137 | `result-track:e5440ce6985a8c88469b3ad8ce7ce249421dd44ace97031119943c001eeb80c2` |
| 14 | `theorem` | [mk_eq_eval₂](../../../../mathematics/Algebra/Ideal/Variantac442867a45a128ae08aacc767e7a6d72255f02f8f63bc054eec06bb0c9230f7.lean/declarations/mk-eq-eval--8279e51c18178200c8746d00.md) | 143 | `result-track:8279e51c18178200c8746d0038f68374d5104ee8eed4bfe9616c53f6a17feeca` |
| 15 | `lemma` | [span_leadingTerm_sdiff_singleton_zero](../../../../mathematics/Algebra/Ideal/Variantac442867a45a128ae08aacc767e7a6d72255f02f8f63bc054eec06bb0c9230f7.lean/declarations/span-leadingterm-sdiff-singleton-zero--daebb156e804dc27511446f9.md) | 158 | `result-track:daebb156e804dc27511446f91fe1e19535dd0fc8b23948166e98ecb3fb091c52` |
| 16 | `lemma` | [span_leadingTerm_insert_zero](../../../../mathematics/Algebra/Ideal/Variantac442867a45a128ae08aacc767e7a6d72255f02f8f63bc054eec06bb0c9230f7.lean/declarations/span-leadingterm-insert-zero--2ee422ef7d786cf46fc88cbd.md) | 162 | `result-track:2ee422ef7d786cf46fc88cbd2de7eef4363b603e937cf4aad27c1601eec60814` |
| 17 | `lemma` | [span_leadingTerm_eq_span_monomial](../../../../mathematics/Algebra/Ideal/Variantac442867a45a128ae08aacc767e7a6d72255f02f8f63bc054eec06bb0c9230f7.lean/declarations/span-leadingterm-eq-span-monomial--f55ac2fac5b2bb2422c6c2a9.md) | 168 | `result-track:f55ac2fac5b2bb2422c6c2a9680770cfd5ae4541d4297f5a69089c9a4c29049a` |
| 18 | `lemma` | [span_leadingTerm_eq_span_monomial₀](../../../../mathematics/Algebra/Ideal/Variantac442867a45a128ae08aacc767e7a6d72255f02f8f63bc054eec06bb0c9230f7.lean/declarations/span-leadingterm-eq-span-monomial--33900d1b0dd0b60b9a953211.md) | 185 | `result-track:33900d1b0dd0b60b9a953211198bc8e731bad91e9683b976f75bff551d3bc405` |
| 19 | `lemma` | [span_leadingTerm_eq_span_monomial'](../../../../mathematics/Algebra/Ideal/Variantac442867a45a128ae08aacc767e7a6d72255f02f8f63bc054eec06bb0c9230f7.lean/declarations/span-leadingterm-eq-span-monomial--fa3429ebfa27a4451adea3cd.md) | 193 | `result-track:fa3429ebfa27a4451adea3cda7bc054452c98d3c91f440f44703fa7d51bcb72e` |
| 20 | `lemma` | [sPolynomial_mem_sup_ideal](../../../../mathematics/Algebra/Ideal/Variantac442867a45a128ae08aacc767e7a6d72255f02f8f63bc054eec06bb0c9230f7.lean/declarations/spolynomial-mem-sup-ideal--7c915caf55937f0143c42cfc.md) | 199 | `result-track:7c915caf55937f0143c42cfc3da1fadef027fc2e8c04c80e0b8773c745f4e704` |
| 21 | `lemma` | [sPolynomial_mem_ideal](../../../../mathematics/Algebra/Ideal/Variantac442867a45a128ae08aacc767e7a6d72255f02f8f63bc054eec06bb0c9230f7.lean/declarations/spolynomial-mem-ideal--c6f87592768a13dd5863dec7.md) | 204 | `result-track:c6f87592768a13dd5863dec7ef107d2317dd152758a1c3c22eee877bf67b1ed7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
