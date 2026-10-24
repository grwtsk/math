# Verification target: GRWTSK.Analysis.Orthogonal.Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "021ac00fe674b12cfb30009a9052deb5f5706e25",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/index.md) · [Full source](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `021ac00fe674b12cfb30009a9052deb5f5706e25`.

Source path: `GRWTSK/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Subspace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.SesquilinearForm` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [orthogonal](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/orthogonal--c2a0d96ee7b57f44bf33dbde.md) | 37 | `declaration-track:c2a0d96ee7b57f44bf33dbde5ad3a5e277db51918ee937387b616bcbd5c28754` |
| 2 | `theorem` | [mem_orthogonal](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/mem-orthogonal--89e1be8e19b8ea54bf3e49ba.md) | 47 | `result-track:89e1be8e19b8ea54bf3e49baafd7f095b9fd659f1e91a10d1d6156f78d8812c5` |
| 3 | `theorem` | [mem_orthogonal'](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/mem-orthogonal--669e4c28ac68b1ec2542c784.md) | 52 | `result-track:669e4c28ac68b1ec2542c784e5d6bba8274e162441ac4e78c49751319c3b9a70` |
| 4 | `theorem` | [inner_right_of_mem_orthogonal](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/inner-right-of-mem-orthogonal--bebe29e6141e7e95137b26ff.md) | 58 | `result-track:bebe29e6141e7e95137b26ff9e74c9a2d6273dd5812320237273c3a019fade8e` |
| 5 | `theorem` | [inner_left_of_mem_orthogonal](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/inner-left-of-mem-orthogonal--43c04c4ac50f0b728773dc5a.md) | 62 | `result-track:43c04c4ac50f0b728773dc5a5edeac2493afcf97e34f83c513d66a6b9928bb0e` |
| 6 | `theorem` | [mem_orthogonal_singleton_iff_inner_right](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/mem-orthogonal-singleton-iff-inner-right--d87485629653dc36ab12b0d8.md) | 66 | `result-track:d87485629653dc36ab12b0d87dc39bdd36b3b81ce5391c7a7b94a9a97836f036` |
| 7 | `theorem` | [mem_orthogonal_singleton_iff_inner_left](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/mem-orthogonal-singleton-iff-inner-left--0555e1a80efdb017ada7c31c.md) | 74 | `result-track:0555e1a80efdb017ada7c31c77a0d3b3d0f6dc8b796f3866b79f17800e06cfe9` |
| 8 | `theorem` | [sub_mem_orthogonal_of_inner_left](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/sub-mem-orthogonal-of-inner-left--6628987df908c77f1074f086.md) | 77 | `result-track:6628987df908c77f1074f08616aa2f4e014d627f73260975a49eb42ead7d707b` |
| 9 | `theorem` | [sub_mem_orthogonal_of_inner_right](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/sub-mem-orthogonal-of-inner-right--eb00c72f7adaec85bf235f8f.md) | 83 | `result-track:eb00c72f7adaec85bf235f8faa84ef9674719f8d10cbf2bce47685e492ad0b33` |
| 10 | `theorem` | [inf_orthogonal_eq_bot](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/inf-orthogonal-eq-bot--63a5f2ac2d43adb6617a1d68.md) | 92 | `result-track:63a5f2ac2d43adb6617a1d6843908f0f03622e4525dd2ff9b0a84fdbaf72135e` |
| 11 | `theorem` | [orthogonal_disjoint](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/orthogonal-disjoint--3ded4223651674c975a884fc.md) | 99 | `result-track:3ded4223651674c975a884fc0b38f277674b24356a63d6711f631fca4d13362c` |
| 12 | `theorem` | [orthogonal_eq_inter](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/orthogonal-eq-inter--58c23647a329f75b59e5f0ec.md) | 103 | `result-track:58c23647a329f75b59e5f0ec3f432dc89c7fd271f8661454f38d5249027f0da2` |
| 13 | `theorem` | [isClosed_orthogonal](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/isclosed-orthogonal--5773c1dcd2591bbad0faa11b.md) | 113 | `result-track:5773c1dcd2591bbad0faa11b305c09ee8e54faea4a6b64775a8e547f25bb027e` |
| 14 | `instance` | [instOrthogonalCompleteSpace](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/instorthogonalcompletespace--38f6e5606284a6ba83d64736.md) | 119 | `declaration-track:38f6e5606284a6ba83d647365df386398c15fd6050b0545f37884fa6fda34619` |
| 15 | `theorem` | [orthogonal_gc](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/orthogonal-gc--823ac88e85f9cc4d28e238ac.md) | 126 | `result-track:823ac88e85f9cc4d28e238ac5825b5e0a80b2bcb028a8ae842012c7e78c2a343` |
| 16 | `theorem` | [orthogonal_le](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/orthogonal-le--8c9495d9eac5fdcf8de12afa.md) | 135 | `result-track:8c9495d9eac5fdcf8de12afa307c80b8c2c147763a4ea4d01f9950728abae2c1` |
| 17 | `theorem` | [orthogonal_orthogonal_monotone](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/orthogonal-orthogonal-monotone--38b25013c946d0035d488572.md) | 140 | `result-track:38b25013c946d0035d4885723c6b245194d7d0d773d010f5ac8d39da475c8271` |
| 18 | `theorem` | [le_orthogonal_orthogonal](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/le-orthogonal-orthogonal--8ec6f6bcba372f559573020b.md) | 144 | `result-track:8ec6f6bcba372f559573020bd77b4f41fd8a3738ed4d27e32128662f1ea8e334` |
| 19 | `theorem` | [inf_orthogonal](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/inf-orthogonal--1d0f2b9793d0b16915c9cbeb.md) | 149 | `result-track:1d0f2b9793d0b16915c9cbeb7ff93856ec0351a5fc85a9497427bc9362bf0f17` |
| 20 | `theorem` | [iInf_orthogonal](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/iinf-orthogonal--9c4d8babf94fd35a0e995b79.md) | 154 | `result-track:9c4d8babf94fd35a0e995b796710e30fd41689a206907453e7456dee18b48e0e` |
| 21 | `theorem` | [sInf_orthogonal](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/sinf-orthogonal--4879198123fa673f94dea91f.md) | 158 | `result-track:4879198123fa673f94dea91f41d1d15ce1dfed124556a10a0b8bead3df1b2c8e` |
| 22 | `theorem` | [top_orthogonal_eq_bot](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/top-orthogonal-eq-bot--49dba90f6fd2a9ee21c0cfdd.md) | 162 | `result-track:49dba90f6fd2a9ee21c0cfddb97d8f4b4bcc5916755a5af64116344119e8a106` |
| 23 | `theorem` | [bot_orthogonal_eq_top](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/bot-orthogonal-eq-top--9553687c1ead17b2d823eb6d.md) | 171 | `result-track:9553687c1ead17b2d823eb6d590a2b8cfa04a3f81d34d73ad34c51bf9f265917` |
| 24 | `theorem` | [orthogonal_eq_top_iff](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/orthogonal-eq-top-iff--b99ee3cf5a79433cc67a02a6.md) | 176 | `result-track:b99ee3cf5a79433cc67a02a6401d9e26558717ee0ecde25076246fe7a52f440d` |
| 25 | `theorem` | [orthogonalFamily_self](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/orthogonalfamily-self--3dd47af594ea14d7c0c9d48a.md) | 185 | `result-track:3dd47af594ea14d7c0c9d48a537016ca63539031559f25288ef67e0027b44de7` |
| 26 | `theorem` | [bilinFormOfRealInner_orthogonal](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/bilinformofrealinner-orthogonal--985cfe6c035cfe8e0fb964ca.md) | 195 | `result-track:985cfe6c035cfe8e0fb964ca62f99031318e5ea44b08061560667376b61c7982` |
| 27 | `def` | [IsOrtho](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/isortho--cd8c5c5b1ffe649dc1dd9cde.md) | 211 | `declaration-track:cd8c5c5b1ffe649dc1dd9cde36efc738af56285b466924729123a408cac0b88b` |
| 28 | `theorem` | [isOrtho_iff_le](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/isortho-iff-le--528f126447148d0a27df2bb7.md) | 217 | `result-track:528f126447148d0a27df2bb7b37ce43a6e3938e77365960df9e0d2338d6c6b12` |
| 29 | `theorem` | [IsOrtho.symm](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/isortho-symm--89f1e91d703fcd357fa6a0a5.md) | 221 | `result-track:89f1e91d703fcd357fa6a0a5d2e18ecd1810a9b93844e8c9bf73e26dbb33b032` |
| 30 | `theorem` | [isOrtho_comm](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/isortho-comm--cdc374cae709e5512a00b2ac.md) | 224 | `result-track:cdc374cae709e5512a00b2acd663467a5faeae09ce24b478ff061951befdbd2c` |
| 31 | `theorem` | [symmetric_isOrtho](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/symmetric-isortho--912e3164958c5e71ee395972.md) | 227 | `result-track:912e3164958c5e71ee395972e57b578b64f86cfbc5744707ebf1e57983369a9a` |
| 32 | `theorem` | [IsOrtho.inner_eq](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/isortho-inner-eq--dd962e9ef8f14d1656f693b0.md) | 230 | `result-track:dd962e9ef8f14d1656f693b074de46289de00275d1497cf8b70259ee12def3ce` |
| 33 | `theorem` | [isOrtho_iff_inner_eq](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/isortho-iff-inner-eq--393927c64223377343eef41b.md) | 234 | `result-track:393927c64223377343eef41b7d51f439745259c1a263aabd0b81441774261ade` |
| 34 | `theorem` | [isOrtho_bot_left](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/isortho-bot-left--75203d875a76432365dab5d2.md) | 240 | `result-track:75203d875a76432365dab5d233475b60df18a2dcb690f4afa65fd5edf1b0b966` |
| 35 | `theorem` | [isOrtho_bot_right](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/isortho-bot-right--989423f9bc8e67d4a2054c69.md) | 244 | `result-track:989423f9bc8e67d4a2054c6924aa6018a155d4c97c2d88b5bd2ac29dbde10e77` |
| 36 | `theorem` | [IsOrtho.mono_left](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/isortho-mono-left--3a5514e130e867b4b4b1c250.md) | 247 | `result-track:3a5514e130e867b4b4b1c250105e3f859561eb8d6c041d104da898f36a52db98` |
| 37 | `theorem` | [IsOrtho.mono_right](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/isortho-mono-right--741e5d369e3a2caaa0fd0d91.md) | 250 | `result-track:741e5d369e3a2caaa0fd0d91a332ae0ef8faf1b94fe6176c818f7c0db1ca358b` |
| 38 | `theorem` | [IsOrtho.mono](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/isortho-mono--0b7cc88237926c4110f3d5dc.md) | 253 | `result-track:0b7cc88237926c4110f3d5dc9cda5d38185acfd9ce73d18548c3d2cd36852316` |
| 39 | `theorem` | [isOrtho_self](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/isortho-self--c5c13e5959bfc50267c52950.md) | 258 | `result-track:c5c13e5959bfc50267c529508ac34e2314c61adb16b7ed31b2efc8ad07d1287a` |
| 40 | `theorem` | [isOrtho_orthogonal_right](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/isortho-orthogonal-right--090ee0ce7b5fdcf71959de1e.md) | 263 | `result-track:090ee0ce7b5fdcf71959de1e72377ce5868547e6612051d62e8a558cea61d06a` |
| 41 | `theorem` | [isOrtho_orthogonal_left](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/isortho-orthogonal-left--f7424ef06c43dfc5b612ef62.md) | 267 | `result-track:f7424ef06c43dfc5b612ef629aa84e70ddd7caa5a3674d182c1cae7b6fb2bfc5` |
| 42 | `theorem` | [IsOrtho.le](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/isortho-le--449c2ffe5984b7659067a3fa.md) | 270 | `result-track:449c2ffe5984b7659067a3fac0b9698b6117f96ebaf540d670b852bbe2aec1c9` |
| 43 | `theorem` | [IsOrtho.ge](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/isortho-ge--797bb1c6412c1b996830eb42.md) | 273 | `result-track:797bb1c6412c1b996830eb42fc76d356a2a9bdce7dd332cdffb44624c982db80` |
| 44 | `theorem` | [isOrtho_top_right](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/isortho-top-right--8287849d6111c3cc107f42b5.md) | 277 | `result-track:8287849d6111c3cc107f42b5dd01df91a90fd9347b7ae949da4fbe76f077e139` |
| 45 | `theorem` | [isOrtho_top_left](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/isortho-top-left--ac80a73c94078f8c3cacd407.md) | 282 | `result-track:ac80a73c94078f8c3cacd4071145f2a0f001778e68f2e0a61d8a4a043c2116f5` |
| 46 | `theorem` | [IsOrtho.disjoint](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/isortho-disjoint--5eb86bbbf1afea4a30c0c2e5.md) | 286 | `result-track:5eb86bbbf1afea4a30c0c2e515cb40dcf855e488b303547c09aed87f47f047c3` |
| 47 | `theorem` | [isOrtho_sup_left](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/isortho-sup-left--97db3c5b55ba864c83631845.md) | 290 | `result-track:97db3c5b55ba864c836318452064a9808f81b1ccab2a8123685bb6238aae7b48` |
| 48 | `theorem` | [isOrtho_sup_right](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/isortho-sup-right--95acf00f31d8c7e5bdb71108.md) | 294 | `result-track:95acf00f31d8c7e5bdb711087438ef65058ef92e6a5ba634e45307dc4fd35d59` |
| 49 | `theorem` | [isOrtho_sSup_left](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/isortho-ssup-left--8f230b6cca70b8aa44066a31.md) | 298 | `result-track:8f230b6cca70b8aa44066a3167aeda0433efb1cec61a2769bd07250618e48c1b` |
| 50 | `theorem` | [isOrtho_sSup_right](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/isortho-ssup-right--704a22f3d032b73f4dd3e689.md) | 303 | `result-track:704a22f3d032b73f4dd3e689189d49b7c873ae33c1385fc9311547d1b75f8c6e` |
| 51 | `theorem` | [isOrtho_iSup_left](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/isortho-isup-left--f922ac0cdc50a8bd0a120059.md) | 308 | `result-track:f922ac0cdc50a8bd0a120059a59b7c423f752c01fec216392e9266d47b1c3999` |
| 52 | `theorem` | [isOrtho_iSup_right](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/isortho-isup-right--c03d016dda78ab10c003cda7.md) | 313 | `result-track:c03d016dda78ab10c003cda722843394c944b593d5ae09e39f3eb633a8bfb5a6` |
| 53 | `theorem` | [isOrtho_span](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/isortho-span--6674d166fb2aa69c24a22b70.md) | 318 | `result-track:6674d166fb2aa69c24a22b70f5a3e6d136b47ad7bf85f33c716c06fefd777b63` |
| 54 | `theorem` | [IsOrtho.map](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/isortho-map--43eec8d07c3f7ddbc9808d32.md) | 324 | `result-track:43eec8d07c3f7ddbc9808d320df7762ea7e72a88c6326f087d69f606e58f410e` |
| 55 | `theorem` | [IsOrtho.comap](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/isortho-comap--2c08b3fccf070445d61c9a93.md) | 330 | `result-track:2c08b3fccf070445d61c9a934b470b4b5f1b9dcc1aa3e0d2c8ba56921c0c6a55` |
| 56 | `theorem` | [IsOrtho.map_iff](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/isortho-map-iff--76246087bf3b22882a8e23a1.md) | 338 | `result-track:76246087bf3b22882a8e23a191b81f461880c9e808daac49dc33aa10d390e784` |
| 57 | `theorem` | [IsOrtho.comap_iff](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/isortho-comap-iff--ec6b9fa56183e5fac713265c.md) | 345 | `result-track:ec6b9fa56183e5fac713265cb0d471c959c9e0969dc9743ce7051790154b9269` |
| 58 | `theorem` | [orthogonalFamily_iff_pairwise](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/orthogonalfamily-iff-pairwise--9473b83525dbea2ce69b21f4.md) | 354 | `result-track:9473b83525dbea2ce69b21f4e11547e423f38d1413754c0814b1c659d1074556` |
| 59 | `theorem` | [OrthogonalFamily.isOrtho](../../../../mathematics/Analysis/Orthogonal/Variant2507cafe1cc9dcec46b6ced0336784393889aeb33d5ec3f79a3f3f944cf6082a.lean/declarations/orthogonalfamily-isortho--a4951de0e177ca875524e1c9.md) | 364 | `result-track:a4951de0e177ca875524e1c9b030b764533261616ca3b70feb8a2c23c064da83` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
