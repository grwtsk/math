# Verification target: GRWTSK.Algebra.Basic.Variantf26df438f46dc34266600c69bde8d7fb2a223735db7c1480cb0ba27c9568872f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2795c96eaa3b6a7649c26153e51ed86cd5f662bd",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantf26df438f46dc34266600c69bde8d7fb2a223735db7c1480cb0ba27c9568872f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variantf26df438f46dc34266600c69bde8d7fb2a223735db7c1480cb0ba27c9568872f.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variantf26df438f46dc34266600c69bde8d7fb2a223735db7c1480cb0ba27c9568872f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2795c96eaa3b6a7649c26153e51ed86cd5f662bd`.

Source path: `GRWTSK/Algebra/Basic/Variantf26df438f46dc34266600c69bde8d7fb2a223735db7c1480cb0ba27c9568872f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantf26df438f46dc34266600c69bde8d7fb2a223735db7c1480cb0ba27c9568872f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsSquare.nonneg](../../../../mathematics/Algebra/Basic/Variantf26df438f46dc34266600c69bde8d7fb2a223735db7c1480cb0ba27c9568872f.lean/declarations/issquare-nonneg--04d9329e497aefe30e7d2fa6.md) | 25 | `result-track:04d9329e497aefe30e7d2fa68502ba380a1c4f89ad59c295bfceb318ead21464` |
| 2 | `lemma` | [not_isSquare_of_neg](../../../../mathematics/Algebra/Basic/Variantf26df438f46dc34266600c69bde8d7fb2a223735db7c1480cb0ba27c9568872f.lean/declarations/not-issquare-of-neg--b196c74fc6d094356944b6db.md) | 32 | `result-track:b196c74fc6d094356944b6db17763eec3ae3ddc2a02088195656a66724fab310` |
| 3 | `theorem` | [pow_add_pow_le](../../../../mathematics/Algebra/Basic/Variantf26df438f46dc34266600c69bde8d7fb2a223735db7c1480cb0ba27c9568872f.lean/declarations/pow-add-pow-le--d7c38359403401928eecf498.md) | 41 | `result-track:d7c38359403401928eecf498e5299dc003589565ccaf8cf771ebc9fd51362aaf` |
| 4 | `lemma` | [pow_add_pow_le'](../../../../mathematics/Algebra/Basic/Variantf26df438f46dc34266600c69bde8d7fb2a223735db7c1480cb0ba27c9568872f.lean/declarations/pow-add-pow-le--3553174f37adfc6fa9b4c826.md) | 62 | `result-track:3553174f37adfc6fa9b4c8262e339be724a708612be4f66b8f6b68e4e5799453` |
| 5 | `lemma` | [sq_pos_of_neg](../../../../mathematics/Algebra/Basic/Variantf26df438f46dc34266600c69bde8d7fb2a223735db7c1480cb0ba27c9568872f.lean/declarations/sq-pos-of-neg--8955f9743499f6890c25c0ef.md) | 72 | `result-track:8955f9743499f6890c25c0efeb191f584bf53c0b6e6b68d2bca293be9ae08e69` |
| 6 | `lemma` | [Even.pow_nonneg](../../../../mathematics/Algebra/Basic/Variantf26df438f46dc34266600c69bde8d7fb2a223735db7c1480cb0ba27c9568872f.lean/declarations/even-pow-nonneg--3ab34839565dc2ab27d3a761.md) | 82 | `result-track:3ab34839565dc2ab27d3a761bbd8c688359f4558373cdb1d805337909f309328` |
| 7 | `lemma` | [pow_four_le_pow_two_of_pow_two_le](../../../../mathematics/Algebra/Basic/Variantf26df438f46dc34266600c69bde8d7fb2a223735db7c1480cb0ba27c9568872f.lean/declarations/pow-four-le-pow-two-of-pow-two-le--97c959643cca687c9c84d723.md) | 85 | `result-track:97c959643cca687c9c84d723367d6defd8e9ce02ee8a8ee97687047803617d23` |
| 8 | `lemma` | [pow_add_pow_eq_zero_iff_of_even](../../../../mathematics/Algebra/Basic/Variantf26df438f46dc34266600c69bde8d7fb2a223735db7c1480cb0ba27c9568872f.lean/declarations/pow-add-pow-eq-zero-iff-of-even--9c8558d7f278635a73e38707.md) | 88 | `result-track:9c8558d7f278635a73e38707997b450a660b725a03717d0321e9a8f25cde0661` |
| 9 | `def` | [IsNonarchimedean](../../../../mathematics/Algebra/Basic/Variantf26df438f46dc34266600c69bde8d7fb2a223735db7c1480cb0ba27c9568872f.lean/declarations/isnonarchimedean--e57c823dcd52de579d34b461.md) | 101 | `declaration-track:e57c823dcd52de579d34b461210da5c233a822612e03d223aa21de39574679b3` |
| 10 | `lemma` | [add_sq_le](../../../../mathematics/Algebra/Basic/Variantf26df438f46dc34266600c69bde8d7fb2a223735db7c1480cb0ba27c9568872f.lean/declarations/add-sq-le--ab10bcef231cd26895d5f203.md) | 114 | `result-track:ab10bcef231cd26895d5f203eebb3b3b3de3f822c4d8193dc42ebf1b2230adf3` |
| 11 | `lemma` | [add_pow_le](../../../../mathematics/Algebra/Basic/Variantf26df438f46dc34266600c69bde8d7fb2a223735db7c1480cb0ba27c9568872f.lean/declarations/add-pow-le--1d5d8d643b2a08c0f31ca276.md) | 125 | `result-track:1d5d8d643b2a08c0f31ca2769d331ff253cc386ea33622eed120cba7d7e86c37` |
| 12 | `lemma` | [Even.add_pow_le](../../../../mathematics/Algebra/Basic/Variantf26df438f46dc34266600c69bde8d7fb2a223735db7c1480cb0ba27c9568872f.lean/declarations/even-add-pow-le--c6b356fef09d83bc4325201c.md) | 144 | `result-track:c6b356fef09d83bc4325201cfb4f91dca219459abb9725cb862a45e51c594bfa` |
| 13 | `lemma` | [Even.pow_pos](../../../../mathematics/Algebra/Basic/Variantf26df438f46dc34266600c69bde8d7fb2a223735db7c1480cb0ba27c9568872f.lean/declarations/even-pow-pos--d38ce7d8b1bdb7c962a12516.md) | 160 | `result-track:d38ce7d8b1bdb7c962a125164204c409a7b33cb1f213934b278be18a98f6b9ca` |
| 14 | `lemma` | [Even.pow_pos_iff](../../../../mathematics/Algebra/Basic/Variantf26df438f46dc34266600c69bde8d7fb2a223735db7c1480cb0ba27c9568872f.lean/declarations/even-pow-pos-iff--cd66bb4638478cc4c0242e1f.md) | 163 | `result-track:cd66bb4638478cc4c0242e1ffae132567ba36c08c80593a5df8c9821e24f5aa3` |
| 15 | `lemma` | [Odd.pow_neg_iff](../../../../mathematics/Algebra/Basic/Variantf26df438f46dc34266600c69bde8d7fb2a223735db7c1480cb0ba27c9568872f.lean/declarations/odd-pow-neg-iff--d0e6655c9e27e03ff47b4950.md) | 166 | `result-track:d0e6655c9e27e03ff47b495020b24fb1e26dc049412cb356e713f70bd03ff6f9` |
| 16 | `lemma` | [Odd.pow_nonneg_iff](../../../../mathematics/Algebra/Basic/Variantf26df438f46dc34266600c69bde8d7fb2a223735db7c1480cb0ba27c9568872f.lean/declarations/odd-pow-nonneg-iff--4291cf0b60771ba2aaa0265b.md) | 172 | `result-track:4291cf0b60771ba2aaa0265b5c958fd1c91375a04585ad2d04a21e8186fdc35d` |
| 17 | `lemma` | [Odd.pow_nonpos_iff](../../../../mathematics/Algebra/Basic/Variantf26df438f46dc34266600c69bde8d7fb2a223735db7c1480cb0ba27c9568872f.lean/declarations/odd-pow-nonpos-iff--4b6e5c2a78e805382672e3d7.md) | 175 | `result-track:4b6e5c2a78e805382672e3d75b9a7864d290c809a48f8d805279dbc1ca8ce284` |
| 18 | `lemma` | [Odd.pow_pos_iff](../../../../mathematics/Algebra/Basic/Variantf26df438f46dc34266600c69bde8d7fb2a223735db7c1480cb0ba27c9568872f.lean/declarations/odd-pow-pos-iff--bef7441b6149291871d8b22e.md) | 179 | `result-track:bef7441b6149291871d8b22e6b6680d888e2a7536c5f0089e64dd5b8ea4b4862` |
| 19 | `lemma` | [Odd.strictMono_pow](../../../../mathematics/Algebra/Basic/Variantf26df438f46dc34266600c69bde8d7fb2a223735db7c1480cb0ba27c9568872f.lean/declarations/odd-strictmono-pow--c75785a5def635a84ff2fb7d.md) | 184 | `result-track:c75785a5def635a84ff2fb7dd4863f8d894dda5a3be38606a8a3505f30752a2a` |
| 20 | `lemma` | [Odd.pow_injective](../../../../mathematics/Algebra/Basic/Variantf26df438f46dc34266600c69bde8d7fb2a223735db7c1480cb0ba27c9568872f.lean/declarations/odd-pow-injective--3f6518f371405d9bf75d980a.md) | 204 | `result-track:3f6518f371405d9bf75d980a9a70257eba20628940a4421f310874cd4c4ade13` |
| 21 | `lemma` | [Odd.pow_lt_pow](../../../../mathematics/Algebra/Basic/Variantf26df438f46dc34266600c69bde8d7fb2a223735db7c1480cb0ba27c9568872f.lean/declarations/odd-pow-lt-pow--cc17d97f0ae5ffc2778e8dca.md) | 207 | `result-track:cc17d97f0ae5ffc2778e8dca8e76b77e22cbbe558cce81dcda6f8c9366f972a3` |
| 22 | `lemma` | [Odd.pow_le_pow](../../../../mathematics/Algebra/Basic/Variantf26df438f46dc34266600c69bde8d7fb2a223735db7c1480cb0ba27c9568872f.lean/declarations/odd-pow-le-pow--a6eabd57a52188be5ac35e4d.md) | 210 | `result-track:a6eabd57a52188be5ac35e4d504cdffa1cc03443cf6de753dccb8260bf34255e` |
| 23 | `lemma` | [Odd.pow_inj](../../../../mathematics/Algebra/Basic/Variantf26df438f46dc34266600c69bde8d7fb2a223735db7c1480cb0ba27c9568872f.lean/declarations/odd-pow-inj--7ea262f7478dd3f061b649ec.md) | 213 | `result-track:7ea262f7478dd3f061b649ec501e329901507746378d87bce87e71fce82bb60b` |
| 24 | `lemma` | [sq_pos_iff](../../../../mathematics/Algebra/Basic/Variantf26df438f46dc34266600c69bde8d7fb2a223735db7c1480cb0ba27c9568872f.lean/declarations/sq-pos-iff--ce19869ef70d6f215fc90b37.md) | 216 | `result-track:ce19869ef70d6f215fc90b379af042f96a75f301b82b20f014efc7c255aa5a93` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
