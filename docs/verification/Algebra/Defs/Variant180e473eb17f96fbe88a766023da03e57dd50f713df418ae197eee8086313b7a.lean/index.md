# Verification target: GRWTSK.Algebra.Defs.Variant180e473eb17f96fbe88a766023da03e57dd50f713df418ae197eee8086313b7a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f94fea45a17181902b9f504edcfaf75629fdd6ee",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variant180e473eb17f96fbe88a766023da03e57dd50f713df418ae197eee8086313b7a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Defs/Variant180e473eb17f96fbe88a766023da03e57dd50f713df418ae197eee8086313b7a.lean/index.md) · [Full source](../../../../mathematics/Algebra/Defs/Variant180e473eb17f96fbe88a766023da03e57dd50f713df418ae197eee8086313b7a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f94fea45a17181902b9f504edcfaf75629fdd6ee`.

Source path: `GRWTSK/Algebra/Defs/Variant180e473eb17f96fbe88a766023da03e57dd50f713df418ae197eee8086313b7a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variant180e473eb17f96fbe88a766023da03e57dd50f713df418ae197eee8086313b7a.lean.json)

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
| 1 | `class` | [EuclideanDomain](../../../../mathematics/Algebra/Defs/Variant180e473eb17f96fbe88a766023da03e57dd50f713df418ae197eee8086313b7a.lean/declarations/euclideandomain--7302314479eebef51f67ffee.md) | 82 | `declaration-track:7302314479eebef51f67ffeed0646fd0549ef664fbad33c2fb3c74bd4fef8997` |
| 2 | `instance` | [wellFoundedRelation](../../../../mathematics/Algebra/Defs/Variant180e473eb17f96fbe88a766023da03e57dd50f713df418ae197eee8086313b7a.lean/declarations/wellfoundedrelation--0ef07e074ea5719661c2b965.md) | 123 | `declaration-track:0ef07e074ea5719661c2b9655c2de19a335669ebd22973e23512229a3ed56aee` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant180e473eb17f96fbe88a766023da03e57dd50f713df418ae197eee8086313b7a.lean/declarations/instance--3e78cc39b915d31dfefef74c.md) | 128 | `declaration-track:3e78cc39b915d31dfefef74c45cf42aa30d4b4d6fb3494bb4f9b490d6b78b66b` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant180e473eb17f96fbe88a766023da03e57dd50f713df418ae197eee8086313b7a.lean/declarations/instance--ee39e7c991e4a12e390217ea.md) | 132 | `declaration-track:ee39e7c991e4a12e390217ea8c701b9379b8991cb4356b7a34fba1775e617737` |
| 5 | `theorem` | [div_add_mod](../../../../mathematics/Algebra/Defs/Variant180e473eb17f96fbe88a766023da03e57dd50f713df418ae197eee8086313b7a.lean/declarations/div-add-mod--0bcfcc24aaa55f90bf06ba21.md) | 135 | `result-track:0bcfcc24aaa55f90bf06ba217d34d042afce6c43ae84d9f424bc6b89758bc4ca` |
| 6 | `theorem` | [mod_add_div](../../../../mathematics/Algebra/Defs/Variant180e473eb17f96fbe88a766023da03e57dd50f713df418ae197eee8086313b7a.lean/declarations/mod-add-div--0e663ff8af8ffe4df61d66e2.md) | 138 | `result-track:0e663ff8af8ffe4df61d66e2ee913d7a8497bfd289ada82b330f5c3d7494b3b3` |
| 7 | `theorem` | [mod_add_div'](../../../../mathematics/Algebra/Defs/Variant180e473eb17f96fbe88a766023da03e57dd50f713df418ae197eee8086313b7a.lean/declarations/mod-add-div--8bb171b6aa773fa74a34d8b8.md) | 141 | `result-track:8bb171b6aa773fa74a34d8b8880441421c76976f02061fbce097d6bea8193dc1` |
| 8 | `theorem` | [div_add_mod'](../../../../mathematics/Algebra/Defs/Variant180e473eb17f96fbe88a766023da03e57dd50f713df418ae197eee8086313b7a.lean/declarations/div-add-mod--06ad81bd2d79274a9a5e9fc8.md) | 145 | `result-track:06ad81bd2d79274a9a5e9fc8e2a7f6b2f947aefef0993995bcd08d9307c017ee` |
| 9 | `theorem` | [mod_lt](../../../../mathematics/Algebra/Defs/Variant180e473eb17f96fbe88a766023da03e57dd50f713df418ae197eee8086313b7a.lean/declarations/mod-lt--4672f9042d2bfee6f705061c.md) | 149 | `result-track:4672f9042d2bfee6f705061cfa04f6edfbb91d59c9e30c29ffa6e39b20eb6516` |
| 10 | `theorem` | [mul_right_not_lt](../../../../mathematics/Algebra/Defs/Variant180e473eb17f96fbe88a766023da03e57dd50f713df418ae197eee8086313b7a.lean/declarations/mul-right-not-lt--f29341e1df076fe8b199969d.md) | 152 | `result-track:f29341e1df076fe8b199969d6b275584bcb46ba0fc554d2fd99a30347015d21b` |
| 11 | `theorem` | [mod_zero](../../../../mathematics/Algebra/Defs/Variant180e473eb17f96fbe88a766023da03e57dd50f713df418ae197eee8086313b7a.lean/declarations/mod-zero--2b29647711a238e680fbbee1.md) | 157 | `result-track:2b29647711a238e680fbbee1e1e0aecf97b5f0d3d9b8d69de81b5f6e8e85dcf8` |
| 12 | `theorem` | [lt_one](../../../../mathematics/Algebra/Defs/Variant180e473eb17f96fbe88a766023da03e57dd50f713df418ae197eee8086313b7a.lean/declarations/lt-one--15e109d555378cd06d13146c.md) | 159 | `result-track:15e109d555378cd06d13146c73da86ebaa51a333aab2bb2eee02a7ba9033eb6c` |
| 13 | `theorem` | [div_zero](../../../../mathematics/Algebra/Defs/Variant180e473eb17f96fbe88a766023da03e57dd50f713df418ae197eee8086313b7a.lean/declarations/div-zero--6e0347366bb4b866c69c2a63.md) | 164 | `result-track:6e0347366bb4b866c69c2a63025259d95eebaf661563e5b1f4e180b2dff2da6a` |
| 14 | `theorem` | [GCD.induction](../../../../mathematics/Algebra/Defs/Variant180e473eb17f96fbe88a766023da03e57dd50f713df418ae197eee8086313b7a.lean/declarations/gcd-induction--8128212673e8cae8ac5f641b.md) | 170 | `result-track:8128212673e8cae8ac5f641b1bb40cfc30c2da88d16fe02bbe0caef602d8e5e4` |
| 15 | `def` | [gcd](../../../../mathematics/Algebra/Defs/Variant180e473eb17f96fbe88a766023da03e57dd50f713df418ae197eee8086313b7a.lean/declarations/gcd--6ecad5d5101ec058edf33de6.md) | 188 | `declaration-track:6ecad5d5101ec058edf33de6d744dba41f89fc881c4b63c83fd810fc55c8caad` |
| 16 | `theorem` | [gcd_zero_left](../../../../mathematics/Algebra/Defs/Variant180e473eb17f96fbe88a766023da03e57dd50f713df418ae197eee8086313b7a.lean/declarations/gcd-zero-left--8fd3149c5409ba261ad9b287.md) | 196 | `result-track:8fd3149c5409ba261ad9b2872832dcf93234ebdb8cdebf2e71b2a2124eacf485` |
| 17 | `def` | [xgcdAux](../../../../mathematics/Algebra/Defs/Variant180e473eb17f96fbe88a766023da03e57dd50f713df418ae197eee8086313b7a.lean/declarations/xgcdaux--fc3407a9c3128b3fe364b5ab.md) | 209 | `declaration-track:fc3407a9c3128b3fe364b5abfdbb9c6db808d19261a0e920d015b072bb12a3d1` |
| 18 | `theorem` | [xgcd_zero_left](../../../../mathematics/Algebra/Defs/Variant180e473eb17f96fbe88a766023da03e57dd50f713df418ae197eee8086313b7a.lean/declarations/xgcd-zero-left--7f9934fe3f58be0330554f0b.md) | 218 | `result-track:7f9934fe3f58be0330554f0bfd0c7b0b34fe7527e237b73157414f02a28f2079` |
| 19 | `theorem` | [xgcdAux_rec](../../../../mathematics/Algebra/Defs/Variant180e473eb17f96fbe88a766023da03e57dd50f713df418ae197eee8086313b7a.lean/declarations/xgcdaux-rec--b0dcc17f7e804a9e7ca6b542.md) | 222 | `result-track:b0dcc17f7e804a9e7ca6b542f8ca6cdb5b983475fa4eecb07850ac920e50bb61` |
| 20 | `def` | [xgcd](../../../../mathematics/Algebra/Defs/Variant180e473eb17f96fbe88a766023da03e57dd50f713df418ae197eee8086313b7a.lean/declarations/xgcd--d765e15f3626fca2da573502.md) | 231 | `declaration-track:d765e15f3626fca2da573502ce03b649bb8bf2c031202e2b3df910fd5c04fa07` |
| 21 | `def` | [gcdA](../../../../mathematics/Algebra/Defs/Variant180e473eb17f96fbe88a766023da03e57dd50f713df418ae197eee8086313b7a.lean/declarations/gcda--14fc67086ac8a1c909b3c4c6.md) | 235 | `declaration-track:14fc67086ac8a1c909b3c4c6f949b3b2d17e3faead350866317f4ba02a8921e2` |
| 22 | `def` | [gcdB](../../../../mathematics/Algebra/Defs/Variant180e473eb17f96fbe88a766023da03e57dd50f713df418ae197eee8086313b7a.lean/declarations/gcdb--3f95cf30993baea0cfbd6c90.md) | 239 | `declaration-track:3f95cf30993baea0cfbd6c90da838be84aeb026a0e8610c25de742f2f03d0d36` |
| 23 | `theorem` | [gcdA_zero_left](../../../../mathematics/Algebra/Defs/Variant180e473eb17f96fbe88a766023da03e57dd50f713df418ae197eee8086313b7a.lean/declarations/gcda-zero-left--341430bf29f8071556695b2d.md) | 243 | `result-track:341430bf29f8071556695b2dac6a609403a67b2840cfa20f537755a3e725bb44` |
| 24 | `theorem` | [gcdB_zero_left](../../../../mathematics/Algebra/Defs/Variant180e473eb17f96fbe88a766023da03e57dd50f713df418ae197eee8086313b7a.lean/declarations/gcdb-zero-left--9b2cbdf9f8160f237c8ff47b.md) | 248 | `result-track:9b2cbdf9f8160f237c8ff47b38188f22f28c4726471fdb3a71d95fc93b6f01f7` |
| 25 | `theorem` | [xgcd_val](../../../../mathematics/Algebra/Defs/Variant180e473eb17f96fbe88a766023da03e57dd50f713df418ae197eee8086313b7a.lean/declarations/xgcd-val--7d4141d5d54124299c493a93.md) | 252 | `result-track:7d4141d5d54124299c493a9323bcb7cb2cffe2dd132e21639f93b33415a80a0c` |
| 26 | `def` | [lcm](../../../../mathematics/Algebra/Defs/Variant180e473eb17f96fbe88a766023da03e57dd50f713df418ae197eee8086313b7a.lean/declarations/lcm--2c35f525434fcbcd930ad578.md) | 263 | `declaration-track:2c35f525434fcbcd930ad578739b683b5ad50c133cdc1d8b66ee5ff80ab983e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
