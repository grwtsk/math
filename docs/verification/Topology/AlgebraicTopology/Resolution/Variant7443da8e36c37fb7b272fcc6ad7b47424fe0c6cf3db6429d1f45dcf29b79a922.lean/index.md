# Verification target: GRWTSK.Topology.AlgebraicTopology.Resolution.Variant7443da8e36c37fb7b272fcc6ad7b47424fe0c6cf3db6429d1f45dcf29b79a922

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "53d6753f1f508ffbe2c5450ff7de59e8e71ba6f5",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/Resolution/Variant7443da8e36c37fb7b272fcc6ad7b47424fe0c6cf3db6429d1f45dcf29b79a922.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7443da8e36c37fb7b272fcc6ad7b47424fe0c6cf3db6429d1f45dcf29b79a922.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7443da8e36c37fb7b272fcc6ad7b47424fe0c6cf3db6429d1f45dcf29b79a922.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `53d6753f1f508ffbe2c5450ff7de59e8e71ba6f5`.

Source path: `GRWTSK/Topology/AlgebraicTopology/Resolution/Variant7443da8e36c37fb7b272fcc6ad7b47424fe0c6cf3db6429d1f45dcf29b79a922.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/Resolution/Variant7443da8e36c37fb7b272fcc6ad7b47424fe0c6cf3db6429d1f45dcf29b79a922.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Preadditive.Injective.Resolution` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.HomotopyCategory` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Subsingleton` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.AdaptationNote` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [descFZero](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7443da8e36c37fb7b272fcc6ad7b47424fe0c6cf3db6429d1f45dcf29b79a922.lean/declarations/descfzero--ecd9564ce6ae8c93214fce99.md) | 50 | `declaration-track:ecd9564ce6ae8c93214fce99ea15997d5afa6f2a947338d776c0ecbef854402a` |
| 2 | `lemma` | [exact₀](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7443da8e36c37fb7b272fcc6ad7b47424fe0c6cf3db6429d1f45dcf29b79a922.lean/declarations/exact--751c7b16808c33b3a8423d62.md) | 60 | `result-track:751c7b16808c33b3a8423d620cb6fec34094e47680fd2711064e1c7688a6572d` |
| 3 | `def` | [descFOne](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7443da8e36c37fb7b272fcc6ad7b47424fe0c6cf3db6429d1f45dcf29b79a922.lean/declarations/descfone--d8cc6438ab3df589dc641ef5.md) | 65 | `declaration-track:d8cc6438ab3df589dc641ef552f585e802e9a6407adfb3197bfe3dad426e8567` |
| 4 | `theorem` | [descFOne_zero_comm](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7443da8e36c37fb7b272fcc6ad7b47424fe0c6cf3db6429d1f45dcf29b79a922.lean/declarations/descfone-zero-comm--d806829416cf770aec853a1f.md) | 71 | `result-track:d806829416cf770aec853a1fd8980f5a73806292bed039fa2ce87d8c94652e27` |
| 5 | `def` | [descFSucc](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7443da8e36c37fb7b272fcc6ad7b47424fe0c6cf3db6429d1f45dcf29b79a922.lean/declarations/descfsucc--a25298bf360b6f6d995fec82.md) | 77 | `declaration-track:a25298bf360b6f6d995fec8252a0515508c190d7ea0228a8ec2e62b9badddeac` |
| 6 | `def` | [desc](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7443da8e36c37fb7b272fcc6ad7b47424fe0c6cf3db6429d1f45dcf29b79a922.lean/declarations/desc--52f1948460418e70f981ff65.md) | 87 | `declaration-track:52f1948460418e70f981ff65088ca922dfb1f89869bc8956175c65957d6dc0e5` |
| 7 | `theorem` | [desc_commutes](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7443da8e36c37fb7b272fcc6ad7b47424fe0c6cf3db6429d1f45dcf29b79a922.lean/declarations/desc-commutes--6da430d57c7db62b91648d62.md) | 94 | `result-track:6da430d57c7db62b91648d620f0e18bf438863d5b5ccd3ccdb3b7cf63713dab6` |
| 8 | `lemma` | [desc_commutes_zero](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7443da8e36c37fb7b272fcc6ad7b47424fe0c6cf3db6429d1f45dcf29b79a922.lean/declarations/desc-commutes-zero--a5071eb4c3aae16aa6f9bf6b.md) | 100 | `result-track:a5071eb4c3aae16aa6f9bf6bee44dba996b786437fec90419036f5081333b656` |
| 9 | `def` | [descHomotopyZeroZero](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7443da8e36c37fb7b272fcc6ad7b47424fe0c6cf3db6429d1f45dcf29b79a922.lean/declarations/deschomotopyzerozero--8faf039e3987808446db5343.md) | 107 | `declaration-track:8faf039e3987808446db5343279ccaefe67611c19d0f32f3b6fe2f2316dea356` |
| 10 | `lemma` | [comp_descHomotopyZeroZero](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7443da8e36c37fb7b272fcc6ad7b47424fe0c6cf3db6429d1f45dcf29b79a922.lean/declarations/comp-deschomotopyzerozero--e2f13144a76786498c669821.md) | 112 | `result-track:e2f13144a76786498c66982152b3a5004fb50585bdecdc6390742377727341b6` |
| 11 | `def` | [descHomotopyZeroOne](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7443da8e36c37fb7b272fcc6ad7b47424fe0c6cf3db6429d1f45dcf29b79a922.lean/declarations/deschomotopyzeroone--666c78922d7c9c8446d1d398.md) | 118 | `declaration-track:666c78922d7c9c8446d1d398578b456c145517b5e6410d50b93257aa20c9a752` |
| 12 | `lemma` | [comp_descHomotopyZeroOne](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7443da8e36c37fb7b272fcc6ad7b47424fe0c6cf3db6429d1f45dcf29b79a922.lean/declarations/comp-deschomotopyzeroone--8edb6a2025e8ac1b2e87df81.md) | 126 | `result-track:8edb6a2025e8ac1b2e87df8152a1ba3c905ce29fc5303932a7941d4a1200c9eb` |
| 13 | `def` | [descHomotopyZeroSucc](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7443da8e36c37fb7b272fcc6ad7b47424fe0c6cf3db6429d1f45dcf29b79a922.lean/declarations/deschomotopyzerosucc--432dd3d6b0eacc5e349b7acc.md) | 133 | `declaration-track:432dd3d6b0eacc5e349b7accecadaeaf6766068c59716475e105a95f3e1c21b5` |
| 14 | `lemma` | [comp_descHomotopyZeroSucc](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7443da8e36c37fb7b272fcc6ad7b47424fe0c6cf3db6429d1f45dcf29b79a922.lean/declarations/comp-deschomotopyzerosucc--e6817e44a047af7078ca6f44.md) | 145 | `result-track:e6817e44a047af7078ca6f440c1d1cd6e41c4888073e3fddb6a1df6845e3893d` |
| 15 | `def` | [descHomotopyZero](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7443da8e36c37fb7b272fcc6ad7b47424fe0c6cf3db6429d1f45dcf29b79a922.lean/declarations/deschomotopyzero--b54ed69237746875aef0e972.md) | 154 | `declaration-track:b54ed69237746875aef0e972392db334f24360439720f8199d68927600f5f6bb` |
| 16 | `def` | [descHomotopy](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7443da8e36c37fb7b272fcc6ad7b47424fe0c6cf3db6429d1f45dcf29b79a922.lean/declarations/deschomotopy--8005e3217457dd7ae770d7ab.md) | 161 | `declaration-track:8005e3217457dd7ae770d7abd260ab176bdde523a7ec738197329326bb58e8c2` |
| 17 | `def` | [descIdHomotopy](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7443da8e36c37fb7b272fcc6ad7b47424fe0c6cf3db6429d1f45dcf29b79a922.lean/declarations/descidhomotopy--325c16acfb10426cd056d4e7.md) | 167 | `declaration-track:325c16acfb10426cd056d4e7ecb4e7b7e5ce048c1c338cf5e2f1bc1acf749751` |
| 18 | `def` | [descCompHomotopy](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7443da8e36c37fb7b272fcc6ad7b47424fe0c6cf3db6429d1f45dcf29b79a922.lean/declarations/desccomphomotopy--bba9ded1d297c2e6ed2bf234.md) | 172 | `declaration-track:bba9ded1d297c2e6ed2bf23433319bc5887994de7ecfdef03b5d0260a1b16a74` |
| 19 | `def` | [homotopyEquiv](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7443da8e36c37fb7b272fcc6ad7b47424fe0c6cf3db6429d1f45dcf29b79a922.lean/declarations/homotopyequiv--392ff5030cce7bfb64457135.md) | 179 | `declaration-track:392ff5030cce7bfb64457135a13c8f0bc71a2e472c8319f318adb27e74accdf0` |
| 20 | `theorem` | [homotopyEquiv_hom_ι](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7443da8e36c37fb7b272fcc6ad7b47424fe0c6cf3db6429d1f45dcf29b79a922.lean/declarations/homotopyequiv-hom--3ad293c684b63f2a99f4953b.md) | 189 | `result-track:3ad293c684b63f2a99f4953b40969ff18456e45510e3823883a4041b3d659c62` |
| 21 | `theorem` | [homotopyEquiv_inv_ι](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7443da8e36c37fb7b272fcc6ad7b47424fe0c6cf3db6429d1f45dcf29b79a922.lean/declarations/homotopyequiv-inv--82906acfd14c9bcb6798e804.md) | 193 | `result-track:82906acfd14c9bcb6798e804c744df3f897e409ad13fa0df3accf70904135bc9` |
| 22 | `abbrev` | [injectiveResolution](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7443da8e36c37fb7b272fcc6ad7b47424fe0c6cf3db6429d1f45dcf29b79a922.lean/declarations/injectiveresolution--01903880097301ee40ecba53.md) | 205 | `declaration-track:01903880097301ee40ecba5359c63d20f4239dfa415acb32b0a84ae0c925ea54` |
| 23 | `def` | [injectiveResolutions](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7443da8e36c37fb7b272fcc6ad7b47424fe0c6cf3db6429d1f45dcf29b79a922.lean/declarations/injectiveresolutions--34ea251a526a3f5b7d383332.md) | 215 | `declaration-track:34ea251a526a3f5b7d383332dfede695384cd2b86ed5e9e761e2b78d04a35212` |
| 24 | `def` | [InjectiveResolution.iso](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7443da8e36c37fb7b272fcc6ad7b47424fe0c6cf3db6429d1f45dcf29b79a922.lean/declarations/injectiveresolution-iso--e70686c2921ccaf22af7e5e2.md) | 230 | `declaration-track:e70686c2921ccaf22af7e5e24be092741cebb34c3452e86cc639a99f673c2562` |
| 25 | `lemma` | [InjectiveResolution.iso_hom_naturality](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7443da8e36c37fb7b272fcc6ad7b47424fe0c6cf3db6429d1f45dcf29b79a922.lean/declarations/injectiveresolution-iso-hom-naturality--921eacd671a788e326e31947.md) | 236 | `result-track:921eacd671a788e326e319473d9feeeebf9144b9da8da80abdc96f5de4a71fb9` |
| 26 | `lemma` | [InjectiveResolution.iso_inv_naturality](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7443da8e36c37fb7b272fcc6ad7b47424fe0c6cf3db6429d1f45dcf29b79a922.lean/declarations/injectiveresolution-iso-inv-naturality--ddb4383a420bde45ff84e723.md) | 246 | `result-track:ddb4383a420bde45ff84e72364e99150b3d56b15f5a8e28d8efe8785b0b920e7` |
| 27 | `theorem` | [exact_f_d](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7443da8e36c37fb7b272fcc6ad7b47424fe0c6cf3db6429d1f45dcf29b79a922.lean/declarations/exact-f-d--25d36041eed0790386cc0996.md) | 260 | `result-track:25d36041eed0790386cc09960d6c367d089f050a124478406ce285a8294cde83` |
| 28 | `def` | [ofCocomplex](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7443da8e36c37fb7b272fcc6ad7b47424fe0c6cf3db6429d1f45dcf29b79a922.lean/declarations/ofcocomplex--493e203567a1c1dc0bdcbfb9.md) | 293 | `declaration-track:493e203567a1c1dc0bdcbfb9d31da69a6dc0d28e2bf92178af8458186811306d` |
| 29 | `lemma` | [ofCocomplex_d_0_1](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7443da8e36c37fb7b272fcc6ad7b47424fe0c6cf3db6429d1f45dcf29b79a922.lean/declarations/ofcocomplex-d-0-1--b3b6637411739a7c54ee1371.md) | 297 | `result-track:b3b6637411739a7c54ee13717366ed412bb054d8727e70d9542969672720a0b2` |
| 30 | `lemma` | [ofCocomplex_exactAt_succ](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7443da8e36c37fb7b272fcc6ad7b47424fe0c6cf3db6429d1f45dcf29b79a922.lean/declarations/ofcocomplex-exactat-succ--315963d48e92bd1e234a0e05.md) | 301 | `result-track:315963d48e92bd1e234a0e0572baf3d4d75a1da2cc83368409abda6df082d4a2` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7443da8e36c37fb7b272fcc6ad7b47424fe0c6cf3db6429d1f45dcf29b79a922.lean/declarations/instance--d86497c4d71be405aaf7d7e4.md) | 313 | `declaration-track:d86497c4d71be405aaf7d7e4c497e00e11ab6ab9d9174070300e00261c93669d` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7443da8e36c37fb7b272fcc6ad7b47424fe0c6cf3db6429d1f45dcf29b79a922.lean/declarations/instance--5e73075c3b3249d401a3812e.md) | 335 | `declaration-track:5e73075c3b3249d401a3812e2b963889bd3898e5e3767d95d74a1473d4d8d647` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant7443da8e36c37fb7b272fcc6ad7b47424fe0c6cf3db6429d1f45dcf29b79a922.lean/declarations/instance--cc246c65a64ef1ac6acf57c3.md) | 337 | `declaration-track:cc246c65a64ef1ac6acf57c3349a06b7929ae39fec197d7f58aa932ecab9fbce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
