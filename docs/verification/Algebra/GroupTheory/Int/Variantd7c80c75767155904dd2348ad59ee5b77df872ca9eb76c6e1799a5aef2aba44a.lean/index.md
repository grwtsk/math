# Verification target: GRWTSK.Algebra.GroupTheory.Int.Variantd7c80c75767155904dd2348ad59ee5b77df872ca9eb76c6e1799a5aef2aba44a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c686c1db9e7870d77f78630e7f0f5e8326a7c17",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Int/Variantd7c80c75767155904dd2348ad59ee5b77df872ca9eb76c6e1799a5aef2aba44a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Int/Variantd7c80c75767155904dd2348ad59ee5b77df872ca9eb76c6e1799a5aef2aba44a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Int/Variantd7c80c75767155904dd2348ad59ee5b77df872ca9eb76c6e1799a5aef2aba44a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c686c1db9e7870d77f78630e7f0f5e8326a7c17`.

Source path: `GRWTSK/Algebra/GroupTheory/Int/Variantd7c80c75767155904dd2348ad59ee5b77df872ca9eb76c6e1799a5aef2aba44a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Int/Variantd7c80c75767155904dd2348ad59ee5b77df872ca9eb76c6e1799a5aef2aba44a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Unbundled.Abs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Int.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [natCast_strictMono](../../../../../mathematics/Algebra/GroupTheory/Int/Variantd7c80c75767155904dd2348ad59ee5b77df872ca9eb76c6e1799a5aef2aba44a.lean/declarations/natcast-strictmono--5bbe9abb16315020a740b5ff.md) | 40 | `result-track:5bbe9abb16315020a740b5fff7d55e849bb26a9881ecab4210beaef0caf52423` |
| 2 | `theorem` | [abs_eq_natAbs](../../../../../mathematics/Algebra/GroupTheory/Int/Variantd7c80c75767155904dd2348ad59ee5b77df872ca9eb76c6e1799a5aef2aba44a.lean/declarations/abs-eq-natabs--f4e52e42ba4eae18d36119d0.md) | 44 | `result-track:f4e52e42ba4eae18d36119d03dce3c5cf43432f678178b465dfb7e1332d0ac14` |
| 3 | `lemma` | [natCast_natAbs](../../../../../mathematics/Algebra/GroupTheory/Int/Variantd7c80c75767155904dd2348ad59ee5b77df872ca9eb76c6e1799a5aef2aba44a.lean/declarations/natcast-natabs--4b6890797e1c8ee18ba65674.md) | 48 | `result-track:4b6890797e1c8ee18ba65674499bf3e28cd81a2bae9cc48eee8ff7f9febc93d6` |
| 4 | `theorem` | [natAbs_abs](../../../../../mathematics/Algebra/GroupTheory/Int/Variantd7c80c75767155904dd2348ad59ee5b77df872ca9eb76c6e1799a5aef2aba44a.lean/declarations/natabs-abs--6aee62f32cadaada12c2bc93.md) | 50 | `result-track:6aee62f32cadaada12c2bc938f01426af882387fa58467f4c9f04e9572c6f57c` |
| 5 | `theorem` | [sign_mul_abs](../../../../../mathematics/Algebra/GroupTheory/Int/Variantd7c80c75767155904dd2348ad59ee5b77df872ca9eb76c6e1799a5aef2aba44a.lean/declarations/sign-mul-abs--f24dfde8bc358ea5629d5821.md) | 52 | `result-track:f24dfde8bc358ea5629d5821ba7a8c89a821a4f7397ae77f9857c20f47ffa189` |
| 6 | `theorem` | [sign_mul_self_eq_abs](../../../../../mathematics/Algebra/GroupTheory/Int/Variantd7c80c75767155904dd2348ad59ee5b77df872ca9eb76c6e1799a5aef2aba44a.lean/declarations/sign-mul-self-eq-abs--1c92b41be19910f7fcbbdacf.md) | 55 | `result-track:1c92b41be19910f7fcbbdacf00a2b62e6cda1aef69e73e009185e1cbdd778be2` |
| 7 | `lemma` | [natAbs_le_self_sq](../../../../../mathematics/Algebra/GroupTheory/Int/Variantd7c80c75767155904dd2348ad59ee5b77df872ca9eb76c6e1799a5aef2aba44a.lean/declarations/natabs-le-self-sq--135a565a6189e377d52ff4f2.md) | 58 | `result-track:135a565a6189e377d52ff4f2aa05483abff696821e463ca67924c1f05fc90aaf` |
| 8 | `lemma` | [le_self_sq](../../../../../mathematics/Algebra/GroupTheory/Int/Variantd7c80c75767155904dd2348ad59ee5b77df872ca9eb76c6e1799a5aef2aba44a.lean/declarations/le-self-sq--ec03ea5330a32ee10f935644.md) | 65 | `result-track:ec03ea5330a32ee10f935644ee5cc5fa11eecbb48004a4585deb1d74d9f52e4b` |
| 9 | `lemma` | [abs_natCast](../../../../../mathematics/Algebra/GroupTheory/Int/Variantd7c80c75767155904dd2348ad59ee5b77df872ca9eb76c6e1799a5aef2aba44a.lean/declarations/abs-natcast--5d46e0f48e20e3e2ce7f0694.md) | 69 | `result-track:5d46e0f48e20e3e2ce7f0694fe1956e4de4ba044af5bd768f4553586a9ae0c33` |
| 10 | `theorem` | [natAbs_sub_pos_iff](../../../../../mathematics/Algebra/GroupTheory/Int/Variantd7c80c75767155904dd2348ad59ee5b77df872ca9eb76c6e1799a5aef2aba44a.lean/declarations/natabs-sub-pos-iff--74fb6055eae8738936d73d15.md) | 71 | `result-track:74fb6055eae8738936d73d15aedf9866d3fa30a540fb6e0e0fdcc69459b79a59` |
| 11 | `theorem` | [natAbs_sub_ne_zero_iff](../../../../../mathematics/Algebra/GroupTheory/Int/Variantd7c80c75767155904dd2348ad59ee5b77df872ca9eb76c6e1799a5aef2aba44a.lean/declarations/natabs-sub-ne-zero-iff--e5a0798214cb22ba6e9b2b89.md) | 74 | `result-track:e5a0798214cb22ba6e9b2b8901e6bb928b28e8202a734c2995a89b2e55c6045e` |
| 12 | `theorem` | [abs_lt_one_iff](../../../../../mathematics/Algebra/GroupTheory/Int/Variantd7c80c75767155904dd2348ad59ee5b77df872ca9eb76c6e1799a5aef2aba44a.lean/declarations/abs-lt-one-iff--9fa74ee4b4128edbebbe80d6.md) | 78 | `result-track:9fa74ee4b4128edbebbe80d67f9db93b46ffec17abf90ad831259dced5768cb2` |
| 13 | `theorem` | [abs_le_one_iff](../../../../../mathematics/Algebra/GroupTheory/Int/Variantd7c80c75767155904dd2348ad59ee5b77df872ca9eb76c6e1799a5aef2aba44a.lean/declarations/abs-le-one-iff--3829e92d35cd1e062010ebb7.md) | 81 | `result-track:3829e92d35cd1e062010ebb78cf1d3322903d5d5ec06bcf9e5ac5ca4e36224bf` |
| 14 | `theorem` | [one_le_abs](../../../../../mathematics/Algebra/GroupTheory/Int/Variantd7c80c75767155904dd2348ad59ee5b77df872ca9eb76c6e1799a5aef2aba44a.lean/declarations/one-le-abs--0f08d5b35ebac6b583129aeb.md) | 91 | `result-track:0f08d5b35ebac6b583129aeb6d55b08c44228998ff339e9080c2cb60a7ae60ab` |
| 15 | `lemma` | [eq_zero_of_abs_lt_dvd](../../../../../mathematics/Algebra/GroupTheory/Int/Variantd7c80c75767155904dd2348ad59ee5b77df872ca9eb76c6e1799a5aef2aba44a.lean/declarations/eq-zero-of-abs-lt-dvd--e5604c145bb15f59ea5af8af.md) | 94 | `result-track:e5604c145bb15f59ea5af8afe85aa434c27c2be150c38f2bb161fa5d8ed424fa` |
| 16 | `lemma` | [abs_sub_lt_of_lt_lt](../../../../../mathematics/Algebra/GroupTheory/Int/Variantd7c80c75767155904dd2348ad59ee5b77df872ca9eb76c6e1799a5aef2aba44a.lean/declarations/abs-sub-lt-of-lt-lt--c34f41fe57658aaf342aa486.md) | 100 | `result-track:c34f41fe57658aaf342aa4863fa8f226256b8770d52cd7a2534204be51012a61` |
| 17 | `theorem` | [ediv_eq_zero_of_lt_abs](../../../../../mathematics/Algebra/GroupTheory/Int/Variantd7c80c75767155904dd2348ad59ee5b77df872ca9eb76c6e1799a5aef2aba44a.lean/declarations/ediv-eq-zero-of-lt-abs--f6ed82038a510ed2161579fd.md) | 105 | `result-track:f6ed82038a510ed2161579fd7f6a02a870459b6b8079c0bda46838f62566d65a` |
| 18 | `theorem` | [emod_abs](../../../../../mathematics/Algebra/GroupTheory/Int/Variantd7c80c75767155904dd2348ad59ee5b77df872ca9eb76c6e1799a5aef2aba44a.lean/declarations/emod-abs--62d86596ba82aacd386dd6ba.md) | 113 | `result-track:62d86596ba82aacd386dd6ba166a3e81a0d6455051b463ee55766b282a064acb` |
| 19 | `theorem` | [emod_lt_abs](../../../../../mathematics/Algebra/GroupTheory/Int/Variantd7c80c75767155904dd2348ad59ee5b77df872ca9eb76c6e1799a5aef2aba44a.lean/declarations/emod-lt-abs--277f579526080dfc50df2b44.md) | 116 | `result-track:277f579526080dfc50df2b448809ef16209ac668afdcbaf078d391a8365cdcf4` |
| 20 | `theorem` | [abs_ediv_le_abs](../../../../../mathematics/Algebra/GroupTheory/Int/Variantd7c80c75767155904dd2348ad59ee5b77df872ca9eb76c6e1799a5aef2aba44a.lean/declarations/abs-ediv-le-abs--5fda6cd063e72e3949ae6aad.md) | 121 | `result-track:5fda6cd063e72e3949ae6aad57a83c9b55b3d0299ff0d54dd63bbd780e183b6c` |
| 21 | `theorem` | [abs_sign_of_nonzero](../../../../../mathematics/Algebra/GroupTheory/Int/Variantd7c80c75767155904dd2348ad59ee5b77df872ca9eb76c6e1799a5aef2aba44a.lean/declarations/abs-sign-of-nonzero--128a870bac8b3df2eac19e9e.md) | 134 | `result-track:128a870bac8b3df2eac19e9e360f0e5dfdba86beb2c4aa4b0f03cea265454f69` |
| 22 | `theorem` | [sign_eq_ediv_abs'](../../../../../mathematics/Algebra/GroupTheory/Int/Variantd7c80c75767155904dd2348ad59ee5b77df872ca9eb76c6e1799a5aef2aba44a.lean/declarations/sign-eq-ediv-abs--7477ddaac9fed58cf112e072.md) | 137 | `result-track:7477ddaac9fed58cf112e0723c4a539ca32dac21d442599c62d7a0c83993ef69` |
| 23 | `theorem` | [sign_eq_abs_ediv](../../../../../mathematics/Algebra/GroupTheory/Int/Variantd7c80c75767155904dd2348ad59ee5b77df872ca9eb76c6e1799a5aef2aba44a.lean/declarations/sign-eq-abs-ediv--e4ffc247171962376e1d5f7d.md) | 143 | `result-track:e4ffc247171962376e1d5f7d7999081392e02b63e71ac9e1edcad39a563e6db7` |
| 24 | `lemma` | [zpow_abs_eq_one](../../../../../mathematics/Algebra/GroupTheory/Int/Variantd7c80c75767155904dd2348ad59ee5b77df872ca9eb76c6e1799a5aef2aba44a.lean/declarations/zpow-abs-eq-one--04093983cb0b1a73f603859a.md) | 153 | `result-track:04093983cb0b1a73f603859a6967374020a84c98f9a74e73b679f197685e9483` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
