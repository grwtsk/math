# Verification target: GRWTSK.Algebra.FiniteType.Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1dda6c9206e6187b9b13d614c8cda4b511f625ee",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/index.md) · [Full source](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1dda6c9206e6187b9b13d614c8cda4b511f625ee`.

Source path: `GRWTSK/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Finiteness` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Adjoin.Tower` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Noetherian` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Algebra.FiniteType](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/declarations/algebra-finitetype--f5face55dbae75e0477d02af.md) | 47 | `declaration-track:f5face55dbae75e0477d02af7873ab1f4cc8fc7e1a38aae998ecbe14df276569` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/declarations/instance--97ebbe981cf26c0ee1dc05e0.md) | 64 | `declaration-track:97ebbe981cf26c0ee1dc05e071edff039776f9512683865fb8735866327c5ece` |
| 3 | `theorem` | [self](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/declarations/self--f0859f0e8f7ad6882adf1acb.md) | 84 | `result-track:f0859f0e8f7ad6882adf1acba432089b4f235ecb50799f93fce23418c33f4a66` |
| 4 | `theorem` | [polynomial](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/declarations/polynomial--780236ed65e729823eb53490.md) | 88 | `result-track:780236ed65e729823eb534904bb2995a5593289996bcd6a7cc227f4f19fae926` |
| 5 | `theorem` | [mvPolynomial](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/declarations/mvpolynomial--9fe97b5f8baf55f96b4f865a.md) | 96 | `result-track:9fe97b5f8baf55f96b4f865aa2f08a98aa71e9d7b38fb2dc2de203d4a224f60f` |
| 6 | `theorem` | [of_restrictScalars_finiteType](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/declarations/of-restrictscalars-finitetype--0652d7efb2e4d916b2bbdf6b.md) | 104 | `result-track:0652d7efb2e4d916b2bbdf6ba36db7a04c5b92a70b82ce3ee44a6793ca7056c1` |
| 7 | `theorem` | [of_surjective](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/declarations/of-surjective--65443e344d7c31f91a78e20e.md) | 117 | `result-track:65443e344d7c31f91a78e20e19de4e61a5c4c2019d8bdcaf621bce57fbeb81bc` |
| 8 | `theorem` | [equiv](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/declarations/equiv--23140af14d319f5eeb4ec734.md) | 123 | `result-track:23140af14d319f5eeb4ec73470e26f7cfbc317232686b01355bff6dd58181c19` |
| 9 | `theorem` | [trans](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/declarations/trans--d8ea8cb22dcca13d9d80bb60.md) | 127 | `result-track:d8ea8cb22dcca13d9d80bb60cac1e6c1e9a027d7439773b68fbe9cbb22f7ed9a` |
| 10 | `theorem` | [iff_quotient_mvPolynomial](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/declarations/iff-quotient-mvpolynomial--b726f11ae89843746497ecbf.md) | 134 | `result-track:b726f11ae89843746497ecbff4b386203f3b2cd9163168cfe9bae1a81655cfe2` |
| 11 | `theorem` | [iff_quotient_mvPolynomial'](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/declarations/iff-quotient-mvpolynomial--9a06fc012d2f8da1bc268b1a.md) | 150 | `result-track:9a06fc012d2f8da1bc268b1a1a531b34249ce54847475a8e5aca20b0170355ce` |
| 12 | `theorem` | [iff_quotient_mvPolynomial''](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/declarations/iff-quotient-mvpolynomial--f83e2c4490a725a42e8d9f8c.md) | 163 | `result-track:f83e2c4490a725a42e8d9f8cf8f2c320a12812a761c25dbfea818e945139c58b` |
| 13 | `instance` | [prod](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/declarations/prod--c6f7fa4b182982a25a72ccc7.md) | 174 | `declaration-track:c6f7fa4b182982a25a72ccc739a282481331d901a5f6231a4363b4f748db7e53` |
| 14 | `theorem` | [isNoetherianRing](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/declarations/isnoetherianring--5181b62674092b278df0b32f.md) | 178 | `result-track:5181b62674092b278df0b32f98292d4150bac5d6de5de590eb11171728e39ee0` |
| 15 | `theorem` | [_root_.GRWTSK.Algebra.AlgebraFiniteType.Variant3aa321580e0e63a2bf79e0b5545a209b95d7178ddea1add37569c6710bdb3581.Subalgebra.fg_iff_finiteType](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/declarations/root-grwtsk-algebra-algebrafinitetype-variant3aa321580e0e63a2bf79e0b5545--6206f3dc5d6e386d371db743.md) | 189 | `result-track:6206f3dc5d6e386d371db74330575cf6a6831e4ac33d982f956fe88ace79157b` |
| 16 | `def` | [FiniteType](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/declarations/finitetype--c660c98f7cb4fc294557e5f4.md) | 204 | `declaration-track:c660c98f7cb4fc294557e5f4b709c25094e5c7d3b54b92ae6b06f0005fd498e8` |
| 17 | `theorem` | [finiteType](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/declarations/finitetype--fe767fe00326227b7dc9cbe0.md) | 210 | `result-track:fe767fe00326227b7dc9cbe03d516600ec528c803d6405a5807014337e2838bf` |
| 18 | `theorem` | [id](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/declarations/id--2a6603a46c5bf19f4181ead8.md) | 220 | `result-track:2a6603a46c5bf19f4181ead8a45a21ca1da261a3ea1081dce518ccf00565ede2` |
| 19 | `theorem` | [comp_surjective](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/declarations/comp-surjective--87b78e7f9c7b3cf71b306ab2.md) | 226 | `result-track:87b78e7f9c7b3cf71b306ab218b0db3cbf6436245d3fc748d8e6fb887dd5c3a1` |
| 20 | `theorem` | [of_surjective](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/declarations/of-surjective--c0657a356862e594855767d0.md) | 237 | `result-track:c0657a356862e594855767d07131492e22c623e8a01a29a9badd79d76446728b` |
| 21 | `theorem` | [comp](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/declarations/comp--c7928163c000839fbed8976d.md) | 242 | `result-track:c7928163c000839fbed8976da55c6cf5629bec4dcebf3d674b7d63802f031623` |
| 22 | `theorem` | [of_finite](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/declarations/of-finite--13a2975185d12763ecc33448.md) | 255 | `result-track:13a2975185d12763ecc33448073eb14118f009b304f790a34c885d2939f652d8` |
| 23 | `theorem` | [of_comp_finiteType](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/declarations/of-comp-finitetype--0d969ce132856914cb44520a.md) | 262 | `result-track:0d969ce132856914cb44520af29773ce5fa198b2db7d127277c99604b8311d5e` |
| 24 | `def` | [FiniteType](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/declarations/finitetype--3e4c2d99d9b4c29b9c7b42e8.md) | 286 | `declaration-track:3e4c2d99d9b4c29b9c7b42e83afccccc5d686c8695ba8dcaf1963a7de5bfc9f3` |
| 25 | `theorem` | [finiteType](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/declarations/finitetype--2fad02c390a5fe5aa750854f.md) | 292 | `result-track:2fad02c390a5fe5aa750854f1ec8fc2a5e860fad8818f78c7853a33a8c4b7a96` |
| 26 | `theorem` | [id](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/declarations/id--2fbfb3abe52fc343d887b52e.md) | 302 | `result-track:2fbfb3abe52fc343d887b52e0533460ce06552887fe378429cbcf690bc027a49` |
| 27 | `theorem` | [comp](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/declarations/comp--16235dcd096c5e34104fb43b.md) | 308 | `result-track:16235dcd096c5e34104fb43b91274a94ba60a284253d87bdfb4f724e61411a46` |
| 28 | `theorem` | [comp_surjective](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/declarations/comp-surjective--73993c4dc9c0288f3eb9c038.md) | 313 | `result-track:73993c4dc9c0288f3eb9c038e67994a1f264bdf57b325fb99049d1377051cd4d` |
| 29 | `theorem` | [of_surjective](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/declarations/of-surjective--d509edd726cf9d88cd3b63a9.md) | 318 | `result-track:d509edd726cf9d88cd3b63a987738a2927295b380c3bdc31165f60c6e99a1ac3` |
| 30 | `theorem` | [of_comp_finiteType](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/declarations/of-comp-finitetype--d50de821f94fed1e50098bd2.md) | 322 | `result-track:d50de821f94fed1e50098bd2dfd1aad3d6a469a8f4e2d3c4aa10ca574503e883` |
| 31 | `theorem` | [mem_adjoin_support](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/declarations/mem-adjoin-support--78c2940bfd421f27ad6b72e7.md) | 346 | `result-track:78c2940bfd421f27ad6b72e7c3750aac5db844190621eddcff1818f20a67a226` |
| 32 | `theorem` | [support_gen_of_gen](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/declarations/support-gen-of-gen--f72454ec0ea9b472d3274197.md) | 356 | `result-track:f72454ec0ea9b472d32741974f240497efae4d58b54b9bd3727fa22cdb76cd87` |
| 33 | `theorem` | [support_gen_of_gen'](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/declarations/support-gen-of-gen--3bf0bcfd509fc4b845a09df4.md) | 370 | `result-track:3bf0bcfd509fc4b845a09df4a33254ff35fb674a979c62ffe55b9c7e67edbf0f` |
| 34 | `theorem` | [exists_finset_adjoin_eq_top](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/declarations/exists-finset-adjoin-eq-top--103dc03b0dfbc79d02cc7e81.md) | 386 | `result-track:103dc03b0dfbc79d02cc7e811192ad150d0353b4d92a7ce890e3f34fca42e194` |
| 35 | `theorem` | [of'_mem_span](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/declarations/of-mem-span--8932280dddef05188912b7b8.md) | 399 | `result-track:8932280dddef05188912b7b8f060af782526665265dfdced9a01131fc58260e0` |
| 36 | `theorem` | [mem_closure_of_mem_span_closure](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/declarations/mem-closure-of-mem-span-closure--4304ba3ab9034189b4f4f21c.md) | 410 | `result-track:4304ba3ab9034189b4f4f21cca99792416a2db7dd7cb0ff5c95db4440bd9cab3` |
| 37 | `theorem` | [mvPolynomial_aeval_of_surjective_of_closure](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/declarations/mvpolynomial-aeval-of-surjective-of-closure--295baf9994be57354c7287c7.md) | 430 | `result-track:295baf9994be57354c7287c71acf2b84a09d7b7d066b6c2db93be3d3c2db4060` |
| 38 | `instance` | [finiteType_of_fg](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/declarations/finitetype-of-fg--15b0e82e5b46a79ecdae19be.md) | 456 | `declaration-track:15b0e82e5b46a79ecdae19be3851d592d19e5d3bf33dcd06c31398442cbec7d3` |
| 39 | `theorem` | [finiteType_iff_fg](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/declarations/finitetype-iff-fg--b97311890bf2065340a0c68f.md) | 468 | `result-track:b97311890bf2065340a0c68f233de2ad808306d44cb6d3e03adc606f836ebb85` |
| 40 | `theorem` | [fg_of_finiteType](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/declarations/fg-of-finitetype--ba521ca2d5980c641a3f89da.md) | 480 | `result-track:ba521ca2d5980c641a3f89dad8a4ccab9bb5819323f744b536b37ab3415f6164` |
| 41 | `theorem` | [finiteType_iff_group_fg](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/declarations/finitetype-iff-group-fg--56c19e05c961198336f26477.md) | 487 | `result-track:56c19e05c961198336f26477ae229bdd74e779df56464738179dc66bb394609d` |
| 42 | `theorem` | [mem_adjoin_support](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/declarations/mem-adjoin-support--d4aae1aed24612d5bd5282df.md) | 505 | `result-track:d4aae1aed24612d5bd5282dfa967fba70b38b1d1baa5bec3ae3ec1f08551f0b0` |
| 43 | `theorem` | [support_gen_of_gen](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/declarations/support-gen-of-gen--75aa4484836b07a43f489ddb.md) | 514 | `result-track:75aa4484836b07a43f489ddbe639097f0205f61f3c308322ef644a1915913d58` |
| 44 | `theorem` | [support_gen_of_gen'](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/declarations/support-gen-of-gen--7e5ff29c7b914f6a429cb732.md) | 531 | `result-track:7e5ff29c7b914f6a429cb73250fe05021b2bf902801ae4a89265caa3db59837e` |
| 45 | `theorem` | [exists_finset_adjoin_eq_top](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/declarations/exists-finset-adjoin-eq-top--17c29aaddaf333f2176350b9.md) | 547 | `result-track:17c29aaddaf333f2176350b9d7f6e429c083077f57d6b9fa327d5c961fd29d08` |
| 46 | `theorem` | [of_mem_span_of_iff](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/declarations/of-mem-span-of-iff--9bcdcab10753d61321f1a68b.md) | 560 | `result-track:9bcdcab10753d61321f1a68ba8a7135e1f6189eba666c4d6a16cc8cf768bc14f` |
| 47 | `theorem` | [mem_closure_of_mem_span_closure](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/declarations/mem-closure-of-mem-span-closure--94a592deb0e43bdaf5725ffb.md) | 571 | `result-track:94a592deb0e43bdaf5725ffb5faf9d83e3af3a0376abe02342f71634b1325235` |
| 48 | `theorem` | [mvPolynomial_aeval_of_surjective_of_closure](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/declarations/mvpolynomial-aeval-of-surjective-of-closure--0c38c3563d39c8429ef4ec7f.md) | 586 | `result-track:0c38c3563d39c8429ef4ec7f296bdd8bf1e6ba6f2ed890ee536bc5860ba8e07e` |
| 49 | `instance` | [finiteType_of_fg](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/declarations/finitetype-of-fg--d3912aad2fb0f735a63e27ff.md) | 607 | `declaration-track:d3912aad2fb0f735a63e27ff2f3a54b910cef114385df142c69aaf820e8b24a1` |
| 50 | `theorem` | [finiteType_iff_fg](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/declarations/finitetype-iff-fg--61056a781ae2ad2129c5b867.md) | 612 | `result-track:61056a781ae2ad2129c5b867422833fb7f814a6f4a2da6ca0b069d2bcb9386d3` |
| 51 | `theorem` | [fg_of_finiteType](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/declarations/fg-of-finitetype--e52c53f3276dafe3d4109e12.md) | 621 | `result-track:e52c53f3276dafe3d4109e123b110431d22c3ab1a193117a448f91515b22fd1c` |
| 52 | `theorem` | [finiteType_iff_group_fg](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/declarations/finitetype-iff-group-fg--3097b260adb4a5c4a54e11a4.md) | 627 | `result-track:3097b260adb4a5c4a54e11a4c2866ec93ebfa4e5e21d2ddedea624f00c941501` |
| 53 | `def` | [modulePolynomialOfEndo](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/declarations/modulepolynomialofendo--bc970dac0ef14a73563d0bec.md) | 644 | `declaration-track:bc970dac0ef14a73563d0bec3831b4558f49e0e4dad2b467704a9b18dd3b1729` |
| 54 | `theorem` | [modulePolynomialOfEndo_smul_def](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/declarations/modulepolynomialofendo-smul-def--09f357f5a68d1594f17bee40.md) | 648 | `result-track:09f357f5a68d1594f17bee4023cd4caad0b4a990609c6e0522f9a7116f5843d4` |
| 55 | `theorem` | [modulePolynomialOfEndo.isScalarTower](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/declarations/modulepolynomialofendo-isscalartower--1a1c1a444dbaec4bf1562c26.md) | 656 | `result-track:1a1c1a444dbaec4bf1562c26d2bb7b2feb50d930ca5dc5ecf0c2910b245d4620` |
| 56 | `theorem` | [Module.Finite.injective_of_surjective_endomorphism](../../../../mathematics/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/declarations/module-finite-injective-of-surjective-endomorphism--0e54245ab32f40eabb2835e7.md) | 676 | `result-track:0e54245ab32f40eabb2835e727c528326a7ea39e3658b346027154b396339022` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
