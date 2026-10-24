# Verification target: GRWTSK.Algebra.UniversalAlgebra.Basic.Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1863a5255808e28c97c8a7f3a19f797a7d3d9d93",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1863a5255808e28c97c8a7f3a19f797a7d3d9d93`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Pointwise.CompleteLattice` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.LeastGreatest` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instArchimedean](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/instarchimedean--0ba04950f9f3e3e2c0760fa8.md) | 31 | `declaration-track:0ba04950f9f3e3e2c0760fa8bfca2f6b69d0515c1fcb759b9e26fcbe73e49bec` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/instance--cf6aa51232a714e734abb5d8.md) | 37 | `declaration-track:cf6aa51232a714e734abb5d83d7112d2524db5090265ba54c33f2b5c37c41069` |
| 3 | `theorem` | [isCauSeq_iff_lift](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/iscauseq-iff-lift--8cc9a098454099c7bb555fe4.md) | 40 | `result-track:8cc9a098454099c7bb555fe489f2b787aacfed0955745654cf2386d605d622f3` |
| 4 | `theorem` | [of_near](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/of-near--e31ee636be1e6b69f6f62f75.md) | 47 | `result-track:e31ee636be1e6b69f6f62f7533579416e7b7b61775bada5873b8892c1f972c8f` |
| 5 | `theorem` | [exists_isLUB](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/exists-islub--19d5045f79c70d95a18d10d9.md) | 55 | `result-track:19d5045f79c70d95a18d10d90f345ba1ae2245e6fe204dead19ad894f0ec4741` |
| 6 | `theorem` | [exists_isGLB](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/exists-isglb--3c49fa038155694d65c95785.md) | 107 | `result-track:3c49fa038155694d65c957853b34fdbb78a74b9100c4a1452f1dd042901dfcf1` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/instance--3569e85355ce6996f324b7bf.md) | 115 | `declaration-track:3569e85355ce6996f324b7bfb9126f49631b1107b71f2d51251b7cf0a8a57337` |
| 8 | `theorem` | [sSup_def](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/ssup-def--576b61e53f70ee6cf06748d0.md) | 119 | `result-track:576b61e53f70ee6cf06748d09aab2ba1a4588b177c9e211298c77d08003ab693` |
| 9 | `theorem` | [isLUB_sSup](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/islub-ssup--1e982e1730e4e5c03403cd4c.md) | 123 | `result-track:1e982e1730e4e5c03403cd4ca75075da1a369ad7c0f00b12787abbb3051bf2d8` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/instance--57291672f29544b8179abfaf.md) | 127 | `declaration-track:57291672f29544b8179abfafc213616c5966f22de04cccdec567d1a77955a3b7` |
| 11 | `theorem` | [sInf_def](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/sinf-def--223c19b62eb72e1ab6eb8061.md) | 130 | `result-track:223c19b62eb72e1ab6eb80614c0ad342c86bde5f144e90f0102879d1b48f98c8` |
| 12 | `theorem` | [isGLB_sInf](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/isglb-sinf--f9f1f3be4dae74279fa6d6b3.md) | 132 | `result-track:f9f1f3be4dae74279fa6d6b33ce4344cde460fc197ecd14bd87665cceb8e0251` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/instance--9f6d0fe76eef386b748b7b1b.md) | 136 | `declaration-track:9f6d0fe76eef386b748b7b1b8a7d4a016bc80ff29b58f8cb798fd6149b686958` |
| 14 | `theorem` | [lt_sInf_add_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/lt-sinf-add-pos--cd1d9407feabac5b2745324e.md) | 144 | `result-track:cd1d9407feabac5b2745324e8f1d40d16714f986ac1189fd2765a617ea39b7ff` |
| 15 | `theorem` | [add_neg_lt_sSup](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/add-neg-lt-ssup--6c3123de6bb1d9cb33affe4a.md) | 148 | `result-track:6c3123de6bb1d9cb33affe4a9d0556c0b96bfa3f7db9ce35233e4bd06db1a440` |
| 16 | `theorem` | [sInf_le_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/sinf-le-iff--d1092981933633fc0b53aa1e.md) | 151 | `result-track:d1092981933633fc0b53aa1ea9b4d9cd85ee5f6a2e4368bb6af828cd4f23d794` |
| 17 | `theorem` | [le_sSup_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/le-ssup-iff--61321945bcc9cf04654f0ecf.md) | 159 | `result-track:61321945bcc9cf04654f0ecffcbfe30e5e7f21f90faa3bf7856c4b20f4078d93` |
| 18 | `theorem` | [sSup_empty](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/ssup-empty--e78918213350f8ea9ddef0de.md) | 168 | `result-track:e78918213350f8ea9ddef0de1c0c947965c9453240727745ad2018e887d12b7b` |
| 19 | `theorem` | [sInf_univ](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/sinf-univ--9ca723f5b2d8daea7e5e202e.md) | 171 | `result-track:9ca723f5b2d8daea7e5e202e7a9397ad93b8ae7b3c0bcf99fa9998c8043e2d79` |
| 20 | `lemma` | [iSup_of_isEmpty](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/isup-of-isempty--eb9204ec6b491bafda5b3c8b.md) | 174 | `result-track:eb9204ec6b491bafda5b3c8b701ade7938b5d8b617f80ff18164c236a68d22dc` |
| 21 | `theorem` | [iSup_const_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/isup-const-zero--74d7e2690fc8f7ef85589f3c.md) | 178 | `result-track:74d7e2690fc8f7ef85589f3c19da7c9fbe01fe6f230dbea7a2b013a5f755aaa9` |
| 22 | `lemma` | [sSup_of_not_bddAbove](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/ssup-of-not-bddabove--4d1c8ef0a5f0989f478f83bb.md) | 183 | `result-track:4d1c8ef0a5f0989f478f83bb2b2fbd577132f24623c14c9d0c35a5987e292ddf` |
| 23 | `lemma` | [iSup_of_not_bddAbove](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/isup-of-not-bddabove--b8b71560a06ac06446757325.md) | 184 | `result-track:b8b71560a06ac06446757325f22ecb9d6056f8df2dc7eca50ca45788acd29209` |
| 24 | `theorem` | [sSup_univ](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/ssup-univ--88a1537d8a820b53fd579e71.md) | 186 | `result-track:88a1537d8a820b53fd579e7197e231e04a8e9d355fdbfb65faea2e58bb10b3a1` |
| 25 | `theorem` | [sInf_empty](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/sinf-empty--870d7700d02885326464b1f1.md) | 189 | `result-track:870d7700d02885326464b1f1d0db0b41d5cad0f81fe52dce810553bb02117c72` |
| 26 | `lemma` | [iInf_of_isEmpty](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/iinf-of-isempty--1c669649dfbccfd97e752741.md) | 191 | `result-track:1c669649dfbccfd97e7527419088049bdec1a6f3e31378feb1b22aa6bdff820d` |
| 27 | `theorem` | [iInf_const_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/iinf-const-zero--d702d22905681060de4a30a5.md) | 195 | `result-track:d702d22905681060de4a30a53ec1b7c9a3edbaca29ca5aac7b28adc1404307ee` |
| 28 | `theorem` | [sInf_of_not_bddBelow](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/sinf-of-not-bddbelow--1dc2d32d198cca5ed8ca638b.md) | 200 | `result-track:1dc2d32d198cca5ed8ca638b44a7e284fe13c4bda3803b6a9e1318993b225132` |
| 29 | `theorem` | [iInf_of_not_bddBelow](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/iinf-of-not-bddbelow--0aafe8e0136c8b72ac735d47.md) | 203 | `result-track:0aafe8e0136c8b72ac735d478a6e57105ac055b96603ac07292cb7f9d3b38fbc` |
| 30 | `theorem` | [sSup_neg](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/ssup-neg--078a7b6cef519dcb2c69ba13.md) | 207 | `result-track:078a7b6cef519dcb2c69ba13eeb2a8cbdf42cfd0aac585c13526e94812104d70` |
| 31 | `theorem` | [sInf_neg](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/sinf-neg--9db8515ad90079dee135852d.md) | 215 | `result-track:9db8515ad90079dee135852d1562e8047e3428a409234b09bb2199f11c5cda5c` |
| 32 | `lemma` | [sSup_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/ssup-le--8df83c20ffbd00d54ffeb2d9.md) | 222 | `result-track:8df83c20ffbd00d54ffeb2d960dd7fe8d41f13a741bc30582dca8d93e744d2b4` |
| 33 | `lemma` | [iSup_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/isup-le--965be57aa99ac6b177ecc204.md) | 230 | `result-track:965be57aa99ac6b177ecc2046a19412cffe10e17e587362a62d3bb64c2c98d36` |
| 34 | `lemma` | [le_sInf](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/le-sinf--09e94c88f7e741567e73df6f.md) | 237 | `result-track:09e94c88f7e741567e73df6f76d3b2467b9d1007258c35698b114921fbe51d42` |
| 35 | `lemma` | [le_iInf](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/le-iinf--7fa4d2ddc1638d9e1c041713.md) | 245 | `result-track:7fa4d2ddc1638d9e1c041713e95599ea258a38c0ee8770817e2d3fd87583dd7e` |
| 36 | `lemma` | [sSup_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/ssup-nonpos--0259a45a805b28d8d66e9673.md) | 250 | `result-track:0259a45a805b28d8d66e9673daf3a29b3b2908ba0ab0aa87b5d397259fb66b62` |
| 37 | `lemma` | [iSup_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/isup-nonpos--1dffcd33a5142efb73552266.md) | 254 | `result-track:1dffcd33a5142efb735522665802ec0604945314dcc9ed7a39499499645d6093` |
| 38 | `lemma` | [sInf_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/sinf-nonneg--4df5caca98ec5501562aed49.md) | 258 | `result-track:4df5caca98ec5501562aed49ffe18051fd756007ae3c0febec12946ce37f154b` |
| 39 | `lemma` | [iInf_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/iinf-nonneg--c0870f8d054e22923c07f59e.md) | 262 | `result-track:c0870f8d054e22923c07f59e064eabd47dfc0298c5a68f66cf46b266ee78041a` |
| 40 | `lemma` | [sSup_nonneg'](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/ssup-nonneg--59675c39c7a4a78a6c137fcd.md) | 266 | `result-track:59675c39c7a4a78a6c137fcd5b53a738b0660ab491c7362ddcc66ff8202b4ec6` |
| 41 | `lemma` | [iSup_nonneg'](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/isup-nonneg--b2e0463ace151ee028233cb6.md) | 273 | `result-track:b2e0463ace151ee028233cb6db9ee186bd9f66601a7499de53bd7e9bc4083c4a` |
| 42 | `lemma` | [sInf_nonpos'](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/sinf-nonpos--a6e3b5ab798180bfe68fb7c2.md) | 277 | `result-track:a6e3b5ab798180bfe68fb7c2f47b4a94c1af822d01be730b91078f66dd28f146` |
| 43 | `lemma` | [iInf_nonpos'](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/iinf-nonpos--cce676b273e6af8b6bd6abed.md) | 284 | `result-track:cce676b273e6af8b6bd6abed9537d7fdd01582275db10f5b9437e22da5d7bebb` |
| 44 | `lemma` | [sSup_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/ssup-nonneg--1a042a82bfc17f26cb571c6d.md) | 288 | `result-track:1a042a82bfc17f26cb571c6d4de5d1cb74a18dedacb295ccd658f4124abd8743` |
| 45 | `lemma` | [iSup_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/isup-nonneg--729bbfee814b553afb9180b1.md) | 295 | `result-track:729bbfee814b553afb9180b1e8039ebc36b87a78109b8c75011935dd84637f13` |
| 46 | `lemma` | [iSup_nonneg_of_nonnegHomClass](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/isup-nonneg-of-nonneghomclass--e5ee46a86c6bc48ead9b2079.md) | 297 | `result-track:e5ee46a86c6bc48ead9b2079aaa50a501d73ef60b37d1529a785dbaa721f9813` |
| 47 | `lemma` | [sInf_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/sinf-nonpos--8ff91d4af9d0076a4e039544.md) | 304 | `result-track:8ff91d4af9d0076a4e039544550bb25e46cf69e853fa869b93f4b467e53afbde` |
| 48 | `lemma` | [iInf_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/iinf-nonpos--880d746bee20525875d5d835.md) | 311 | `result-track:880d746bee20525875d5d8354644041ac17825e3bba7790cf9578087f8d4bd58` |
| 49 | `theorem` | [sInf_le_sSup](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/sinf-le-ssup--5cde132e05f4b3756dec9f8e.md) | 313 | `result-track:5cde132e05f4b3756dec9f8e7f1e8234afe2f31e3aec5d4c1c7062c0460c5c1f` |
| 50 | `theorem` | [cauSeq_converges](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/causeq-converges--cbd6a5b783c1fb363c9d5a31.md) | 318 | `result-track:cbd6a5b783c1fb363c9d5a318f2bb3df69853563be7dcdecb4378dd7706b1cd1` |
| 51 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/instance--81f7ed589d0830d3a0db42bb.md) | 336 | `declaration-track:81f7ed589d0830d3a0db42bb0693dde2234315bfd4af65f4e6e6cceead785c71` |
| 52 | `theorem` | [iInf_Ioi_eq_iInf_rat_gt](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/iinf-ioi-eq-iinf-rat-gt--f92fb9d66414318be184d796.md) | 341 | `result-track:f92fb9d66414318be184d7968804917362a96a8cbf663812850f0677a990c318` |
| 53 | `theorem` | [not_bddAbove_coe](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/not-bddabove-coe--b19a296cb10a23c0ffd416a9.md) | 364 | `result-track:b19a296cb10a23c0ffd416a98857e20d58613e98da5b574e18bc7c6a0bf84b7b` |
| 54 | `theorem` | [not_bddBelow_coe](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/not-bddbelow-coe--9a326ed03b0e5cf7737887c6.md) | 370 | `result-track:9a326ed03b0e5cf7737887c6e4b05f97747f7e2a478c460b51ec1d2670b3d360` |
| 55 | `theorem` | [iUnion_Iic_rat](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/iunion-iic-rat--a6c699799111581d2a68b96d.md) | 376 | `result-track:a6c699799111581d2a68b96d13588b6c132a76791eab77a4fbe30c6fe45b7033` |
| 56 | `theorem` | [iInter_Iic_rat](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/iinter-iic-rat--100a89decffdb69603177643.md) | 379 | `result-track:100a89decffdb6960317764331824cd8cf38153cc003e7a1a8cdcc8b358b1c22` |
| 57 | `lemma` | [exists_natCast_add_one_lt_pow_of_one_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/exists-natcast-add-one-lt-pow-of-one-lt--3f6a0ec28d91d9fc53622b7e.md) | 383 | `result-track:3f6a0ec28d91d9fc53622b7eb98fa05a29bed0a29a536312fe9d62fd9ade1ad9` |
| 58 | `lemma` | [exists_nat_pos_inv_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c03e3aecbfa3739e79ae8ebfd33b6100781d4c90e6475677cdcff4487e972d1.lean/declarations/exists-nat-pos-inv-lt--4f0443969b25dcd70e1370e2.md) | 403 | `result-track:4f0443969b25dcd70e1370e21435004cea4e05104087521e3d725fb9d0285b03` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
