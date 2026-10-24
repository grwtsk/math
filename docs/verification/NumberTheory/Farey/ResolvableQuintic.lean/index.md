# Verification target: GRWTSK.NumberTheory.Farey.ResolvableQuintic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7caef4b022e35202eef471aae2730dff6b518f70",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Farey/ResolvableQuintic.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Farey/ResolvableQuintic.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Farey/ResolvableQuintic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7caef4b022e35202eef471aae2730dff6b518f70`.

Source path: `GRWTSK/NumberTheory/Farey/ResolvableQuintic.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Farey/ResolvableQuintic.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Cell](../../../../mathematics/NumberTheory/Farey/ResolvableQuintic.lean/declarations/cell--7264ff1cb82f5f5ac4a01b3b.md) | 34 | `declaration-track:7264ff1cb82f5f5ac4a01b3bbef54be381fd1441e1ddf6d0347dd1475a348f80` |
| 2 | `def` | [left](../../../../mathematics/NumberTheory/Farey/ResolvableQuintic.lean/declarations/left--9b48568a6ceeb056ce682852.md) | 46 | `declaration-track:9b48568a6ceeb056ce6828523ffb4cd3bd6e701e089f7020e23121f7c5f951c7` |
| 3 | `def` | [right](../../../../mathematics/NumberTheory/Farey/ResolvableQuintic.lean/declarations/right--9f78d534b94c6e5c3ff1442f.md) | 49 | `declaration-track:9f78d534b94c6e5c3ff1442f9b110ce3fb06d77bc2b5a8658a1688b972da2a1d` |
| 4 | `def` | [mediant](../../../../mathematics/NumberTheory/Farey/ResolvableQuintic.lean/declarations/mediant--f489f0269fbc1a57382cf586.md) | 52 | `declaration-track:f489f0269fbc1a57382cf586174f0393b4b7bf733f6eab509f4eb8ccda594447` |
| 5 | `def` | [leftChild](../../../../mathematics/NumberTheory/Farey/ResolvableQuintic.lean/declarations/leftchild--2fce087f20a3cda167dd209d.md) | 57 | `declaration-track:2fce087f20a3cda167dd209d291432a32bea4d0d0d327676e600db1f1f37b741` |
| 6 | `def` | [rightChild](../../../../mathematics/NumberTheory/Farey/ResolvableQuintic.lean/declarations/rightchild--c53989a9e558338d82ad1560.md) | 73 | `declaration-track:c53989a9e558338d82ad1560b1fe601969409fef841d45be9971219b956949bd` |
| 7 | `theorem` | [left_leftChild](../../../../mathematics/NumberTheory/Farey/ResolvableQuintic.lean/declarations/left-leftchild--c92a7a5b3645fe926d7d3bd5.md) | 88 | `result-track:c92a7a5b3645fe926d7d3bd5530bfe4b8ca0f222fdc10bff22bd9820504350bd` |
| 8 | `theorem` | [right_leftChild](../../../../mathematics/NumberTheory/Farey/ResolvableQuintic.lean/declarations/right-leftchild--3b67e8c37d76d2bdfaeff72f.md) | 89 | `result-track:3b67e8c37d76d2bdfaeff72fd3b352970b9096737cf75a56166eed7cfa0128b2` |
| 9 | `theorem` | [left_rightChild](../../../../mathematics/NumberTheory/Farey/ResolvableQuintic.lean/declarations/left-rightchild--aa3abe88b7d4b0ca5579875b.md) | 90 | `result-track:aa3abe88b7d4b0ca5579875b07331b42e6affa56ba793abe5b1e296687548dbd` |
| 10 | `theorem` | [right_rightChild](../../../../mathematics/NumberTheory/Farey/ResolvableQuintic.lean/declarations/right-rightchild--01838b8507767bdbf148aef5.md) | 91 | `result-track:01838b8507767bdbf148aef519c861a7014a64d72582a11b5d0f5bc2bd298d45` |
| 11 | `theorem` | [left_lt_right](../../../../mathematics/NumberTheory/Farey/ResolvableQuintic.lean/declarations/left-lt-right--635c83b2e8288437abdb624a.md) | 94 | `result-track:635c83b2e8288437abdb624af41bac8c8b0ae4909e3fcc103c388a249ded23cb` |
| 12 | `theorem` | [left_lt_mediant](../../../../mathematics/NumberTheory/Farey/ResolvableQuintic.lean/declarations/left-lt-mediant--3ed25af60582bbde19f06da8.md) | 104 | `result-track:3ed25af60582bbde19f06da8594109656219744ead4bfef13fa4415fd25d50c5` |
| 13 | `theorem` | [mediant_lt_right](../../../../mathematics/NumberTheory/Farey/ResolvableQuintic.lean/declarations/mediant-lt-right--66bc5db12a6135f711c3d168.md) | 108 | `result-track:66bc5db12a6135f711c3d1687ec60761d76a82518f4fde0f0ae2b8dc27f82f8b` |
| 14 | `def` | [Resolves](../../../../mathematics/NumberTheory/Farey/ResolvableQuintic.lean/declarations/resolves--4a3bdf2b25035e9ae5346c1a.md) | 114 | `declaration-track:4a3bdf2b25035e9ae5346c1a89bec47dfb1e3d647863076efb4a6f9854bf916b` |
| 15 | `theorem` | [resolves_refine](../../../../mathematics/NumberTheory/Farey/ResolvableQuintic.lean/declarations/resolves-refine--5076150bfa7a435595e9a7b9.md) | 119 | `result-track:5076150bfa7a435595e9a7b9443c95033dc340dab3c72fa2f42e951122905dee` |
| 16 | `def` | [PolynomialResolves](../../../../mathematics/NumberTheory/Farey/ResolvableQuintic.lean/declarations/polynomialresolves--35f120abff8ad2b0b90e56cf.md) | 127 | `declaration-track:35f120abff8ad2b0b90e56cf4de882d009e125158d10202e8f0e8dc0689c88e2` |
| 17 | `def` | [ResolvableEye](../../../../mathematics/NumberTheory/Farey/ResolvableQuintic.lean/declarations/resolvableeye--a7b7a0cc0dc36cc6ffb4f88b.md) | 132 | `declaration-track:a7b7a0cc0dc36cc6ffb4f88b4c0657c0d08ef77a9176cf9267084d40c526f83e` |
| 18 | `theorem` | [resolvableEye_refine](../../../../mathematics/NumberTheory/Farey/ResolvableQuintic.lean/declarations/resolvableeye-refine--ec8f24c501b4dc7608dd2aee.md) | 136 | `result-track:ec8f24c501b4dc7608dd2aee9804a34ae0027c410d6423cbfa34cd2d9e55f0f9` |
| 19 | `theorem` | [quadratic_mul_cubic_natDegree](../../../../mathematics/NumberTheory/Farey/ResolvableQuintic.lean/declarations/quadratic-mul-cubic-natdegree--180322b8ea04165a1c9ad262.md) | 143 | `result-track:180322b8ea04165a1c9ad262aa418409c23dab7590253139b01b9d56041732ca` |
| 20 | `theorem` | [eval_mul_eq_zero_iff_of_pos](../../../../mathematics/NumberTheory/Farey/ResolvableQuintic.lean/declarations/eval-mul-eq-zero-iff-of-pos--812c8040a53200351abbfb4d.md) | 150 | `result-track:812c8040a53200351abbfb4d2eb7e9ddcbdfd7dfd351e250c69c74a8891f34a8` |
| 21 | `theorem` | [eval_mul_nonpos_iff_of_pos](../../../../mathematics/NumberTheory/Farey/ResolvableQuintic.lean/declarations/eval-mul-nonpos-iff-of-pos--5e9de125b592e5a70829dd74.md) | 156 | `result-track:5e9de125b592e5a70829dd740f9dfdaec530c039eaadd6cc65a99c4378b15c9d` |
| 22 | `theorem` | [eval_mul_nonneg_iff_of_pos](../../../../mathematics/NumberTheory/Farey/ResolvableQuintic.lean/declarations/eval-mul-nonneg-iff-of-pos--c290542c3daf218851a2f3a1.md) | 169 | `result-track:c290542c3daf218851a2f3a1048b78fe6b3a203d40e1353d2820dfd139dcd217` |
| 23 | `theorem` | [polynomialResolves_mul_iff_of_pos_at_endpoints](../../../../mathematics/NumberTheory/Farey/ResolvableQuintic.lean/declarations/polynomialresolves-mul-iff-of-pos-at-endpoints--1bfa7283d12c814038b3486f.md) | 183 | `result-track:1bfa7283d12c814038b3486ff65888cdb09fa1b7e48cb88daae8ee8641b45009` |
| 24 | `theorem` | [resolvableEye_mul_iff_of_pos_at_endpoints](../../../../mathematics/NumberTheory/Farey/ResolvableQuintic.lean/declarations/resolvableeye-mul-iff-of-pos-at-endpoints--9efa2eb6cbb03cd7c0ab60fd.md) | 199 | `result-track:9efa2eb6cbb03cd7c0ab60fd0529062afc8d0ee7d7bbabe3021ff81f8d630926` |
| 25 | `theorem` | [polynomialResolves_mul_iff_of_pos](../../../../mathematics/NumberTheory/Farey/ResolvableQuintic.lean/declarations/polynomialresolves-mul-iff-of-pos--45d2492d1cbff640cdf58198.md) | 207 | `result-track:45d2492d1cbff640cdf5819817474daf326f6e1e36eb1a333f2f0061fd6ba1f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
