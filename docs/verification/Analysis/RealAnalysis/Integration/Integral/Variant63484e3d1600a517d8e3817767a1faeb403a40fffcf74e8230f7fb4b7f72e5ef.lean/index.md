# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Integral.Variant63484e3d1600a517d8e3817767a1faeb403a40fffcf74e8230f7fb4b7f72e5ef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b8f0ae33d357eb23cd5f181288aac6bdd75e4c4f",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variant63484e3d1600a517d8e3817767a1faeb403a40fffcf74e8230f7fb4b7f72e5ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant63484e3d1600a517d8e3817767a1faeb403a40fffcf74e8230f7fb4b7f72e5ef.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant63484e3d1600a517d8e3817767a1faeb403a40fffcf74e8230f7fb4b7f72e5ef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b8f0ae33d357eb23cd5f181288aac6bdd75e4c4f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variant63484e3d1600a517d8e3817767a1faeb403a40fffcf74e8230f7fb4b7f72e5ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Integral/Variant63484e3d1600a517d8e3817767a1faeb403a40fffcf74e8230f7fb4b7f72e5ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [cfcL_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant63484e3d1600a517d8e3817767a1faeb403a40fffcf74e8230f7fb4b7f72e5ef.lean/declarations/cfcl-integral--f6658e0fcc31527194289f93.md) | 65 | `result-track:f6658e0fcc31527194289f93b1c6d26b3bfb9e3ddd5d19bb4f954be97d0a5373` |
| 2 | `lemma` | [cfcL_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant63484e3d1600a517d8e3817767a1faeb403a40fffcf74e8230f7fb4b7f72e5ef.lean/declarations/cfcl-integrable--b31e4566c389bcc08f8f089b.md) | 70 | `result-track:b31e4566c389bcc08f8f089bb42eb3357e93740c636e13d3b2f411463a4d2e42` |
| 3 | `lemma` | [cfcHom_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant63484e3d1600a517d8e3817767a1faeb403a40fffcf74e8230f7fb4b7f72e5ef.lean/declarations/cfchom-integral--2fee1e60a579015b7914c5a9.md) | 75 | `result-track:2fee1e60a579015b7914c5a993968940fade7bdc83060ba884560d5f19ac76fb` |
| 4 | `lemma` | [integrable_cfc'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant63484e3d1600a517d8e3817767a1faeb403a40fffcf74e8230f7fb4b7f72e5ef.lean/declarations/integrable-cfc--ef2e8725378d54951e2f60fe.md) | 83 | `result-track:ef2e8725378d54951e2f60fe52e6fd03f325d68857495e6d9c291ac1d1ddfa9a` |
| 5 | `lemma` | [integrableOn_cfc'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant63484e3d1600a517d8e3817767a1faeb403a40fffcf74e8230f7fb4b7f72e5ef.lean/declarations/integrableon-cfc--e3d6fb425f813e4d9854fec4.md) | 94 | `result-track:e3d6fb425f813e4d9854fec4e7663a62699362a599fae63596d15d87710676e2` |
| 6 | `lemma` | [integrable_cfc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant63484e3d1600a517d8e3817767a1faeb403a40fffcf74e8230f7fb4b7f72e5ef.lean/declarations/integrable-cfc--09d04e6bd3d8bc922b48a54a.md) | 105 | `result-track:09d04e6bd3d8bc922b48a54a952779ad14939b72a23c70b6f58be35a6b2c52c8` |
| 7 | `lemma` | [integrableOn_cfc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant63484e3d1600a517d8e3817767a1faeb403a40fffcf74e8230f7fb4b7f72e5ef.lean/declarations/integrableon-cfc--eef539b5a90f133d0a155b43.md) | 121 | `result-track:eef539b5a90f133d0a155b43f1c85888f3d92a03175b68aa21b0a0c946260185` |
| 8 | `lemma` | [cfc_integral'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant63484e3d1600a517d8e3817767a1faeb403a40fffcf74e8230f7fb4b7f72e5ef.lean/declarations/cfc-integral--4cb45539408e1089e8f77151.md) | 138 | `result-track:4cb45539408e1089e8f77151ef0a4b814db1295afe562d6aae5e8ed36855145d` |
| 9 | `lemma` | [cfc_setIntegral'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant63484e3d1600a517d8e3817767a1faeb403a40fffcf74e8230f7fb4b7f72e5ef.lean/declarations/cfc-setintegral--fa73c4b8e002302b63738480.md) | 165 | `result-track:fa73c4b8e002302b637384807f61875ac9a15f9ba6bebbb12e3b0d0b314e3d4e` |
| 10 | `lemma` | [cfc_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant63484e3d1600a517d8e3817767a1faeb403a40fffcf74e8230f7fb4b7f72e5ef.lean/declarations/cfc-integral--18c64d09f81d70eddbb30a6c.md) | 177 | `result-track:18c64d09f81d70eddbb30a6c29115ac125c4ecce17d5f4cc093ca4cbfd59819e` |
| 11 | `lemma` | [cfc_setIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant63484e3d1600a517d8e3817767a1faeb403a40fffcf74e8230f7fb4b7f72e5ef.lean/declarations/cfc-setintegral--ea958ee1da41cf5a146c5aa8.md) | 193 | `result-track:ea958ee1da41cf5a146c5aa8552fe148a57cedc8c9ba1923dbb1e95f51ab8665` |
| 12 | `lemma` | [cfcₙL_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant63484e3d1600a517d8e3817767a1faeb403a40fffcf74e8230f7fb4b7f72e5ef.lean/declarations/cfc-l-integral--7901ad161fa568585d4898c2.md) | 219 | `result-track:7901ad161fa568585d4898c257cd1157d78aab652ac51bca0b9e00bb1997dafe` |
| 13 | `lemma` | [cfcₙHom_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant63484e3d1600a517d8e3817767a1faeb403a40fffcf74e8230f7fb4b7f72e5ef.lean/declarations/cfc-hom-integral--b5c0d8ac566eb2c55ed2c7ee.md) | 224 | `result-track:b5c0d8ac566eb2c55ed2c7ee2ef3d70c07ae226c1a3cb07836b3e857b43fe81f` |
| 14 | `lemma` | [cfcₙL_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant63484e3d1600a517d8e3817767a1faeb403a40fffcf74e8230f7fb4b7f72e5ef.lean/declarations/cfc-l-integrable--6a3f2bf990efa12ad5050917.md) | 229 | `result-track:6a3f2bf990efa12ad5050917539fb2b36039a1ca0825cbf518bd49b738faab70` |
| 15 | `lemma` | [integrable_cfcₙ'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant63484e3d1600a517d8e3817767a1faeb403a40fffcf74e8230f7fb4b7f72e5ef.lean/declarations/integrable-cfc--86566f90cf792bbce8ef9261.md) | 237 | `result-track:86566f90cf792bbce8ef92616e3f983692e691b8da99d1ce567ed2c7e2bc7388` |
| 16 | `lemma` | [integrableOn_cfcₙ'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant63484e3d1600a517d8e3817767a1faeb403a40fffcf74e8230f7fb4b7f72e5ef.lean/declarations/integrableon-cfc--27c8f99f914e39dd8bc218a1.md) | 248 | `result-track:27c8f99f914e39dd8bc218a13fbd6caab2f9b925c9a24667221d5c03e12a539d` |
| 17 | `lemma` | [integrable_cfcₙ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant63484e3d1600a517d8e3817767a1faeb403a40fffcf74e8230f7fb4b7f72e5ef.lean/declarations/integrable-cfc--5b6f62f44c568d86a062c4b9.md) | 259 | `result-track:5b6f62f44c568d86a062c4b9576a5085d3cc9b22763d057016a0d151bc50dad2` |
| 18 | `lemma` | [integrableOn_cfcₙ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant63484e3d1600a517d8e3817767a1faeb403a40fffcf74e8230f7fb4b7f72e5ef.lean/declarations/integrableon-cfc--bba8852b8e104fe6c940a856.md) | 277 | `result-track:bba8852b8e104fe6c940a8567bd56e2c37f44324ba117c10432ad09b780717cd` |
| 19 | `lemma` | [cfcₙ_integral'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant63484e3d1600a517d8e3817767a1faeb403a40fffcf74e8230f7fb4b7f72e5ef.lean/declarations/cfc-integral--753bd05a68f27201fdc9eb25.md) | 295 | `result-track:753bd05a68f27201fdc9eb258cc2def5ffab7f80ce6d8d9911ae993c957b1f70` |
| 20 | `lemma` | [cfcₙ_setIntegral'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant63484e3d1600a517d8e3817767a1faeb403a40fffcf74e8230f7fb4b7f72e5ef.lean/declarations/cfc-setintegral--6c752f6d40c85683c342cf91.md) | 324 | `result-track:6c752f6d40c85683c342cf91c7da95aa90858d0c756e6d5ea26bc727313f3aac` |
| 21 | `lemma` | [cfcₙ_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant63484e3d1600a517d8e3817767a1faeb403a40fffcf74e8230f7fb4b7f72e5ef.lean/declarations/cfc-integral--dd87fe1ebbbf217979b4c655.md) | 337 | `result-track:dd87fe1ebbbf217979b4c6554f6ecc4610729f6b8762204fe1411a69a801f98f` |
| 22 | `lemma` | [cfcₙ_setIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant63484e3d1600a517d8e3817767a1faeb403a40fffcf74e8230f7fb4b7f72e5ef.lean/declarations/cfc-setintegral--9f90cdbb59697a874e52b439.md) | 355 | `result-track:9f90cdbb59697a874e52b4396013015131f676f3c8d3ad611dfb23f179a1be83` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
