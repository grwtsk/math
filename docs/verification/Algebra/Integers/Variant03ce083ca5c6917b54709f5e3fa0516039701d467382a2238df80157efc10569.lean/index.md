# Verification target: GRWTSK.Algebra.Integers.Variant03ce083ca5c6917b54709f5e3fa0516039701d467382a2238df80157efc10569

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec8fbedbe1d92e0d1d16a8d1c0bf027a52129059",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Integers/Variant03ce083ca5c6917b54709f5e3fa0516039701d467382a2238df80157efc10569.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Integers/Variant03ce083ca5c6917b54709f5e3fa0516039701d467382a2238df80157efc10569.lean/index.md) · [Full source](../../../../mathematics/Algebra/Integers/Variant03ce083ca5c6917b54709f5e3fa0516039701d467382a2238df80157efc10569.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec8fbedbe1d92e0d1d16a8d1c0bf027a52129059`.

Source path: `GRWTSK/Algebra/Integers/Variant03ce083ca5c6917b54709f5e3fa0516039701d467382a2238df80157efc10569.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Integers/Variant03ce083ca5c6917b54709f5e3fa0516039701d467382a2238df80157efc10569.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Valuation.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [integer](../../../../mathematics/Algebra/Integers/Variant03ce083ca5c6917b54709f5e3fa0516039701d467382a2238df80157efc10569.lean/declarations/integer--69c735c8d5fd6ff91eb28859.md) | 28 | `declaration-track:69c735c8d5fd6ff91eb2885959fda37203c57c9fdc5c3a530646aca91503a19c` |
| 2 | `lemma` | [mem_integer_iff](../../../../mathematics/Algebra/Integers/Variant03ce083ca5c6917b54709f5e3fa0516039701d467382a2238df80157efc10569.lean/declarations/mem-integer-iff--61dd380b50b6ac0ef4ebdd5b.md) | 36 | `result-track:61dd380b50b6ac0ef4ebdd5bf895f330dc767e628a660b3b373844944734d916` |
| 3 | `structure` | [Integers](../../../../mathematics/Algebra/Integers/Variant03ce083ca5c6917b54709f5e3fa0516039701d467382a2238df80157efc10569.lean/declarations/integers--0dc1126a503664fa60fd4fce.md) | 48 | `declaration-track:0dc1126a503664fa60fd4fcefa4936af147a64836d7556c54bfa25c5ffb13629` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Integers/Variant03ce083ca5c6917b54709f5e3fa0516039701d467382a2238df80157efc10569.lean/declarations/instance--96625b0d7a950de15049ae4d.md) | 54 | `declaration-track:96625b0d7a950de15049ae4dd1fa10b5c7218325f7f7c846133727c0b69fc7e9` |
| 5 | `theorem` | [integer.integers](../../../../mathematics/Algebra/Integers/Variant03ce083ca5c6917b54709f5e3fa0516039701d467382a2238df80157efc10569.lean/declarations/integer-integers--99aaecd88d1e4c08acfe3ccc.md) | 57 | `result-track:99aaecd88d1e4c08acfe3ccc6b87988a6223b3217a9a85d350276f6a3f005d57` |
| 6 | `theorem` | [one_of_isUnit'](../../../../mathematics/Algebra/Integers/Variant03ce083ca5c6917b54709f5e3fa0516039701d467382a2238df80157efc10569.lean/declarations/one-of-isunit--be8a8956844b4dd0b415efe2.md) | 66 | `result-track:be8a8956844b4dd0b415efe22bf88d9addc54d04a3656ef04f3bc9ca3de7511a` |
| 7 | `theorem` | [one_of_isUnit](../../../../mathematics/Algebra/Integers/Variant03ce083ca5c6917b54709f5e3fa0516039701d467382a2238df80157efc10569.lean/declarations/one-of-isunit--99e52513396624c4cbaa004b.md) | 74 | `result-track:99e52513396624c4cbaa004bea556af89c0458f9591f7a9717e9d4db6409442f` |
| 8 | `theorem` | [isUnit_of_one](../../../../mathematics/Algebra/Integers/Variant03ce083ca5c6917b54709f5e3fa0516039701d467382a2238df80157efc10569.lean/declarations/isunit-of-one--edd705d9a2efe1958c8f1a05.md) | 81 | `result-track:edd705d9a2efe1958c8f1a05c22d0f388f5e9f102bfb01a9d760bf7e1553dc58` |
| 9 | `theorem` | [le_of_dvd](../../../../mathematics/Algebra/Integers/Variant03ce083ca5c6917b54709f5e3fa0516039701d467382a2238df80157efc10569.lean/declarations/le-of-dvd--d2fc5ff729eb4db48412b057.md) | 93 | `result-track:d2fc5ff729eb4db48412b0576688c8e583c3b774c928fbd92b60e9deb87b4df6` |
| 10 | `theorem` | [dvd_of_le](../../../../mathematics/Algebra/Integers/Variant03ce083ca5c6917b54709f5e3fa0516039701d467382a2238df80157efc10569.lean/declarations/dvd-of-le--12dd59d1f469319c12ced992.md) | 110 | `result-track:12dd59d1f469319c12ced99284d67542b2eaaff6315e6f3754cee4f0c5684bfb` |
| 11 | `theorem` | [dvd_iff_le](../../../../mathematics/Algebra/Integers/Variant03ce083ca5c6917b54709f5e3fa0516039701d467382a2238df80157efc10569.lean/declarations/dvd-iff-le--e98bdac38afd011fd856ed8a.md) | 125 | `result-track:e98bdac38afd011fd856ed8a9e09434ec27cd4c10fcbb91749269bcc7ba377fe` |
| 12 | `theorem` | [le_iff_dvd](../../../../mathematics/Algebra/Integers/Variant03ce083ca5c6917b54709f5e3fa0516039701d467382a2238df80157efc10569.lean/declarations/le-iff-dvd--d4bbf5ba36eb0350012444ea.md) | 129 | `result-track:d4bbf5ba36eb0350012444ea7b663f4d0361736527e7e8eb50ffb975f0871706` |
| 13 | `theorem` | [isUnit_of_one'](../../../../mathematics/Algebra/Integers/Variant03ce083ca5c6917b54709f5e3fa0516039701d467382a2238df80157efc10569.lean/declarations/isunit-of-one--1199a4abf9d3141131316366.md) | 138 | `result-track:1199a4abf9d3141131316366a8e92aab2ff5d2c15d068e26cacde78aaba56c1a` |
| 14 | `lemma` | [isUnit_iff_valuation_eq_one](../../../../mathematics/Algebra/Integers/Variant03ce083ca5c6917b54709f5e3fa0516039701d467382a2238df80157efc10569.lean/declarations/isunit-iff-valuation-eq-one--45bc861527b2360af221b586.md) | 142 | `result-track:45bc861527b2360af221b5868a0a1b8c351f42fd2f4aa3fbfd78924940eb5546` |
| 15 | `lemma` | [valuation_unit](../../../../mathematics/Algebra/Integers/Variant03ce083ca5c6917b54709f5e3fa0516039701d467382a2238df80157efc10569.lean/declarations/valuation-unit--a777ac8090080e1ee24c6520.md) | 146 | `result-track:a777ac8090080e1ee24c6520ade485ed764a96a11caa290927721ea0c61af56b` |
| 16 | `lemma` | [valuation_pos_iff_ne_zero](../../../../mathematics/Algebra/Integers/Variant03ce083ca5c6917b54709f5e3fa0516039701d467382a2238df80157efc10569.lean/declarations/valuation-pos-iff-ne-zero--2634ad4d8226e93d7128b43a.md) | 150 | `result-track:2634ad4d8226e93d7128b43a19a3af5ddd008dc3faa35f7415bae22a4e58d354` |
| 17 | `theorem` | [dvdNotUnit_iff_lt](../../../../mathematics/Algebra/Integers/Variant03ce083ca5c6917b54709f5e3fa0516039701d467382a2238df80157efc10569.lean/declarations/dvdnotunit-iff-lt--ef66ac4c6cef891a632cdb17.md) | 156 | `result-track:ef66ac4c6cef891a632cdb17ca156b2607c0755ed37e92a1969876db1a4fa382` |
| 18 | `theorem` | [eq_algebraMap_or_inv_eq_algebraMap](../../../../mathematics/Algebra/Integers/Variant03ce083ca5c6917b54709f5e3fa0516039701d467382a2238df80157efc10569.lean/declarations/eq-algebramap-or-inv-eq-algebramap--b8121f9eb289f38bf2ef93c1.md) | 169 | `result-track:b8121f9eb289f38bf2ef93c1644bf71bff7c0ead8fc41cb9f07a458096c965f0` |
| 19 | `lemma` | [bijective_algebraMap_of_subsingleton_units_mrange](../../../../mathematics/Algebra/Integers/Variant03ce083ca5c6917b54709f5e3fa0516039701d467382a2238df80157efc10569.lean/declarations/bijective-algebramap-of-subsingleton-units-mrange--1a2e9ae45104bd7097b48439.md) | 175 | `result-track:1a2e9ae45104bd7097b484391678a2c0ee318c4382967ef331ee6d96f05c6cec` |
| 20 | `lemma` | [isPrincipal_iff_exists_isGreatest](../../../../mathematics/Algebra/Integers/Variant03ce083ca5c6917b54709f5e3fa0516039701d467382a2238df80157efc10569.lean/declarations/isprincipal-iff-exists-isgreatest--110712db591fb6088808f854.md) | 184 | `result-track:110712db591fb6088808f8540979764e0002adc03149dc867b134be1938ddf7d` |
| 21 | `lemma` | [isPrincipal_iff_exists_eq_setOf_valuation_le](../../../../mathematics/Algebra/Integers/Variant03ce083ca5c6917b54709f5e3fa0516039701d467382a2238df80157efc10569.lean/declarations/isprincipal-iff-exists-eq-setof-valuation-le--3eacec803a4cd689ae128d1e.md) | 201 | `result-track:3eacec803a4cd689ae128d1eedbfac7f654866b78859951cca01dbeeb3c3fb92` |
| 22 | `lemma` | [not_denselyOrdered_of_isPrincipalIdealRing](../../../../mathematics/Algebra/Integers/Variant03ce083ca5c6917b54709f5e3fa0516039701d467382a2238df80157efc10569.lean/declarations/not-denselyordered-of-isprincipalidealring--72df0c1d0089c036664b3058.md) | 217 | `result-track:72df0c1d0089c036664b30588a8247e328011a8535e10d57b4402c07e3f81923` |
| 23 | `theorem` | [Integer.not_isUnit_iff_valuation_lt_one](../../../../mathematics/Algebra/Integers/Variant03ce083ca5c6917b54709f5e3fa0516039701d467382a2238df80157efc10569.lean/declarations/integer-not-isunit-iff-valuation-lt-one--bc97f204c8c8ed387483a9b1.md) | 245 | `result-track:bc97f204c8c8ed387483a9b17d9019fe79db2359c2695be2b3c13c4abd4ad863` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
