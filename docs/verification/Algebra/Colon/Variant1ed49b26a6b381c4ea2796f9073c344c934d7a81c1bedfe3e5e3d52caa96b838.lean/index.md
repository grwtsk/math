# Verification target: GRWTSK.Algebra.Colon.Variant1ed49b26a6b381c4ea2796f9073c344c934d7a81c1bedfe3e5e3d52caa96b838

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "157dcdefd86227e61c3487e7ae6d8b4c0deda48e",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Colon/Variant1ed49b26a6b381c4ea2796f9073c344c934d7a81c1bedfe3e5e3d52caa96b838.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Colon/Variant1ed49b26a6b381c4ea2796f9073c344c934d7a81c1bedfe3e5e3d52caa96b838.lean/index.md) · [Full source](../../../../mathematics/Algebra/Colon/Variant1ed49b26a6b381c4ea2796f9073c344c934d7a81c1bedfe3e5e3d52caa96b838.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `157dcdefd86227e61c3487e7ae6d8b4c0deda48e`.

Source path: `GRWTSK/Algebra/Colon/Variant1ed49b26a6b381c4ea2796f9073c344c934d7a81c1bedfe3e5e3d52caa96b838.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Colon/Variant1ed49b26a6b381c4ea2796f9073c344c934d7a81c1bedfe3e5e3d52caa96b838.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Action.Pointwise.Set` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Quotient.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Maps` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [colon](../../../../mathematics/Algebra/Colon/Variant1ed49b26a6b381c4ea2796f9073c344c934d7a81c1bedfe3e5e3d52caa96b838.lean/declarations/colon--c410bd9d01eb0deec706b37d.md) | 38 | `declaration-track:c410bd9d01eb0deec706b37da3fa5a3471300d7dfaf8e4cf528107687081b6c7` |
| 2 | `theorem` | [mem_colon](../../../../mathematics/Algebra/Colon/Variant1ed49b26a6b381c4ea2796f9073c344c934d7a81c1bedfe3e5e3d52caa96b838.lean/declarations/mem-colon--0ad486a3b372e4ecd2088be3.md) | 48 | `result-track:0ad486a3b372e4ecd2088be3b7b430412399521d815aa4e27cb3e2b2641f51c5` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Colon/Variant1ed49b26a6b381c4ea2796f9073c344c934d7a81c1bedfe3e5e3d52caa96b838.lean/declarations/instance--7c4984a46f3abea434d7e540.md) | 50 | `declaration-track:7c4984a46f3abea434d7e5406a4c86666ada5712cc60978ed1ad9dec49d630e0` |
| 4 | `theorem` | [colon_top](../../../../mathematics/Algebra/Colon/Variant1ed49b26a6b381c4ea2796f9073c344c934d7a81c1bedfe3e5e3d52caa96b838.lean/declarations/colon-top--5a4dca056074be806e11ffdd.md) | 56 | `result-track:5a4dca056074be806e11ffdd1f8e20587bef8b1882eca0b8ce31434a7d0c4ae1` |
| 5 | `theorem` | [colon_bot](../../../../mathematics/Algebra/Colon/Variant1ed49b26a6b381c4ea2796f9073c344c934d7a81c1bedfe3e5e3d52caa96b838.lean/declarations/colon-bot--a2e67f5f6d9665b91204fd86.md) | 61 | `result-track:a2e67f5f6d9665b91204fd8603d35e5d2a994cda0e79a3708c8b02df6905fc79` |
| 6 | `theorem` | [colon_mono](../../../../mathematics/Algebra/Colon/Variant1ed49b26a6b381c4ea2796f9073c344c934d7a81c1bedfe3e5e3d52caa96b838.lean/declarations/colon-mono--62c9bdba7e83cbc44f5fdf8c.md) | 64 | `result-track:62c9bdba7e83cbc44f5fdf8cfb2401dc7dde57d32b9d9d7c6e50233bbcb0393d` |
| 7 | `theorem` | [mem_colon'](../../../../mathematics/Algebra/Colon/Variant1ed49b26a6b381c4ea2796f9073c344c934d7a81c1bedfe3e5e3d52caa96b838.lean/declarations/mem-colon--dd544629cee81c81b2f2e648.md) | 76 | `result-track:dd544629cee81c81b2f2e648498b2d205b6c010f20c0d921ca9f1502ab63ed71` |
| 8 | `theorem` | [iInf_colon_iSup](../../../../mathematics/Algebra/Colon/Variant1ed49b26a6b381c4ea2796f9073c344c934d7a81c1bedfe3e5e3d52caa96b838.lean/declarations/iinf-colon-isup--15035d178ce6d20a79faed7b.md) | 79 | `result-track:15035d178ce6d20a79faed7b3b499037312546b3fd7397219270f15a0c05e274` |
| 9 | `theorem` | [mem_colon_singleton](../../../../mathematics/Algebra/Colon/Variant1ed49b26a6b381c4ea2796f9073c344c934d7a81c1bedfe3e5e3d52caa96b838.lean/declarations/mem-colon-singleton--c445196758f223e223665e76.md) | 93 | `result-track:c445196758f223e223665e7674f6ecce10cf1ef7e35e6068b7d9053010a6f090` |
| 10 | `theorem` | [_root_.GRWTSK.Algebra.Colon.Variant45f92612c9a44fac14c37de302a5734726a14b1d5b413415e9d7192450459354.Ideal.mem_colon_singleton](../../../../mathematics/Algebra/Colon/Variant1ed49b26a6b381c4ea2796f9073c344c934d7a81c1bedfe3e5e3d52caa96b838.lean/declarations/root-grwtsk-algebra-colon-variant45f92612c9a44fac14c37de302a5734726a14b1--922d81f29a1d38a0409232b6.md) | 101 | `result-track:922d81f29a1d38a0409232b6468b8d57687c2877e8a145b6062af8a5c0c580e4` |
| 11 | `lemma` | [annihilator_map_mkQ_eq_colon](../../../../mathematics/Algebra/Colon/Variant1ed49b26a6b381c4ea2796f9073c344c934d7a81c1bedfe3e5e3d52caa96b838.lean/declarations/annihilator-map-mkq-eq-colon--2abf9a720b82dcb4a454a820.md) | 113 | `result-track:2abf9a720b82dcb4a454a820b54de95e3c8fb288c7b39f4a7faa6dcdcaf3b716` |
| 12 | `theorem` | [annihilator_quotient](../../../../mathematics/Algebra/Colon/Variant1ed49b26a6b381c4ea2796f9073c344c934d7a81c1bedfe3e5e3d52caa96b838.lean/declarations/annihilator-quotient--96d71d4586c4cf387cfff070.md) | 119 | `result-track:96d71d4586c4cf387cfff07085f46701cfb7389ec47ff52ba73c4b9beb5427c3` |
| 13 | `theorem` | [_root_.GRWTSK.Algebra.Colon.Variant45f92612c9a44fac14c37de302a5734726a14b1d5b413415e9d7192450459354.Ideal.annihilator_quotient](../../../../mathematics/Algebra/Colon/Variant1ed49b26a6b381c4ea2796f9073c344c934d7a81c1bedfe3e5e3d52caa96b838.lean/declarations/root-grwtsk-algebra-colon-variant45f92612c9a44fac14c37de302a5734726a14b1--ac4e0d879cab97a727907f06.md) | 125 | `result-track:ac4e0d879cab97a727907f067e2336e2f05fcb2b15496def74e65f03600a1299` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
