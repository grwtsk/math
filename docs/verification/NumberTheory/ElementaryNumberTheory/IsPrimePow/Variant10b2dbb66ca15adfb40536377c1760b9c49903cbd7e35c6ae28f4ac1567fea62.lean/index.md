# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.IsPrimePow.Variant10b2dbb66ca15adfb40536377c1760b9c49903cbd7e35c6ae28f4ac1567fea62

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f38e0e9a132da3263018949f5ce71189c714ded6",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variant10b2dbb66ca15adfb40536377c1760b9c49903cbd7e35c6ae28f4ac1567fea62.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variant10b2dbb66ca15adfb40536377c1760b9c49903cbd7e35c6ae28f4ac1567fea62.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variant10b2dbb66ca15adfb40536377c1760b9c49903cbd7e35c6ae28f4ac1567fea62.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f38e0e9a132da3263018949f5ce71189c714ded6`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variant10b2dbb66ca15adfb40536377c1760b9c49903cbd7e35c6ae28f4ac1567fea62.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variant10b2dbb66ca15adfb40536377c1760b9c49903cbd7e35c6ae28f4ac1567fea62.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Associated` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Divisors` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsPrimePow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variant10b2dbb66ca15adfb40536377c1760b9c49903cbd7e35c6ae28f4ac1567fea62.lean/declarations/isprimepow--8c2400c78e547bb29f50d69b.md) | 30 | `declaration-track:8c2400c78e547bb29f50d69b096740f2177ee6ad05732346dc20d4e22ba8c3a4` |
| 2 | `theorem` | [isPrimePow_def](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variant10b2dbb66ca15adfb40536377c1760b9c49903cbd7e35c6ae28f4ac1567fea62.lean/declarations/isprimepow-def--fcf60d20c32f53fa7f5f4df7.md) | 34 | `result-track:fcf60d20c32f53fa7f5f4df73d5c9a4bf32f0482660de8b71207e63479504256` |
| 3 | `theorem` | [isPrimePow_iff_pow_succ](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variant10b2dbb66ca15adfb40536377c1760b9c49903cbd7e35c6ae28f4ac1567fea62.lean/declarations/isprimepow-iff-pow-succ--0234a3eac035011e29e045cf.md) | 40 | `result-track:0234a3eac035011e29e045cfa6096f61852d63c35de2207918f984a6ba6ecc73` |
| 4 | `theorem` | [not_isPrimePow_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variant10b2dbb66ca15adfb40536377c1760b9c49903cbd7e35c6ae28f4ac1567fea62.lean/declarations/not-isprimepow-zero--03121038e6bf9482d7e28ca3.md) | 46 | `result-track:03121038e6bf9482d7e28ca30305636f2f14a82ccd8ae5f9d048148c6ff8374f` |
| 5 | `theorem` | [IsPrimePow.not_unit](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variant10b2dbb66ca15adfb40536377c1760b9c49903cbd7e35c6ae28f4ac1567fea62.lean/declarations/isprimepow-not-unit--4ced5437639dfd401134f279.md) | 53 | `result-track:4ced5437639dfd401134f279ece19691428030328a00463cc2febfd5b0c221c3` |
| 6 | `theorem` | [IsUnit.not_isPrimePow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variant10b2dbb66ca15adfb40536377c1760b9c49903cbd7e35c6ae28f4ac1567fea62.lean/declarations/isunit-not-isprimepow--6b34a7aedf5633d6fa258e82.md) | 58 | `result-track:6b34a7aedf5633d6fa258e8296bc242c1e4feddbdf8d8a3a6f91dfc5ac5f90a0` |
| 7 | `theorem` | [not_isPrimePow_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variant10b2dbb66ca15adfb40536377c1760b9c49903cbd7e35c6ae28f4ac1567fea62.lean/declarations/not-isprimepow-one--f8204e71e793486971bc108a.md) | 61 | `result-track:f8204e71e793486971bc108a1512df3880e2c7b019e442c864d549cedb6b704c` |
| 8 | `theorem` | [Prime.isPrimePow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variant10b2dbb66ca15adfb40536377c1760b9c49903cbd7e35c6ae28f4ac1567fea62.lean/declarations/prime-isprimepow--88be5039e4262c280fbe11fe.md) | 65 | `result-track:88be5039e4262c280fbe11fef41924a3f3b0417dc319ae9007c3bb60ed9eee1c` |
| 9 | `theorem` | [IsPrimePow.pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variant10b2dbb66ca15adfb40536377c1760b9c49903cbd7e35c6ae28f4ac1567fea62.lean/declarations/isprimepow-pow--9745dbe8b7c86ad91f170f5b.md) | 69 | `result-track:9745dbe8b7c86ad91f170f5b42c4dbf86f9a50fdbe199e759942ddb1e2751c2a` |
| 10 | `theorem` | [IsPrimePow.ne_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variant10b2dbb66ca15adfb40536377c1760b9c49903cbd7e35c6ae28f4ac1567fea62.lean/declarations/isprimepow-ne-zero--8b2c1efba80335e1b4ef70bc.md) | 74 | `result-track:8b2c1efba80335e1b4ef70bc06ccaaa740f277ef2685a0544643122e0e8aac4d` |
| 11 | `theorem` | [IsPrimePow.ne_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variant10b2dbb66ca15adfb40536377c1760b9c49903cbd7e35c6ae28f4ac1567fea62.lean/declarations/isprimepow-ne-one--5b98bde732347e5c07cc3964.md) | 78 | `result-track:5b98bde732347e5c07cc3964ecbdcd83642086e0b957578a4a95e2393ccc25c0` |
| 12 | `theorem` | [isPrimePow_nat_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variant10b2dbb66ca15adfb40536377c1760b9c49903cbd7e35c6ae28f4ac1567fea62.lean/declarations/isprimepow-nat-iff--e4ba9819feae424555a57ce1.md) | 84 | `result-track:e4ba9819feae424555a57ce1891f459f9f6bb7e45641de108f11dbda69c8a287` |
| 13 | `theorem` | [Nat.Prime.isPrimePow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variant10b2dbb66ca15adfb40536377c1760b9c49903cbd7e35c6ae28f4ac1567fea62.lean/declarations/nat-prime-isprimepow--cf74e9302a354bb95f26f7e0.md) | 88 | `result-track:cf74e9302a354bb95f26f7e08da3be626945186eaa174e86f61d5cf3898f5c64` |
| 14 | `theorem` | [isPrimePow_nat_iff_bounded](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variant10b2dbb66ca15adfb40536377c1760b9c49903cbd7e35c6ae28f4ac1567fea62.lean/declarations/isprimepow-nat-iff-bounded--ca9b4ed09e39441a94d386ff.md) | 92 | `result-track:ca9b4ed09e39441a94d386fffda6ef25c6eb0fbf49a9c0bd1cafb260c0f6e272` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variant10b2dbb66ca15adfb40536377c1760b9c49903cbd7e35c6ae28f4ac1567fea62.lean/declarations/instance--7ec59a95276cc75db4f12844.md) | 102 | `declaration-track:7ec59a95276cc75db4f12844ad6b299bea2251418bdbe2118077288b6d063ce7` |
| 16 | `theorem` | [IsPrimePow.dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variant10b2dbb66ca15adfb40536377c1760b9c49903cbd7e35c6ae28f4ac1567fea62.lean/declarations/isprimepow-dvd--45f890380971c751445732f3.md) | 105 | `result-track:45f890380971c751445732f39d87a8b0e9bb1ee8de81a669158b907e5fba381b` |
| 17 | `theorem` | [Nat.disjoint_divisors_filter_isPrimePow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variant10b2dbb66ca15adfb40536377c1760b9c49903cbd7e35c6ae28f4ac1567fea62.lean/declarations/nat-disjoint-divisors-filter-isprimepow--46c497af3ada940656416c2e.md) | 115 | `result-track:46c497af3ada940656416c2e1ccc7bfef8249a3d69a2b4096956babee2b204a3` |
| 18 | `theorem` | [IsPrimePow.two_le](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variant10b2dbb66ca15adfb40536377c1760b9c49903cbd7e35c6ae28f4ac1567fea62.lean/declarations/isprimepow-two-le--922a11b4c428ee9e251172cf.md) | 122 | `result-track:922a11b4c428ee9e251172cf24df4f7c861f5b8cba71dc21a76cd69864731e5d` |
| 19 | `theorem` | [IsPrimePow.pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variant10b2dbb66ca15adfb40536377c1760b9c49903cbd7e35c6ae28f4ac1567fea62.lean/declarations/isprimepow-pos--ad22b8480b795bd31c9b40fc.md) | 128 | `result-track:ad22b8480b795bd31c9b40fc93c89ba0532a306b2d3afb1738286b0e784918a8` |
| 20 | `theorem` | [IsPrimePow.one_lt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variant10b2dbb66ca15adfb40536377c1760b9c49903cbd7e35c6ae28f4ac1567fea62.lean/declarations/isprimepow-one-lt--98a1f29748d7d520340e3350.md) | 132 | `result-track:98a1f29748d7d520340e335050c104bf6eebb23862958ce99f589608926d988f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
