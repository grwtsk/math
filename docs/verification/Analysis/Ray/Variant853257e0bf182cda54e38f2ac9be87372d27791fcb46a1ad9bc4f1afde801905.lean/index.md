# Verification target: GRWTSK.Analysis.Ray.Variant853257e0bf182cda54e38f2ac9be87372d27791fcb46a1ad9bc4f1afde801905

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "24335fd63ebcce973c5250a20e17ac5a39866ade",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Ray/Variant853257e0bf182cda54e38f2ac9be87372d27791fcb46a1ad9bc4f1afde801905.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Ray/Variant853257e0bf182cda54e38f2ac9be87372d27791fcb46a1ad9bc4f1afde801905.lean/index.md) · [Full source](../../../../mathematics/Analysis/Ray/Variant853257e0bf182cda54e38f2ac9be87372d27791fcb46a1ad9bc4f1afde801905.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `24335fd63ebcce973c5250a20e17ac5a39866ade`.

Source path: `GRWTSK/Analysis/Ray/Variant853257e0bf182cda54e38f2ac9be87372d27791fcb46a1ad9bc4f1afde801905.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Ray/Variant853257e0bf182cda54e38f2ac9be87372d27791fcb46a1ad9bc4f1afde801905.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Ray` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Real` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [norm_add](../../../../mathematics/Analysis/Ray/Variant853257e0bf182cda54e38f2ac9be87372d27791fcb46a1ad9bc4f1afde801905.lean/declarations/norm-add--8c4b459a52e14235bfba247f.md) | 38 | `result-track:8c4b459a52e14235bfba247f33d9b1477895a945f8aeff53f01656bc225b9104` |
| 2 | `theorem` | [norm_sub](../../../../mathematics/Analysis/Ray/Variant853257e0bf182cda54e38f2ac9be87372d27791fcb46a1ad9bc4f1afde801905.lean/declarations/norm-sub--f413933f5c7e992a6f1ba212.md) | 43 | `result-track:f413933f5c7e992a6f1ba212366b8c2344cd6ce40c06b5d30972c97398fbdd61` |
| 3 | `theorem` | [norm_smul_eq](../../../../mathematics/Analysis/Ray/Variant853257e0bf182cda54e38f2ac9be87372d27791fcb46a1ad9bc4f1afde801905.lean/declarations/norm-smul-eq--505cf1f6469901a8a2232816.md) | 53 | `result-track:505cf1f6469901a8a2232816e9c1f768911e687eea1899a9d7ccd69471adeaa3` |
| 4 | `theorem` | [norm_injOn_ray_left](../../../../mathematics/Analysis/Ray/Variant853257e0bf182cda54e38f2ac9be87372d27791fcb46a1ad9bc4f1afde801905.lean/declarations/norm-injon-ray-left--66efbf63b90fc399fce61113.md) | 62 | `result-track:66efbf63b90fc399fce6111364771e6ab76b1a53c981f7d1bd07ecd8cf706523` |
| 5 | `theorem` | [norm_injOn_ray_right](../../../../mathematics/Analysis/Ray/Variant853257e0bf182cda54e38f2ac9be87372d27791fcb46a1ad9bc4f1afde801905.lean/declarations/norm-injon-ray-right--3a872a9500f880f852d6bbc0.md) | 70 | `result-track:3a872a9500f880f852d6bbc0a55a3a90a2b7ed987b0f0f4e42a6183da2a417eb` |
| 6 | `theorem` | [sameRay_iff_norm_smul_eq](../../../../mathematics/Analysis/Ray/Variant853257e0bf182cda54e38f2ac9be87372d27791fcb46a1ad9bc4f1afde801905.lean/declarations/sameray-iff-norm-smul-eq--35407e575104f1c3248aaaa3.md) | 73 | `result-track:35407e575104f1c3248aaaa3475bdf4d2f53e65df7297cb9faecb832d50df231` |
| 7 | `theorem` | [sameRay_iff_inv_norm_smul_eq_of_ne](../../../../mathematics/Analysis/Ray/Variant853257e0bf182cda54e38f2ac9be87372d27791fcb46a1ad9bc4f1afde801905.lean/declarations/sameray-iff-inv-norm-smul-eq-of-ne--db7a0181e9fb68621b122d78.md) | 80 | `result-track:db7a0181e9fb68621b122d789c97429d655e37076eab09628f4d167b4b1c4321` |
| 8 | `theorem` | [sameRay_iff_inv_norm_smul_eq](../../../../mathematics/Analysis/Ray/Variant853257e0bf182cda54e38f2ac9be87372d27791fcb46a1ad9bc4f1afde801905.lean/declarations/sameray-iff-inv-norm-smul-eq--6576b9963321315e6f6b369b.md) | 89 | `result-track:6576b9963321315e6f6b369b3d724df191093af2f3a1e26fd4afc63b5f99c81f` |
| 9 | `theorem` | [sameRay_iff_of_norm_eq](../../../../mathematics/Analysis/Ray/Variant853257e0bf182cda54e38f2ac9be87372d27791fcb46a1ad9bc4f1afde801905.lean/declarations/sameray-iff-of-norm-eq--207dc495674f1a65c090fc19.md) | 95 | `result-track:207dc495674f1a65c090fc1981858103700deef1b6c6851fb12307066e1cc2e3` |
| 10 | `theorem` | [not_sameRay_iff_of_norm_eq](../../../../mathematics/Analysis/Ray/Variant853257e0bf182cda54e38f2ac9be87372d27791fcb46a1ad9bc4f1afde801905.lean/declarations/not-sameray-iff-of-norm-eq--f7df53ee45c2320208570868.md) | 101 | `result-track:f7df53ee45c2320208570868657365d79b0e9c3e6bb4cd92889670301ea84ad9` |
| 11 | `theorem` | [SameRay.eq_of_norm_eq](../../../../mathematics/Analysis/Ray/Variant853257e0bf182cda54e38f2ac9be87372d27791fcb46a1ad9bc4f1afde801905.lean/declarations/sameray-eq-of-norm-eq--db251256f245ac7f8e04316e.md) | 105 | `result-track:db251256f245ac7f8e04316e5d5868a0874f43b86e7b42ec117702a86808f22b` |
| 12 | `theorem` | [SameRay.norm_eq_iff](../../../../mathematics/Analysis/Ray/Variant853257e0bf182cda54e38f2ac9be87372d27791fcb46a1ad9bc4f1afde801905.lean/declarations/sameray-norm-eq-iff--4a7a21d214ad4534c7df5e39.md) | 109 | `result-track:4a7a21d214ad4534c7df5e3961f77f96eaa6aa969969db2b121d1f8a71324f2a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
