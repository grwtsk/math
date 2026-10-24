# Verification target: GRWTSK.Algebra.GroupTheory.Squarefree.Variant5545aa7902c2b65ccaedbbaf53e40fc516e5f5cb58311c2c9f76a78a006d43c8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cdf88fd873e1d27988d87e3218063091f23eeec3",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Squarefree/Variant5545aa7902c2b65ccaedbbaf53e40fc516e5f5cb58311c2c9f76a78a006d43c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Squarefree/Variant5545aa7902c2b65ccaedbbaf53e40fc516e5f5cb58311c2c9f76a78a006d43c8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Squarefree/Variant5545aa7902c2b65ccaedbbaf53e40fc516e5f5cb58311c2c9f76a78a006d43c8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cdf88fd873e1d27988d87e3218063091f23eeec3`.

Source path: `GRWTSK/Algebra/GroupTheory/Squarefree/Variant5545aa7902c2b65ccaedbbaf53e40fc516e5f5cb58311c2c9f76a78a006d43c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Squarefree/Variant5545aa7902c2b65ccaedbbaf53e40fc516e5f5cb58311c2c9f76a78a006d43c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.UniqueFactorizationDomain` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Squarefree](../../../../../mathematics/Algebra/GroupTheory/Squarefree/Variant5545aa7902c2b65ccaedbbaf53e40fc516e5f5cb58311c2c9f76a78a006d43c8.lean/declarations/squarefree--fb0f195e5a408ca2a1786c46.md) | 36 | `declaration-track:fb0f195e5a408ca2a1786c46996e50d2d436615631eb3ea9c9be82249551a846` |
| 2 | `theorem` | [IsUnit.squarefree](../../../../../mathematics/Algebra/GroupTheory/Squarefree/Variant5545aa7902c2b65ccaedbbaf53e40fc516e5f5cb58311c2c9f76a78a006d43c8.lean/declarations/isunit-squarefree--8b24162e9746efc0c40596f0.md) | 41 | `result-track:8b24162e9746efc0c40596f077c177feed9c733a551eed4de9d7466404691ec2` |
| 3 | `theorem` | [squarefree_one](../../../../../mathematics/Algebra/GroupTheory/Squarefree/Variant5545aa7902c2b65ccaedbbaf53e40fc516e5f5cb58311c2c9f76a78a006d43c8.lean/declarations/squarefree-one--6dc4e4311a4f7ea2be2652ea.md) | 46 | `result-track:6dc4e4311a4f7ea2be2652ea20d458d8a67a1048a4880a679b2b87f0a0c579a2` |
| 4 | `theorem` | [not_squarefree_zero](../../../../../mathematics/Algebra/GroupTheory/Squarefree/Variant5545aa7902c2b65ccaedbbaf53e40fc516e5f5cb58311c2c9f76a78a006d43c8.lean/declarations/not-squarefree-zero--201b1a246a52f2df9320c580.md) | 51 | `result-track:201b1a246a52f2df9320c580622df4fefb61644e129735310155a62e9688f670` |
| 5 | `theorem` | [Squarefree.ne_zero](../../../../../mathematics/Algebra/GroupTheory/Squarefree/Variant5545aa7902c2b65ccaedbbaf53e40fc516e5f5cb58311c2c9f76a78a006d43c8.lean/declarations/squarefree-ne-zero--def8c87aed65df7f0f225138.md) | 56 | `result-track:def8c87aed65df7f0f22513876a2b670a22f8632fa745d89a1d502b4a841f629` |
| 6 | `theorem` | [Irreducible.squarefree](../../../../../mathematics/Algebra/GroupTheory/Squarefree/Variant5545aa7902c2b65ccaedbbaf53e40fc516e5f5cb58311c2c9f76a78a006d43c8.lean/declarations/irreducible-squarefree--8b25d837c2dad92c8bd89679.md) | 63 | `result-track:8b25d837c2dad92c8bd8967928748f632d2efaf3395ce2920cad0e0ffc5275ec` |
| 7 | `theorem` | [Prime.squarefree](../../../../../mathematics/Algebra/GroupTheory/Squarefree/Variant5545aa7902c2b65ccaedbbaf53e40fc516e5f5cb58311c2c9f76a78a006d43c8.lean/declarations/prime-squarefree--965eb6f62f2523f36b7f83c2.md) | 72 | `result-track:965eb6f62f2523f36b7f83c2fa17ac017ad004fbb1bcb22e49f0003081e0c65f` |
| 8 | `theorem` | [Squarefree.of_mul_left](../../../../../mathematics/Algebra/GroupTheory/Squarefree/Variant5545aa7902c2b65ccaedbbaf53e40fc516e5f5cb58311c2c9f76a78a006d43c8.lean/declarations/squarefree-of-mul-left--7b3c0b75fe983d1552230a8f.md) | 76 | `result-track:7b3c0b75fe983d1552230a8fc0aa18fadab7a23e4abdc61b076a0c0cffc340f8` |
| 9 | `theorem` | [Squarefree.of_mul_right](../../../../../mathematics/Algebra/GroupTheory/Squarefree/Variant5545aa7902c2b65ccaedbbaf53e40fc516e5f5cb58311c2c9f76a78a006d43c8.lean/declarations/squarefree-of-mul-right--467f57c9e73f20bf23a2803e.md) | 80 | `result-track:467f57c9e73f20bf23a2803e40f463184bb0c64cce72a5fb16256694b75a82ee` |
| 10 | `theorem` | [Squarefree.squarefree_of_dvd](../../../../../mathematics/Algebra/GroupTheory/Squarefree/Variant5545aa7902c2b65ccaedbbaf53e40fc516e5f5cb58311c2c9f76a78a006d43c8.lean/declarations/squarefree-squarefree-of-dvd--5124ef0308bd99f52a3868dd.md) | 84 | `result-track:5124ef0308bd99f52a3868ddd805257eae7c4585d4eb64af17cddd9c338af60f` |
| 11 | `theorem` | [Squarefree.gcd_right](../../../../../mathematics/Algebra/GroupTheory/Squarefree/Variant5545aa7902c2b65ccaedbbaf53e40fc516e5f5cb58311c2c9f76a78a006d43c8.lean/declarations/squarefree-gcd-right--0d317811411ad76a0a579bf6.md) | 92 | `result-track:0d317811411ad76a0a579bf6e783f5067ce365686af35fec5b4d344017ba2408` |
| 12 | `theorem` | [Squarefree.gcd_left](../../../../../mathematics/Algebra/GroupTheory/Squarefree/Variant5545aa7902c2b65ccaedbbaf53e40fc516e5f5cb58311c2c9f76a78a006d43c8.lean/declarations/squarefree-gcd-left--aee25817a81e584b8d5f535d.md) | 96 | `result-track:aee25817a81e584b8d5f535d7df8f157adce78370cc8408bcb37fbae4c7c231f` |
| 13 | `theorem` | [squarefree_iff_multiplicity_le_one](../../../../../mathematics/Algebra/GroupTheory/Squarefree/Variant5545aa7902c2b65ccaedbbaf53e40fc516e5f5cb58311c2c9f76a78a006d43c8.lean/declarations/squarefree-iff-multiplicity-le-one--e00474fe63f0da8a6551d0dd.md) | 108 | `result-track:e00474fe63f0da8a6551d0ddb32981d5fcdcd74ea6fec3f1dac4963cf20594b6` |
| 14 | `theorem` | [finite_prime_left](../../../../../mathematics/Algebra/GroupTheory/Squarefree/Variant5545aa7902c2b65ccaedbbaf53e40fc516e5f5cb58311c2c9f76a78a006d43c8.lean/declarations/finite-prime-left--e5cfa0ae4b61ab4c36655fb4.md) | 122 | `result-track:e5cfa0ae4b61ab4c36655fb479e6c187547295324249eeee49459ef308a5747a` |
| 15 | `theorem` | [irreducible_sq_not_dvd_iff_eq_zero_and_no_irreducibles_or_squarefree](../../../../../mathematics/Algebra/GroupTheory/Squarefree/Variant5545aa7902c2b65ccaedbbaf53e40fc516e5f5cb58311c2c9f76a78a006d43c8.lean/declarations/irreducible-sq-not-dvd-iff-eq-zero-and-no-irreducibles-or-squarefree--bb9d12205fdff1fc21cbfcd6.md) | 149 | `result-track:bb9d12205fdff1fc21cbfcd6ea5a7b501e43bde76e8be7fdcd884b01cf4c876b` |
| 16 | `theorem` | [squarefree_iff_irreducible_sq_not_dvd_of_ne_zero](../../../../../mathematics/Algebra/GroupTheory/Squarefree/Variant5545aa7902c2b65ccaedbbaf53e40fc516e5f5cb58311c2c9f76a78a006d43c8.lean/declarations/squarefree-iff-irreducible-sq-not-dvd-of-ne-zero--1856207ed99bdad39dd344ba.md) | 171 | `result-track:1856207ed99bdad39dd344baced07aee018f7a97d949f1c501efe92f393dd0a1` |
| 17 | `theorem` | [squarefree_iff_irreducible_sq_not_dvd_of_exists_irreducible](../../../../../mathematics/Algebra/GroupTheory/Squarefree/Variant5545aa7902c2b65ccaedbbaf53e40fc516e5f5cb58311c2c9f76a78a006d43c8.lean/declarations/squarefree-iff-irreducible-sq-not-dvd-of-exists-irreducible--7c270986d3813ccaeedefa23.md) | 176 | `result-track:7c270986d3813ccaeedefa232c8ea39f65de019ca067d32f4d8b42c7185ea7ab` |
| 18 | `theorem` | [IsRadical.squarefree](../../../../../mathematics/Algebra/GroupTheory/Squarefree/Variant5545aa7902c2b65ccaedbbaf53e40fc516e5f5cb58311c2c9f76a78a006d43c8.lean/declarations/isradical-squarefree--361dca8b0b3a1914a6c18925.md) | 188 | `result-track:361dca8b0b3a1914a6c189254bdcb406a9ce40542412181c2f80776cad2d9b6e` |
| 19 | `theorem` | [Squarefree.isRadical](../../../../../mathematics/Algebra/GroupTheory/Squarefree/Variant5545aa7902c2b65ccaedbbaf53e40fc516e5f5cb58311c2c9f76a78a006d43c8.lean/declarations/squarefree-isradical--9416c13a7eda9a5aca6a6400.md) | 197 | `result-track:9416c13a7eda9a5aca6a64008e66046f92a1c7cba207e7e96aabfa9163b21782` |
| 20 | `theorem` | [isRadical_iff_squarefree_or_zero](../../../../../mathematics/Algebra/GroupTheory/Squarefree/Variant5545aa7902c2b65ccaedbbaf53e40fc516e5f5cb58311c2c9f76a78a006d43c8.lean/declarations/isradical-iff-squarefree-or-zero--2390817082c1222b3477d4f8.md) | 213 | `result-track:2390817082c1222b3477d4f84ee2518f7ebf65bb3e813cb33ac7af7daa703d74` |
| 21 | `theorem` | [isRadical_iff_squarefree_of_ne_zero](../../../../../mathematics/Algebra/GroupTheory/Squarefree/Variant5545aa7902c2b65ccaedbbaf53e40fc516e5f5cb58311c2c9f76a78a006d43c8.lean/declarations/isradical-iff-squarefree-of-ne-zero--dbd1044b0aaac4353f079b9b.md) | 221 | `result-track:dbd1044b0aaac4353f079b9b48a41dd6d6b97291b2f8932047b58b15ef6a4bb2` |
| 22 | `theorem` | [squarefree_iff_nodup_normalizedFactors](../../../../../mathematics/Algebra/GroupTheory/Squarefree/Variant5545aa7902c2b65ccaedbbaf53e40fc516e5f5cb58311c2c9f76a78a006d43c8.lean/declarations/squarefree-iff-nodup-normalizedfactors--c91313a3b54075dc2fc6a6a5.md) | 231 | `result-track:c91313a3b54075dc2fc6a6a505c4eab495f973fe9e3c9ea3fb7afcbe2d0e2ea1` |
| 23 | `theorem` | [dvd_pow_iff_dvd_of_squarefree](../../../../../mathematics/Algebra/GroupTheory/Squarefree/Variant5545aa7902c2b65ccaedbbaf53e40fc516e5f5cb58311c2c9f76a78a006d43c8.lean/declarations/dvd-pow-iff-dvd-of-squarefree--919dbdfcdef377cb6d6c9023.md) | 257 | `result-track:919dbdfcdef377cb6d6c9023471deb76f9629687e0c81ce13d2997a8c20275e6` |
| 24 | `theorem` | [squarefree_natAbs](../../../../../mathematics/Algebra/GroupTheory/Squarefree/Variant5545aa7902c2b65ccaedbbaf53e40fc516e5f5cb58311c2c9f76a78a006d43c8.lean/declarations/squarefree-natabs--06a39bf0f59eed9419738fbc.md) | 269 | `result-track:06a39bf0f59eed9419738fbc772cee61a2515e29bebe2da5a03dbb09571ee06a` |
| 25 | `theorem` | [squarefree_coe_nat](../../../../../mathematics/Algebra/GroupTheory/Squarefree/Variant5545aa7902c2b65ccaedbbaf53e40fc516e5f5cb58311c2c9f76a78a006d43c8.lean/declarations/squarefree-coe-nat--5e69232d48d0d11dbde000ed.md) | 275 | `result-track:5e69232d48d0d11dbde000edfd4ecc75abf47d98f83be3c33bcd0dc06bfdd6ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
