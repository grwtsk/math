# Verification target: GRWTSK.Algebra.IntegralRestrict.Variant9349ad4b4047dbf915935b4276eba184244d892586d18c493a9ddd48eebabe32

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d112392a109bfa1ec4da6a15a10b36ddfd3d2433",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/IntegralRestrict/Variant9349ad4b4047dbf915935b4276eba184244d892586d18c493a9ddd48eebabe32.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/IntegralRestrict/Variant9349ad4b4047dbf915935b4276eba184244d892586d18c493a9ddd48eebabe32.lean/index.md) · [Full source](../../../../mathematics/Algebra/IntegralRestrict/Variant9349ad4b4047dbf915935b4276eba184244d892586d18c493a9ddd48eebabe32.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d112392a109bfa1ec4da6a15a10b36ddfd3d2433`.

Source path: `GRWTSK/Algebra/IntegralRestrict/Variant9349ad4b4047dbf915935b4276eba184244d892586d18c493a9ddd48eebabe32.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/IntegralRestrict/Variant9349ad4b4047dbf915935b4276eba184244d892586d18c493a9ddd48eebabe32.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.DedekindDomain.IntegralClosure` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RingHom.Finite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.LocalizationLocalization` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.NormTrace` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [galLift](../../../../mathematics/Algebra/IntegralRestrict/Variant9349ad4b4047dbf915935b4276eba184244d892586d18c493a9ddd48eebabe32.lean/declarations/gallift--1aebe39a693ef3120bad07a4.md) | 48 | `declaration-track:1aebe39a693ef3120bad07a484ebac08fc340c8a525b70ba4920ee2c27981b20` |
| 2 | `def` | [galRestrictHom](../../../../mathematics/Algebra/IntegralRestrict/Variant9349ad4b4047dbf915935b4276eba184244d892586d18c493a9ddd48eebabe32.lean/declarations/galrestricthom--2fc95d81b7dc3c38ea173f96.md) | 69 | `declaration-track:2fc95d81b7dc3c38ea173f966c816bc3bc3d8a6e3872089d3d2f4a1b050132a4` |
| 3 | `lemma` | [algebraMap_galRestrictHom_apply](../../../../mathematics/Algebra/IntegralRestrict/Variant9349ad4b4047dbf915935b4276eba184244d892586d18c493a9ddd48eebabe32.lean/declarations/algebramap-galrestricthom-apply--a8e1d4777595ee7ae4d0845d.md) | 96 | `result-track:a8e1d4777595ee7ae4d0845d2b9fbcb0439ab18a27cc8189fcfe0b438495463e` |
| 4 | `lemma` | [galRestrictHom_symm_algebraMap_apply](../../../../mathematics/Algebra/IntegralRestrict/Variant9349ad4b4047dbf915935b4276eba184244d892586d18c493a9ddd48eebabe32.lean/declarations/galrestricthom-symm-algebramap-apply--e1057de1fbc5b5d1d40fb4ac.md) | 101 | `result-track:e1057de1fbc5b5d1d40fb4ac67ab434a3e9a3869c85d7dab605676cf627526fc` |
| 5 | `def` | [galRestrict](../../../../mathematics/Algebra/IntegralRestrict/Variant9349ad4b4047dbf915935b4276eba184244d892586d18c493a9ddd48eebabe32.lean/declarations/galrestrict--914068bcc41e69cc8041ed88.md) | 109 | `declaration-track:914068bcc41e69cc8041ed88ef4e2848b654117ae2614f07336b9bc02c9277b3` |
| 6 | `lemma` | [coe_galRestrict_apply](../../../../mathematics/Algebra/IntegralRestrict/Variant9349ad4b4047dbf915935b4276eba184244d892586d18c493a9ddd48eebabe32.lean/declarations/coe-galrestrict-apply--8feaecd25d913ee8de187553.md) | 115 | `result-track:8feaecd25d913ee8de187553c1ee068839c7c50fb9f655394a84ad55553ed6e5` |
| 7 | `lemma` | [galRestrict_apply](../../../../mathematics/Algebra/IntegralRestrict/Variant9349ad4b4047dbf915935b4276eba184244d892586d18c493a9ddd48eebabe32.lean/declarations/galrestrict-apply--e26ceea534974fd0dfa5b2ae.md) | 120 | `result-track:e26ceea534974fd0dfa5b2ae4d9ebe73a48fad08aa3dbd7faf3294e85105148f` |
| 8 | `lemma` | [algebraMap_galRestrict_apply](../../../../mathematics/Algebra/IntegralRestrict/Variant9349ad4b4047dbf915935b4276eba184244d892586d18c493a9ddd48eebabe32.lean/declarations/algebramap-galrestrict-apply--38afbc806c323e4cb65e8559.md) | 123 | `result-track:38afbc806c323e4cb65e8559b41871f605fa88dcc30d4644ea154fea03ec5b3b` |
| 9 | `lemma` | [prod_galRestrict_eq_norm](../../../../mathematics/Algebra/IntegralRestrict/Variant9349ad4b4047dbf915935b4276eba184244d892586d18c493a9ddd48eebabe32.lean/declarations/prod-galrestrict-eq-norm--2659073111d45b1c19db1fbc.md) | 131 | `result-track:2659073111d45b1c19db1fbcc53c6216f53a559cc5595722bc79060ce92341e6` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/IntegralRestrict/Variant9349ad4b4047dbf915935b4276eba184244d892586d18c493a9ddd48eebabe32.lean/declarations/instance--b463330ded4aa5c4cb2df899.md) | 143 | `declaration-track:b463330ded4aa5c4cb2df8990e5880b0fc663ee64e78b35e7c8439c135390326` |
| 11 | `def` | [Algebra.intTraceAux](../../../../mathematics/Algebra/IntegralRestrict/Variant9349ad4b4047dbf915935b4276eba184244d892586d18c493a9ddd48eebabe32.lean/declarations/algebra-inttraceaux--13c2a0f4826f700d4717ed3d.md) | 163 | `declaration-track:13c2a0f4826f700d4717ed3df0f40b6e7c39292256f42ffa9a56684b55fe0023` |
| 12 | `lemma` | [Algebra.map_intTraceAux](../../../../mathematics/Algebra/IntegralRestrict/Variant9349ad4b4047dbf915935b4276eba184244d892586d18c493a9ddd48eebabe32.lean/declarations/algebra-map-inttraceaux--2173457b81f26287bbb35201.md) | 173 | `result-track:2173457b81f26287bbb35201c3ae3ff49f3e93ed13986c2a9c1afcc20dcb1a8b` |
| 13 | `def` | [Algebra.intTrace](../../../../mathematics/Algebra/IntegralRestrict/Variant9349ad4b4047dbf915935b4276eba184244d892586d18c493a9ddd48eebabe32.lean/declarations/algebra-inttrace--6bf3ac93b8e1b11be322f20b.md) | 184 | `declaration-track:6bf3ac93b8e1b11be322f20b64092ec23bfba95ee9779431cb302b63bf870187` |
| 14 | `lemma` | [Algebra.algebraMap_intTrace](../../../../mathematics/Algebra/IntegralRestrict/Variant9349ad4b4047dbf915935b4276eba184244d892586d18c493a9ddd48eebabe32.lean/declarations/algebra-algebramap-inttrace--7c17ad43f7bc4ff9fea2ccee.md) | 195 | `result-track:7c17ad43f7bc4ff9fea2ccee5fd0b31dae937c7cd3ed28db9506a73644c8779c` |
| 15 | `lemma` | [Algebra.algebraMap_intTrace_fractionRing](../../../../mathematics/Algebra/IntegralRestrict/Variant9349ad4b4047dbf915935b4276eba184244d892586d18c493a9ddd48eebabe32.lean/declarations/algebra-algebramap-inttrace-fractionring--a8186f57db5479b885efc3d0.md) | 213 | `result-track:a8186f57db5479b885efc3d0247ba887131a8d67b40fbf8a36a2051183e6ae2d` |
| 16 | `lemma` | [Algebra.intTrace_eq_trace](../../../../mathematics/Algebra/IntegralRestrict/Variant9349ad4b4047dbf915935b4276eba184244d892586d18c493a9ddd48eebabe32.lean/declarations/algebra-inttrace-eq-trace--1e06853af792de28b69e5374.md) | 226 | `result-track:1e06853af792de28b69e53743421a2b7b88b13ad8de734a191664720cbd116e1` |
| 17 | `lemma` | [Algebra.intTrace_eq_of_isLocalization](../../../../mathematics/Algebra/IntegralRestrict/Variant9349ad4b4047dbf915935b4276eba184244d892586d18c493a9ddd48eebabe32.lean/declarations/algebra-inttrace-eq-of-islocalization--576f2d58494d41765b8072fd.md) | 241 | `result-track:576f2d58494d41765b8072fdcb5c0cd30682afc45a92b14cd28b73824b60f600` |
| 18 | `def` | [Algebra.intNormAux](../../../../mathematics/Algebra/IntegralRestrict/Variant9349ad4b4047dbf915935b4276eba184244d892586d18c493a9ddd48eebabe32.lean/declarations/algebra-intnormaux--f3ac6b6f41a19d2e334eac3c.md) | 291 | `declaration-track:f3ac6b6f41a19d2e334eac3cb81db3b2e0a5affc53e8c5aeef67e07630842136` |
| 19 | `lemma` | [Algebra.map_intNormAux](../../../../mathematics/Algebra/IntegralRestrict/Variant9349ad4b4047dbf915935b4276eba184244d892586d18c493a9ddd48eebabe32.lean/declarations/algebra-map-intnormaux--ad50a46b284640fe3eb687bf.md) | 301 | `result-track:ad50a46b284640fe3eb687bf92f6e5ba116386d813da00fd7b958759ebc0440a` |
| 20 | `def` | [Algebra.intNorm](../../../../mathematics/Algebra/IntegralRestrict/Variant9349ad4b4047dbf915935b4276eba184244d892586d18c493a9ddd48eebabe32.lean/declarations/algebra-intnorm--f98678c113c58749b9fe059c.md) | 314 | `declaration-track:f98678c113c58749b9fe059c93b59609c3c4e126b2b0371f43ac5e9897bc1431` |
| 21 | `lemma` | [Algebra.algebraMap_intNorm](../../../../mathematics/Algebra/IntegralRestrict/Variant9349ad4b4047dbf915935b4276eba184244d892586d18c493a9ddd48eebabe32.lean/declarations/algebra-algebramap-intnorm--681ca2535d983f9b6372a774.md) | 325 | `result-track:681ca2535d983f9b6372a77493eee0023c252a3fdc6f919dccaac8fc5aa17889` |
| 22 | `lemma` | [Algebra.algebraMap_intNorm_fractionRing](../../../../mathematics/Algebra/IntegralRestrict/Variant9349ad4b4047dbf915935b4276eba184244d892586d18c493a9ddd48eebabe32.lean/declarations/algebra-algebramap-intnorm-fractionring--ab41d3d789cc707cebaf125c.md) | 344 | `result-track:ab41d3d789cc707cebaf125cffebc92dde0b34565a45dd3dfc226135891818d8` |
| 23 | `lemma` | [Algebra.intNorm_eq_norm](../../../../mathematics/Algebra/IntegralRestrict/Variant9349ad4b4047dbf915935b4276eba184244d892586d18c493a9ddd48eebabe32.lean/declarations/algebra-intnorm-eq-norm--db66e59243f16c245382164c.md) | 357 | `result-track:db66e59243f16c245382164cfbeff55329e5c562327abd29e4b5e5586aa0795f` |
| 24 | `lemma` | [Algebra.intNorm_zero](../../../../mathematics/Algebra/IntegralRestrict/Variant9349ad4b4047dbf915935b4276eba184244d892586d18c493a9ddd48eebabe32.lean/declarations/algebra-intnorm-zero--f78042ab643f9e6390a92180.md) | 367 | `result-track:f78042ab643f9e6390a921804bb3f18188f759f6355b1dac4991f8c1a6b6282a` |
| 25 | `lemma` | [Algebra.intNorm_eq_zero](../../../../mathematics/Algebra/IntegralRestrict/Variant9349ad4b4047dbf915935b4276eba184244d892586d18c493a9ddd48eebabe32.lean/declarations/algebra-intnorm-eq-zero--38084d323bed2fdc3e2685c1.md) | 380 | `result-track:38084d323bed2fdc3e2685c147b9a0e9b69d21d227403518007c39734a1dac66` |
| 26 | `lemma` | [Algebra.intNorm_ne_zero](../../../../mathematics/Algebra/IntegralRestrict/Variant9349ad4b4047dbf915935b4276eba184244d892586d18c493a9ddd48eebabe32.lean/declarations/algebra-intnorm-ne-zero--a0886e440c8b6d09bcbe194d.md) | 391 | `result-track:a0886e440c8b6d09bcbe194dd8ad229d9749f5403c70c6139bdfe42a63f43f93` |
| 27 | `lemma` | [Algebra.intNorm_eq_of_isLocalization](../../../../mathematics/Algebra/IntegralRestrict/Variant9349ad4b4047dbf915935b4276eba184244d892586d18c493a9ddd48eebabe32.lean/declarations/algebra-intnorm-eq-of-islocalization--f4f7eff650f73c5b924af6f6.md) | 398 | `result-track:f4f7eff650f73c5b924af6f6963d200dcb198432039ef89eaeb78eec2df17141` |
| 28 | `lemma` | [Algebra.algebraMap_intNorm_of_isGalois](../../../../mathematics/Algebra/IntegralRestrict/Variant9349ad4b4047dbf915935b4276eba184244d892586d18c493a9ddd48eebabe32.lean/declarations/algebra-algebramap-intnorm-of-isgalois--040b0531f8bbec1718379b64.md) | 440 | `result-track:040b0531f8bbec1718379b643beceaa4476c73c34d245c1f1a0c63b46ce76791` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
