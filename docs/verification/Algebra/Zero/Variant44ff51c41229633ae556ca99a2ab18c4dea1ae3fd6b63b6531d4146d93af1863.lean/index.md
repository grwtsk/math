# Verification target: GRWTSK.Algebra.Zero.Variant44ff51c41229633ae556ca99a2ab18c4dea1ae3fd6b63b6531d4146d93af1863

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b94daae17e4e24bbb42cc85788a279b3d900f36",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Zero/Variant44ff51c41229633ae556ca99a2ab18c4dea1ae3fd6b63b6531d4146d93af1863.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Zero/Variant44ff51c41229633ae556ca99a2ab18c4dea1ae3fd6b63b6531d4146d93af1863.lean/index.md) · [Full source](../../../../mathematics/Algebra/Zero/Variant44ff51c41229633ae556ca99a2ab18c4dea1ae3fd6b63b6531d4146d93af1863.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b94daae17e4e24bbb42cc85788a279b3d900f36`.

Source path: `GRWTSK/Algebra/Zero/Variant44ff51c41229633ae556ca99a2ab18c4dea1ae3fd6b63b6531d4146d93af1863.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Zero/Variant44ff51c41229633ae556ca99a2ab18c4dea1ae3fd6b63b6531d4146d93af1863.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Jacobson.Ring` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.Topology` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Ring.KrullDimLE.mem_minimalPrimes_iff](../../../../mathematics/Algebra/Zero/Variant44ff51c41229633ae556ca99a2ab18c4dea1ae3fd6b63b6531d4146d93af1863.lean/declarations/ring-krulldimle-mem-minimalprimes-iff--1326481a423d1478d726c862.md) | 30 | `result-track:1326481a423d1478d726c8625c051defef49c6b271f62211e97607854e18dc0b` |
| 2 | `lemma` | [Ring.KrullDimLE.mem_minimalPrimes_iff_le_of_isPrime](../../../../mathematics/Algebra/Zero/Variant44ff51c41229633ae556ca99a2ab18c4dea1ae3fd6b63b6531d4146d93af1863.lean/declarations/ring-krulldimle-mem-minimalprimes-iff-le-of-isprime--70bde1bc293dc4cc1381b659.md) | 34 | `result-track:70bde1bc293dc4cc1381b659ce02505711ead066d41f4d5858792f71cadd6c37` |
| 3 | `lemma` | [Ring.KrullDimLE.minimalPrimes_eq_setOf_isPrime](../../../../mathematics/Algebra/Zero/Variant44ff51c41229633ae556ca99a2ab18c4dea1ae3fd6b63b6531d4146d93af1863.lean/declarations/ring-krulldimle-minimalprimes-eq-setof-isprime--ff05bcc2efe949afd9b83645.md) | 39 | `result-track:ff05bcc2efe949afd9b83645482f9643cc0daef9d09d14fe4a4626ae6df4217e` |
| 4 | `lemma` | [Ring.KrullDimLE.minimalPrimes_eq_setOf_isMaximal](../../../../mathematics/Algebra/Zero/Variant44ff51c41229633ae556ca99a2ab18c4dea1ae3fd6b63b6531d4146d93af1863.lean/declarations/ring-krulldimle-minimalprimes-eq-setof-ismaximal--efd11acc7cfedbabb0573623.md) | 44 | `result-track:efd11acc7cfedbabb0573623d44eb0dedc563b1f3e78c0c855bae8bfecd4446e` |
| 5 | `example` | [(anonymous)](../../../../mathematics/Algebra/Zero/Variant44ff51c41229633ae556ca99a2ab18c4dea1ae3fd6b63b6531d4146d93af1863.lean/declarations/example--fa8b7079043096fe54306367.md) | 49 | `declaration-track:fa8b7079043096fe54306367f55d8ce43b50a84297f6d090354407626ca27897` |
| 6 | `lemma` | [Ring.KrullDimLE.isField_of_isDomain](../../../../mathematics/Algebra/Zero/Variant44ff51c41229633ae556ca99a2ab18c4dea1ae3fd6b63b6531d4146d93af1863.lean/declarations/ring-krulldimle-isfield-of-isdomain--ba5a510dafa5f3ae328ecc66.md) | 51 | `result-track:ba5a510dafa5f3ae328ecc6657126a3964466c4dba55e8e1f4c9d4455064dde1` |
| 7 | `lemma` | [ringKrullDimZero_iff_ringKrullDim_eq_zero](../../../../mathematics/Algebra/Zero/Variant44ff51c41229633ae556ca99a2ab18c4dea1ae3fd6b63b6531d4146d93af1863.lean/declarations/ringkrulldimzero-iff-ringkrulldim-eq-zero--82967fb693e0f82136191028.md) | 57 | `result-track:82967fb693e0f82136191028402c64f1f6808098a275fdf06e0ac319e367fccc` |
| 8 | `lemma` | [Ring.krullDimLE_zero_and_isLocalRing_tfae](../../../../mathematics/Algebra/Zero/Variant44ff51c41229633ae556ca99a2ab18c4dea1ae3fd6b63b6531d4146d93af1863.lean/declarations/ring-krulldimle-zero-and-islocalring-tfae--a10f07bdd521b3668a83522b.md) | 67 | `result-track:a10f07bdd521b3668a83522b0e6e21c0591eafd39ce97c0a5e33ccf97e340ef7` |
| 9 | `lemma` | [le_isUnit_iff_zero_notMem](../../../../mathematics/Algebra/Zero/Variant44ff51c41229633ae556ca99a2ab18c4dea1ae3fd6b63b6531d4146d93af1863.lean/declarations/le-isunit-iff-zero-notmem--ed52d37a6f76abf06609c39c.md) | 94 | `result-track:ed52d37a6f76abf06609c39c78ab64502551bc9b84a027402f8c9a0936b64037` |
| 10 | `theorem` | [Ring.KrullDimLE.existsUnique_isPrime](../../../../mathematics/Algebra/Zero/Variant44ff51c41229633ae556ca99a2ab18c4dea1ae3fd6b63b6531d4146d93af1863.lean/declarations/ring-krulldimle-existsunique-isprime--8d5a03202b3803ead47723cd.md) | 103 | `result-track:8d5a03202b3803ead47723cd31faa82f19ae7b5066ef8abe74794b882af0109b` |
| 11 | `theorem` | [Ring.KrullDimLE.eq_maximalIdeal_of_isPrime](../../../../mathematics/Algebra/Zero/Variant44ff51c41229633ae556ca99a2ab18c4dea1ae3fd6b63b6531d4146d93af1863.lean/declarations/ring-krulldimle-eq-maximalideal-of-isprime--db44b68784fb59dcf860e329.md) | 107 | `result-track:db44b68784fb59dcf860e3293ed874b1c252cf6b96424b47e1d76fba93e1cf17` |
| 12 | `lemma` | [Ring.KrullDimLE.radical_eq_maximalIdeal](../../../../mathematics/Algebra/Zero/Variant44ff51c41229633ae556ca99a2ab18c4dea1ae3fd6b63b6531d4146d93af1863.lean/declarations/ring-krulldimle-radical-eq-maximalideal--50c096a69d439032628e8770.md) | 112 | `result-track:50c096a69d439032628e877011bc52feeb0d671a1e0d06a3dfb05d085d58ca12` |
| 13 | `theorem` | [Ring.KrullDimLE.subsingleton_primeSpectrum](../../../../mathematics/Algebra/Zero/Variant44ff51c41229633ae556ca99a2ab18c4dea1ae3fd6b63b6531d4146d93af1863.lean/declarations/ring-krulldimle-subsingleton-primespectrum--ccd881318f4ae1dab529fcd3.md) | 121 | `result-track:ccd881318f4ae1dab529fcd36855aa833605a5205f31f42d2300243447b4b28c` |
| 14 | `theorem` | [Ring.KrullDimLE.isNilpotent_iff_mem_maximalIdeal](../../../../mathematics/Algebra/Zero/Variant44ff51c41229633ae556ca99a2ab18c4dea1ae3fd6b63b6531d4146d93af1863.lean/declarations/ring-krulldimle-isnilpotent-iff-mem-maximalideal--5109e2ceac0cae0a2f8de8c0.md) | 126 | `result-track:5109e2ceac0cae0a2f8de8c0ba4947966b1703944d3f2c14572052b1df79d4a4` |
| 15 | `theorem` | [Ring.KrullDimLE.isNilpotent_iff_mem_nonunits](../../../../mathematics/Algebra/Zero/Variant44ff51c41229633ae556ca99a2ab18c4dea1ae3fd6b63b6531d4146d93af1863.lean/declarations/ring-krulldimle-isnilpotent-iff-mem-nonunits--3f0cc8cc24c7317eef59faf2.md) | 130 | `result-track:3f0cc8cc24c7317eef59faf29d3bb572ae59e45588081967689d014409ce958b` |
| 16 | `theorem` | [Ring.KrullDimLE.nilradical_eq_maximalIdeal](../../../../mathematics/Algebra/Zero/Variant44ff51c41229633ae556ca99a2ab18c4dea1ae3fd6b63b6531d4146d93af1863.lean/declarations/ring-krulldimle-nilradical-eq-maximalideal--7d4823b157bd529f03a33274.md) | 135 | `result-track:7d4823b157bd529f03a33274780fb2c2c8c5abbc69fd6d304392724ee77c14fd` |
| 17 | `theorem` | [IsLocalRing.of_isMaximal_nilradical](../../../../mathematics/Algebra/Zero/Variant44ff51c41229633ae556ca99a2ab18c4dea1ae3fd6b63b6531d4146d93af1863.lean/declarations/islocalring-of-ismaximal-nilradical--ca96edb2c4dda34346fc4536.md) | 141 | `result-track:ca96edb2c4dda34346fc45369df73388d44894567ffbbf52c95ce8680abdc0e1` |
| 18 | `theorem` | [Ring.KrullDimLE.of_isMaximal_nilradical](../../../../mathematics/Algebra/Zero/Variant44ff51c41229633ae556ca99a2ab18c4dea1ae3fd6b63b6531d4146d93af1863.lean/declarations/ring-krulldimle-of-ismaximal-nilradical--a1a280d22db0ae4028fdf463.md) | 147 | `result-track:a1a280d22db0ae4028fdf4633d8902f32574f672733a438e1d592897f469b019` |
| 19 | `lemma` | [Ring.KrullDimLE.of_isLocalization](../../../../mathematics/Algebra/Zero/Variant44ff51c41229633ae556ca99a2ab18c4dea1ae3fd6b63b6531d4146d93af1863.lean/declarations/ring-krulldimle-of-islocalization--7337471d90d6698fbd6294b0.md) | 152 | `result-track:7337471d90d6698fbd6294b0ad09c04b724b7af63bf3a4c348c19cbaea7f1ace` |
| 20 | `lemma` | [Ring.KrullDimLE.isField_of_isReduced](../../../../mathematics/Algebra/Zero/Variant44ff51c41229633ae556ca99a2ab18c4dea1ae3fd6b63b6531d4146d93af1863.lean/declarations/ring-krulldimle-isfield-of-isreduced--5c83493a17aad811de7d40dd.md) | 158 | `result-track:5c83493a17aad811de7d40dd3b8f6cf4706785a8e8caba1c460834b0fb1712b1` |
| 21 | `instance` | [PrimeSpectrum.unique_of_ringKrullDimLE_zero](../../../../mathematics/Algebra/Zero/Variant44ff51c41229633ae556ca99a2ab18c4dea1ae3fd6b63b6531d4146d93af1863.lean/declarations/primespectrum-unique-of-ringkrulldimle-zero--73a7d5dc3f735348a4417571.md) | 162 | `declaration-track:73a7d5dc3f735348a4417571036fe1e2f994e7100b9bb44e9f9d87137bc83a15` |
| 22 | `lemma` | [Ideal.jacobson_eq_radical](../../../../mathematics/Algebra/Zero/Variant44ff51c41229633ae556ca99a2ab18c4dea1ae3fd6b63b6531d4146d93af1863.lean/declarations/ideal-jacobson-eq-radical--41665a9fd2914bfa9a2a636d.md) | 174 | `result-track:41665a9fd2914bfa9a2a636d8fa36f12d1619518c617ebe1140ba966ad46dad1` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Zero/Variant44ff51c41229633ae556ca99a2ab18c4dea1ae3fd6b63b6531d4146d93af1863.lean/declarations/instance--c31f5479663b5d9a41909f57.md) | 177 | `declaration-track:c31f5479663b5d9a41909f57d87768ab1d765a3478f4b5c55cf8a4cd45f3ac5d` |
| 24 | `lemma` | [_root_.GRWTSK.Algebra.RingKrullDimLEMemMinimalPrimesIff.Variant6d20413221755dea0af8ee4af2acc66f9c011aea4992f7484d2be0a0d081016a.IsLocalization.AtPrime.prime_unique_of_minimal](../../../../mathematics/Algebra/Zero/Variant44ff51c41229633ae556ca99a2ab18c4dea1ae3fd6b63b6531d4146d93af1863.lean/declarations/root-grwtsk-algebra-ringkrulldimlememminimalprimesiff-variant6d204132217--7246c4aee6706619c209d0c5.md) | 190 | `result-track:7246c4aee6706619c209d0c51702b0b88a0f171162b51686768f7f5f1cb2ec78` |
| 25 | `def` | [localizationEquivSelfOfNilradicalIsMaximal](../../../../mathematics/Algebra/Zero/Variant44ff51c41229633ae556ca99a2ab18c4dea1ae3fd6b63b6531d4146d93af1863.lean/declarations/localizationequivselfofnilradicalismaximal--39c27ece0055b6b7df941fa6.md) | 228 | `declaration-track:39c27ece0055b6b7df941fa60175e3503bbcd2ac85501741347b64c8c5e67aaa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
