# Verification target: GRWTSK.Algebra.Basic.Variant867ab04791b8dc2de9088194698e0a89c5a215ab545b33703a46948dd9edd672

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b351bcd53eb1daa38d9a0c11d41074414e24b400",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant867ab04791b8dc2de9088194698e0a89c5a215ab545b33703a46948dd9edd672.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant867ab04791b8dc2de9088194698e0a89c5a215ab545b33703a46948dd9edd672.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant867ab04791b8dc2de9088194698e0a89c5a215ab545b33703a46948dd9edd672.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b351bcd53eb1daa38d9a0c11d41074414e24b400`.

Source path: `GRWTSK/Algebra/Basic/Variant867ab04791b8dc2de9088194698e0a89c5a215ab545b33703a46948dd9edd672.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant867ab04791b8dc2de9088194698e0a89c5a215ab545b33703a46948dd9edd672.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.QuotientGroup.Finite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Quotient.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Congruence.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Defs` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [zero_eq_one_iff](../../../../mathematics/Algebra/Basic/Variant867ab04791b8dc2de9088194698e0a89c5a215ab545b33703a46948dd9edd672.lean/declarations/zero-eq-one-iff--da0fa7cbbe195ac99520da5c.md) | 41 | `result-track:da0fa7cbbe195ac99520da5caa59576bd03a39c45bc0ccb061c5d21dcd138497` |
| 2 | `theorem` | [zero_ne_one_iff](../../../../mathematics/Algebra/Basic/Variant867ab04791b8dc2de9088194698e0a89c5a215ab545b33703a46948dd9edd672.lean/declarations/zero-ne-one-iff--f0cd7058c1560f0e86b4928e.md) | 44 | `result-track:f0cd7058c1560f0e86b4928ea0012729ea030b8d79001c9914ba5300a1804bed` |
| 3 | `theorem` | [nontrivial](../../../../mathematics/Algebra/Basic/Variant867ab04791b8dc2de9088194698e0a89c5a215ab545b33703a46948dd9edd672.lean/declarations/nontrivial--f50b154af25a57fc48ab5715.md) | 47 | `result-track:f50b154af25a57fc48ab57150bc40c1239b345a5a38be9563d679eb03751501b` |
| 4 | `theorem` | [subsingleton_iff](../../../../mathematics/Algebra/Basic/Variant867ab04791b8dc2de9088194698e0a89c5a215ab545b33703a46948dd9edd672.lean/declarations/subsingleton-iff--0d7158c5e5d5edc6472ff3cb.md) | 50 | `result-track:0d7158c5e5d5edc6472ff3cb14eb09b2d028063c23beacac0ce9c8be5c9de17d` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant867ab04791b8dc2de9088194698e0a89c5a215ab545b33703a46948dd9edd672.lean/declarations/instance--3f7a44f73a0614ccf61c7b91.md) | 54 | `declaration-track:3f7a44f73a0614ccf61c7b91d2db7d254855e5e6aa47ba1f239d0573a15937e8` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant867ab04791b8dc2de9088194698e0a89c5a215ab545b33703a46948dd9edd672.lean/declarations/instance--e7fb1c18bbbc8bcece490bde.md) | 60 | `declaration-track:e7fb1c18bbbc8bcece490bdeedc0aec0ce3a0910d08071bcd1d7970bce3e0b0a` |
| 7 | `instance` | [smulCommClass](../../../../mathematics/Algebra/Basic/Variant867ab04791b8dc2de9088194698e0a89c5a215ab545b33703a46948dd9edd672.lean/declarations/smulcommclass--2ffb8195cb99094e57d3c089.md) | 64 | `declaration-track:2ffb8195cb99094e57d3c089125c2021ed3448c62e7d4b6782e346f77caaf6e2` |
| 8 | `instance` | [smulCommClass'](../../../../mathematics/Algebra/Basic/Variant867ab04791b8dc2de9088194698e0a89c5a215ab545b33703a46948dd9edd672.lean/declarations/smulcommclass--54568ece1831a08083b4e7aa.md) | 68 | `declaration-track:54568ece1831a08083b4e7aa90bf25d667ef0f94e6e5d8b8e9be8741c0b44775` |
| 9 | `theorem` | [eq_zero_iff_dvd](../../../../mathematics/Algebra/Basic/Variant867ab04791b8dc2de9088194698e0a89c5a215ab545b33703a46948dd9edd672.lean/declarations/eq-zero-iff-dvd--eff855bd6227d27fcc067b61.md) | 72 | `result-track:eff855bd6227d27fcc067b61170208e0e95dc4019e0e757aeba39a3a72ec5d62` |
| 10 | `lemma` | [mk_singleton_self](../../../../mathematics/Algebra/Basic/Variant867ab04791b8dc2de9088194698e0a89c5a215ab545b33703a46948dd9edd672.lean/declarations/mk-singleton-self--5a7902630e745805342bf145.md) | 77 | `result-track:5a7902630e745805342bf14572863a2ac9521d3aaa4a0e14f678baa6f83427f9` |
| 11 | `instance` | [noZeroDivisors](../../../../mathematics/Algebra/Basic/Variant867ab04791b8dc2de9088194698e0a89c5a215ab545b33703a46948dd9edd672.lean/declarations/nozerodivisors--05c77e0f20fa3ebdb335fc36.md) | 82 | `declaration-track:05c77e0f20fa3ebdb335fc36ccc724c84464b03bc346d8a74c0390bb99fb56e4` |
| 12 | `instance` | [isDomain](../../../../mathematics/Algebra/Basic/Variant867ab04791b8dc2de9088194698e0a89c5a215ab545b33703a46948dd9edd672.lean/declarations/isdomain--272b45d90f859c9f7a00ecbf.md) | 87 | `declaration-track:272b45d90f859c9f7a00ecbf1933204b6d9495ad2fbb18b2113e20163f35cce7` |
| 13 | `theorem` | [isDomain_iff_prime](../../../../mathematics/Algebra/Basic/Variant867ab04791b8dc2de9088194698e0a89c5a215ab545b33703a46948dd9edd672.lean/declarations/isdomain-iff-prime--8ad210cf3b82e68657c888e1.md) | 91 | `result-track:8ad210cf3b82e68657c888e1573a3f0aa074ebec6afb0f64b3ec58f22dd906aa` |
| 14 | `theorem` | [exists_inv](../../../../mathematics/Algebra/Basic/Variant867ab04791b8dc2de9088194698e0a89c5a215ab545b33703a46948dd9edd672.lean/declarations/exists-inv--b3bb4fd3ab96c680f6de9045.md) | 100 | `result-track:b3bb4fd3ab96c680f6de9045746b673f8dad37c359fedd2b92a1ade97907ae1d` |
| 15 | `abbrev` | [groupWithZero](../../../../mathematics/Algebra/Basic/Variant867ab04791b8dc2de9088194698e0a89c5a215ab545b33703a46948dd9edd672.lean/declarations/groupwithzero--e3221c741f7e14227fd62502.md) | 115 | `declaration-track:e3221c741f7e14227fd6250207039fb5af2c6966664f217013c2b25ab7778e4c` |
| 16 | `abbrev` | [divisionRing](../../../../mathematics/Algebra/Basic/Variant867ab04791b8dc2de9088194698e0a89c5a215ab545b33703a46948dd9edd672.lean/declarations/divisionring--cdcb8487167fe25ec444a8f6.md) | 128 | `declaration-track:cdcb8487167fe25ec444a8f60fb8b53a1182280e880f44fed5b4af6a0d89f5a7` |
| 17 | `abbrev` | [field](../../../../mathematics/Algebra/Basic/Variant867ab04791b8dc2de9088194698e0a89c5a215ab545b33703a46948dd9edd672.lean/declarations/field--602e16d65ed0a242c5303cd3.md) | 141 | `declaration-track:602e16d65ed0a242c5303cd34d3d95d219eaee1a5dff0be2dc7f602f035cbdc5` |
| 18 | `theorem` | [maximal_of_isField](../../../../mathematics/Algebra/Basic/Variant867ab04791b8dc2de9088194698e0a89c5a215ab545b33703a46948dd9edd672.lean/declarations/maximal-of-isfield--dd69e100a7e45de436d05295.md) | 147 | `result-track:dd69e100a7e45de436d05295150835197320d54825213323e78dd30aa782ab14` |
| 19 | `theorem` | [maximal_ideal_iff_isField_quotient](../../../../mathematics/Algebra/Basic/Variant867ab04791b8dc2de9088194698e0a89c5a215ab545b33703a46948dd9edd672.lean/declarations/maximal-ideal-iff-isfield-quotient--3d31cc67e07ba5cfc88e7491.md) | 160 | `result-track:3d31cc67e07ba5cfc88e74916a44ba8f73241531f53c114699682bc686eb5079` |
| 20 | `instance` | [modulePi](../../../../mathematics/Algebra/Basic/Variant867ab04791b8dc2de9088194698e0a89c5a215ab545b33703a46948dd9edd672.lean/declarations/modulepi--a6c8dfc25de307d2d8ac1768.md) | 174 | `declaration-track:a6c8dfc25de307d2d8ac1768e0d7df5fb7138c0308672f6f05f6dada45c5cba7` |
| 21 | `def` | [piQuotEquiv](../../../../mathematics/Algebra/Basic/Variant867ab04791b8dc2de9088194698e0a89c5a215ab545b33703a46948dd9edd672.lean/declarations/piquotequiv--c37a42c99f7ea06158afe83b.md) | 190 | `declaration-track:c37a42c99f7ea06158afe83ba216b42cf7a43f7254ef6cd14a333998d6efd933` |
| 22 | `theorem` | [map_pi](../../../../mathematics/Algebra/Basic/Variant867ab04791b8dc2de9088194698e0a89c5a215ab545b33703a46948dd9edd672.lean/declarations/map-pi--ebde138283fdeed625c4b6fc.md) | 203 | `result-track:ebde138283fdeed625c4b6fced042ac471ecc5495ff054cbf8071d84be32df61` |
| 23 | `lemma` | [univ_eq_iUnion_image_add](../../../../mathematics/Algebra/Basic/Variant867ab04791b8dc2de9088194698e0a89c5a215ab545b33703a46948dd9edd672.lean/declarations/univ-eq-iunion-image-add--91baa1f7d13a8f9d294d170d.md) | 215 | `result-track:91baa1f7d13a8f9d294d170d17cdc35943d36afe3550d4dc5414ab9b1d3d7cf3` |
| 24 | `lemma` | [_root_.Finite.of_finite_quot_finite_ideal](../../../../mathematics/Algebra/Basic/Variant867ab04791b8dc2de9088194698e0a89c5a215ab545b33703a46948dd9edd672.lean/declarations/root-finite-of-finite-quot-finite-ideal--8c92ec5a6a53b7a4fe2f833d.md) | 219 | `result-track:8c92ec5a6a53b7a4fe2f833db6981a2c32dbef5b5346d126f62cb3dcc887c389` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
