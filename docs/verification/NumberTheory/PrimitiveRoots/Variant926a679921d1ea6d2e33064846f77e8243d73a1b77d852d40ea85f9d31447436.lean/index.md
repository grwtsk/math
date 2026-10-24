# Verification target: GRWTSK.NumberTheory.PrimitiveRoots.Variant926a679921d1ea6d2e33064846f77e8243d73a1b77d852d40ea85f9d31447436

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd476bc7d52c740056c02129b6f1bb179acf61a2",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/PrimitiveRoots/Variant926a679921d1ea6d2e33064846f77e8243d73a1b77d852d40ea85f9d31447436.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/PrimitiveRoots/Variant926a679921d1ea6d2e33064846f77e8243d73a1b77d852d40ea85f9d31447436.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/PrimitiveRoots/Variant926a679921d1ea6d2e33064846f77e8243d73a1b77d852d40ea85f9d31447436.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd476bc7d52c740056c02129b6f1bb179acf61a2`.

Source path: `GRWTSK/NumberTheory/PrimitiveRoots/Variant926a679921d1ea6d2e33064846f77e8243d73a1b77d852d40ea85f9d31447436.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/PrimitiveRoots/Variant926a679921d1ea6d2e33064846f77e8243d73a1b77d852d40ea85f9d31447436.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.PNat.Prime` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Cyclotomic.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Adjoin.PowerBasis` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Norm.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Cyclotomic.Eval` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Cyclotomic.Expand` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.SimpleModule.Basic` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zeta](../../../../mathematics/NumberTheory/PrimitiveRoots/Variant926a679921d1ea6d2e33064846f77e8243d73a1b77d852d40ea85f9d31447436.lean/declarations/zeta--39107a4b7d5294df700b7f83.md) | 88 | `declaration-track:39107a4b7d5294df700b7f837972e04d332c9a529efb6f9c976aa641e16a18d8` |
| 2 | `theorem` | [zeta_spec](../../../../mathematics/NumberTheory/PrimitiveRoots/Variant926a679921d1ea6d2e33064846f77e8243d73a1b77d852d40ea85f9d31447436.lean/declarations/zeta-spec--d75ddb90aeab7bc253914e9d.md) | 93 | `result-track:d75ddb90aeab7bc253914e9d082d92e5a875fb177552e3a6e1edf734ce9d1484` |
| 3 | `theorem` | [aeval_zeta](../../../../mathematics/NumberTheory/PrimitiveRoots/Variant926a679921d1ea6d2e33064846f77e8243d73a1b77d852d40ea85f9d31447436.lean/declarations/aeval-zeta--b937648311e064857f4e8871.md) | 96 | `result-track:b937648311e064857f4e887118a6efca59772523a1c8ed1efd1ad1ed21aa1f0d` |
| 4 | `theorem` | [zeta_isRoot](../../../../mathematics/NumberTheory/PrimitiveRoots/Variant926a679921d1ea6d2e33064846f77e8243d73a1b77d852d40ea85f9d31447436.lean/declarations/zeta-isroot--9f797171c2d2fc486e1fb0d2.md) | 101 | `result-track:9f797171c2d2fc486e1fb0d2ef32ee0f2a4da9480303f700a8789db4783f15b4` |
| 5 | `theorem` | [zeta_pow](../../../../mathematics/NumberTheory/PrimitiveRoots/Variant926a679921d1ea6d2e33064846f77e8243d73a1b77d852d40ea85f9d31447436.lean/declarations/zeta-pow--d711d18d1343e6c36077ea79.md) | 105 | `result-track:d711d18d1343e6c36077ea79e5474ab5a914635c39a0a632b3167fdf59247388` |
| 6 | `def` | [powerBasis](../../../../mathematics/NumberTheory/PrimitiveRoots/Variant926a679921d1ea6d2e33064846f77e8243d73a1b77d852d40ea85f9d31447436.lean/declarations/powerbasis--b40454e5fd779716f5da430a.md) | 123 | `declaration-track:b40454e5fd779716f5da430a93709c9de8f7c3de0c0e54ed826371afe24de788` |
| 7 | `theorem` | [powerBasis_gen_mem_adjoin_zeta_sub_one](../../../../mathematics/NumberTheory/PrimitiveRoots/Variant926a679921d1ea6d2e33064846f77e8243d73a1b77d852d40ea85f9d31447436.lean/declarations/powerbasis-gen-mem-adjoin-zeta-sub-one--28fe5683c64690d70e994fb0.md) | 129 | `result-track:28fe5683c64690d70e994fb0c580141ded9e0fb91e7cf2505f1fd77ce9743d04` |
| 8 | `def` | [subOnePowerBasis](../../../../mathematics/NumberTheory/PrimitiveRoots/Variant926a679921d1ea6d2e33064846f77e8243d73a1b77d852d40ea85f9d31447436.lean/declarations/subonepowerbasis--8976b5ad28f09454f877f10d.md) | 136 | `declaration-track:8976b5ad28f09454f877f10dcb99c31b1210d2fa2c63fe24e20be3bc7e647fe3` |
| 9 | `def` | [embeddingsEquivPrimitiveRoots](../../../../mathematics/NumberTheory/PrimitiveRoots/Variant926a679921d1ea6d2e33064846f77e8243d73a1b77d852d40ea85f9d31447436.lean/declarations/embeddingsequivprimitiveroots--8f3610db12b3602e231f9b50.md) | 145 | `declaration-track:8f3610db12b3602e231f9b507f926b05885c09d5f76e9158f7ffe7cd169a4032` |
| 10 | `theorem` | [embeddingsEquivPrimitiveRoots_apply_coe](../../../../mathematics/NumberTheory/PrimitiveRoots/Variant926a679921d1ea6d2e33064846f77e8243d73a1b77d852d40ea85f9d31447436.lean/declarations/embeddingsequivprimitiveroots-apply-coe--ecf1976aa5386add81955746.md) | 169 | `result-track:ecf1976aa5386add8195574684b73b8ce3c8ca98934a9971b2643ef2bf0353c8` |
| 11 | `theorem` | [finrank](../../../../mathematics/NumberTheory/PrimitiveRoots/Variant926a679921d1ea6d2e33064846f77e8243d73a1b77d852d40ea85f9d31447436.lean/declarations/finrank--99e0417f627776c8c0678d0e.md) | 182 | `result-track:99e0417f627776c8c0678d0e0138d66752c7cf7408e56ca7c6592b0f15ff3d32` |
| 12 | `theorem` | [_root_.GRWTSK.NumberTheory.Zeta.Variantd9bef50cb7095450d45e8132a4312d0a6f4d7c08e97a17fb2144812a49960bfe.IsPrimitiveRoot.lcm_totient_le_finrank](../../../../mathematics/NumberTheory/PrimitiveRoots/Variant926a679921d1ea6d2e33064846f77e8243d73a1b77d852d40ea85f9d31447436.lean/declarations/root-grwtsk-numbertheory-zeta-variantd9bef50cb7095450d45e8132a4312d0a6f4--ef189a2fcaf28b5813d616d1.md) | 191 | `result-track:ef189a2fcaf28b5813d616d1948973244022141f630f0a7d05edc8d3c61dbe86` |
| 13 | `theorem` | [dvd_of_isCyclotomicExtension](../../../../mathematics/NumberTheory/PrimitiveRoots/Variant926a679921d1ea6d2e33064846f77e8243d73a1b77d852d40ea85f9d31447436.lean/declarations/dvd-of-iscyclotomicextension--8f7b6fdb707fcaca6237af45.md) | 222 | `result-track:8f7b6fdb707fcaca6237af45963841a690980bb4c45f2569781955a9d3241692` |
| 14 | `theorem` | [exists_neg_pow_of_isOfFinOrder](../../../../mathematics/NumberTheory/PrimitiveRoots/Variant926a679921d1ea6d2e33064846f77e8243d73a1b77d852d40ea85f9d31447436.lean/declarations/exists-neg-pow-of-isoffinorder--ed4f578070fc54ff6118b53e.md) | 248 | `result-track:ed4f578070fc54ff6118b53ebf614a147a936e63da491f123a26fc94418271f8` |
| 15 | `theorem` | [exists_pow_or_neg_mul_pow_of_isOfFinOrder](../../../../mathematics/NumberTheory/PrimitiveRoots/Variant926a679921d1ea6d2e33064846f77e8243d73a1b77d852d40ea85f9d31447436.lean/declarations/exists-pow-or-neg-mul-pow-of-isoffinorder--c1dcbcf02ae12533929e0dd6.md) | 269 | `result-track:c1dcbcf02ae12533929e0dd6a01b3c51b387f3c23acc3b0bc84b1ab66d9a4d4a` |
| 16 | `theorem` | [norm_eq_neg_one_pow](../../../../mathematics/NumberTheory/PrimitiveRoots/Variant926a679921d1ea6d2e33064846f77e8243d73a1b77d852d40ea85f9d31447436.lean/declarations/norm-eq-neg-one-pow--d043e3906e488ed470444774.md) | 285 | `result-track:d043e3906e488ed470444774c4ca3cd9fbccdeedaba2782914a66cbd5311c986` |
| 17 | `theorem` | [norm_eq_one](../../../../mathematics/NumberTheory/PrimitiveRoots/Variant926a679921d1ea6d2e33064846f77e8243d73a1b77d852d40ea85f9d31447436.lean/declarations/norm-eq-one--9d72827924329008962217b1.md) | 294 | `result-track:9d72827924329008962217b148cde535cc0f0053d7b872cb8920af0e7823c2ed` |
| 18 | `theorem` | [norm_eq_one_of_linearly_ordered](../../../../mathematics/NumberTheory/PrimitiveRoots/Variant926a679921d1ea6d2e33064846f77e8243d73a1b77d852d40ea85f9d31447436.lean/declarations/norm-eq-one-of-linearly-ordered--56a8fc0713373c85d35cded2.md) | 311 | `result-track:56a8fc0713373c85d35cded2fb9cd6bceb076bdab85c8d56dc5d1099dc3c962a` |
| 19 | `theorem` | [norm_of_cyclotomic_irreducible](../../../../mathematics/NumberTheory/PrimitiveRoots/Variant926a679921d1ea6d2e33064846f77e8243d73a1b77d852d40ea85f9d31447436.lean/declarations/norm-of-cyclotomic-irreducible--535f2e6e2af1b2a7db891253.md) | 318 | `result-track:535f2e6e2af1b2a7db89125358d3807d94a05ca2769a6c8547ab5db36c06d7f7` |
| 20 | `theorem` | [sub_one_norm_eq_eval_cyclotomic](../../../../mathematics/NumberTheory/PrimitiveRoots/Variant926a679921d1ea6d2e33064846f77e8243d73a1b77d852d40ea85f9d31447436.lean/declarations/sub-one-norm-eq-eval-cyclotomic--453f074d171105f6398a182b.md) | 339 | `result-track:453f074d171105f6398a182b4736551ae98b70af2662c9f0b12e48d2ea9f5df7` |
| 21 | `theorem` | [sub_one_norm_isPrimePow](../../../../mathematics/NumberTheory/PrimitiveRoots/Variant926a679921d1ea6d2e33064846f77e8243d73a1b77d852d40ea85f9d31447436.lean/declarations/sub-one-norm-isprimepow--e802da9c30119e6cf899cbc6.md) | 366 | `result-track:e802da9c30119e6cf899cbc661371a8a56eccf4e087cfbffa72d71b78ffc7e62` |
| 22 | `theorem` | [minpoly_sub_one_eq_cyclotomic_comp](../../../../mathematics/NumberTheory/PrimitiveRoots/Variant926a679921d1ea6d2e33064846f77e8243d73a1b77d852d40ea85f9d31447436.lean/declarations/minpoly-sub-one-eq-cyclotomic-comp--9d57c96aa022d419b6b6853b.md) | 386 | `result-track:9d57c96aa022d419b6b6853bc0ddfb64ca5cd77c598b11a92ea29036e5f288a9` |
| 23 | `theorem` | [norm_pow_sub_one_of_prime_pow_ne_two](../../../../mathematics/NumberTheory/PrimitiveRoots/Variant926a679921d1ea6d2e33064846f77e8243d73a1b77d852d40ea85f9d31447436.lean/declarations/norm-pow-sub-one-of-prime-pow-ne-two--ee23dbc0ec79dec89824cb48.md) | 401 | `result-track:ee23dbc0ec79dec89824cb48cf6c7730e7ae956440d075ff6214f427e6fb7892` |
| 24 | `theorem` | [norm_pow_sub_one_of_prime_ne_two](../../../../mathematics/NumberTheory/PrimitiveRoots/Variant926a679921d1ea6d2e33064846f77e8243d73a1b77d852d40ea85f9d31447436.lean/declarations/norm-pow-sub-one-of-prime-ne-two--ce1fa892f9cef9080a6766e4.md) | 457 | `result-track:ce1fa892f9cef9080a6766e4099b4601352cad2a47feff2145eb861833330c16` |
| 25 | `theorem` | [norm_sub_one_of_prime_ne_two](../../../../mathematics/NumberTheory/PrimitiveRoots/Variant926a679921d1ea6d2e33064846f77e8243d73a1b77d852d40ea85f9d31447436.lean/declarations/norm-sub-one-of-prime-ne-two--f54c977cd5a201f93acd9363.md) | 470 | `result-track:f54c977cd5a201f93acd93637c0a4ba939a7f36427270bdfa480a35b1bf66a7f` |
| 26 | `theorem` | [norm_sub_one_of_prime_ne_two'](../../../../mathematics/NumberTheory/PrimitiveRoots/Variant926a679921d1ea6d2e33064846f77e8243d73a1b77d852d40ea85f9d31447436.lean/declarations/norm-sub-one-of-prime-ne-two--771a4f11d441507fbbfe687e.md) | 477 | `result-track:771a4f11d441507fbbfe687ee6f5e3b8c7ee65668d65df2de446cd633a2bde15` |
| 27 | `theorem` | [norm_pow_sub_one_two](../../../../mathematics/NumberTheory/PrimitiveRoots/Variant926a679921d1ea6d2e33064846f77e8243d73a1b77d852d40ea85f9d31447436.lean/declarations/norm-pow-sub-one-two--af3858cf0e980a0bb22ab3d3.md) | 487 | `result-track:af3858cf0e980a0bb22ab3d33d56f15880d56033c1bd26ed217b6a9f35a127d3` |
| 28 | `theorem` | [norm_sub_one_two](../../../../mathematics/NumberTheory/PrimitiveRoots/Variant926a679921d1ea6d2e33064846f77e8243d73a1b77d852d40ea85f9d31447436.lean/declarations/norm-sub-one-two--bffb149668d130f2e2ea79c5.md) | 504 | `result-track:bffb149668d130f2e2ea79c58460f21c0c6b001a515108b69811b6a98777576b` |
| 29 | `theorem` | [norm_pow_sub_one_eq_prime_pow_of_ne_zero](../../../../mathematics/NumberTheory/PrimitiveRoots/Variant926a679921d1ea6d2e33064846f77e8243d73a1b77d852d40ea85f9d31447436.lean/declarations/norm-pow-sub-one-eq-prime-pow-of-ne-zero--5f9d9c7d27a65fb455de7d19.md) | 518 | `result-track:5f9d9c7d27a65fb455de7d19632a985fab2c6fb5389c8a00990b55afdad77286` |
| 30 | `theorem` | [norm_zeta_eq_one](../../../../mathematics/NumberTheory/PrimitiveRoots/Variant926a679921d1ea6d2e33064846f77e8243d73a1b77d852d40ea85f9d31447436.lean/declarations/norm-zeta-eq-one--ecd0fd545fdbafefaf1f2936.md) | 554 | `result-track:ecd0fd545fdbafefaf1f29369601d1036d2388bc83b7dadc6301aeb54d07991c` |
| 31 | `theorem` | [norm_zeta_sub_one_of_isPrimePow](../../../../mathematics/NumberTheory/PrimitiveRoots/Variant926a679921d1ea6d2e33064846f77e8243d73a1b77d852d40ea85f9d31447436.lean/declarations/norm-zeta-sub-one-of-isprimepow--d3f22922de9d4222de629cb1.md) | 560 | `result-track:d3f22922de9d4222de629cb11a6d688e04da4c8f6f69686df81dd663d0c81d11` |
| 32 | `theorem` | [norm_zeta_pow_sub_one_of_prime_pow_ne_two](../../../../mathematics/NumberTheory/PrimitiveRoots/Variant926a679921d1ea6d2e33064846f77e8243d73a1b77d852d40ea85f9d31447436.lean/declarations/norm-zeta-pow-sub-one-of-prime-pow-ne-two--54ef14afc0e35c4c2a03efdc.md) | 568 | `result-track:54ef14afc0e35c4c2a03efdcaca8151893c39f8e867d25c9439f8db784f17897` |
| 33 | `theorem` | [norm_zeta_pow_sub_one_of_prime_ne_two](../../../../mathematics/NumberTheory/PrimitiveRoots/Variant926a679921d1ea6d2e33064846f77e8243d73a1b77d852d40ea85f9d31447436.lean/declarations/norm-zeta-pow-sub-one-of-prime-ne-two--a323461aa304b7e9f194d6fd.md) | 577 | `result-track:a323461aa304b7e9f194d6fd702ff5bd4315319526062438d0ad309f3479d6dd` |
| 34 | `theorem` | [norm_zeta_sub_one_of_prime_ne_two](../../../../mathematics/NumberTheory/PrimitiveRoots/Variant926a679921d1ea6d2e33064846f77e8243d73a1b77d852d40ea85f9d31447436.lean/declarations/norm-zeta-sub-one-of-prime-ne-two--b26009c3132ac0c7f2e5a4ca.md) | 585 | `result-track:b26009c3132ac0c7f2e5a4ca647b72b5dcb135c69b90d3c7708ab92215735400` |
| 35 | `theorem` | [norm_zeta_pow_sub_one_two](../../../../mathematics/NumberTheory/PrimitiveRoots/Variant926a679921d1ea6d2e33064846f77e8243d73a1b77d852d40ea85f9d31447436.lean/declarations/norm-zeta-pow-sub-one-two--52c74457336e3f0c34381c7a.md) | 592 | `result-track:52c74457336e3f0c34381c7ab4e4f6af8836160c518b7c24a2feb6faacb74652` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
