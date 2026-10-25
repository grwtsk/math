# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.CardinalEmb.Variantb08f1c0aee4b7f0f98e150f75985c19ba93376177f3d0504d634d4488034cc1c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dcdcfbf208753a1e8aea63502525c472b94d03a2",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variantb08f1c0aee4b7f0f98e150f75985c19ba93376177f3d0504d634d4488034cc1c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variantb08f1c0aee4b7f0f98e150f75985c19ba93376177f3d0504d634d4488034cc1c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variantb08f1c0aee4b7f0f98e150f75985c19ba93376177f3d0504d634d4488034cc1c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dcdcfbf208753a1e8aea63502525c472b94d03a2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variantb08f1c0aee4b7f0f98e150f75985c19ba93376177f3d0504d634d4488034cc1c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variantb08f1c0aee4b7f0f98e150f75985c19ba93376177f3d0504d634d4488034cc1c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [wellOrderedBasis](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variantb08f1c0aee4b7f0f98e150f75985c19ba93376177f3d0504d634d4488034cc1c.lean/declarations/wellorderedbasis--2872f2b6533bbaec345d8eac.md) | 89 | `declaration-track:2872f2b6533bbaec345d8eac7d9fa98afb94c127727efc9f0a9a2a6403320ead` |
| 2 | `theorem` | [adjoin_basis_eq_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variantb08f1c0aee4b7f0f98e150f75985c19ba93376177f3d0504d634d4488034cc1c.lean/declarations/adjoin-basis-eq-top--6fc2bb43c5a78f18015615f7.md) | 98 | `result-track:6fc2bb43c5a78f18015615f7e4af11c0aff69312557fee48a179fb71100d434a` |
| 3 | `lemma` | [noMaxOrder_rank_toType](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variantb08f1c0aee4b7f0f98e150f75985c19ba93376177f3d0504d634d4488034cc1c.lean/declarations/nomaxorder-rank-totype--dbc2ef64e6db0d173d95ca65.md) | 106 | `result-track:dbc2ef64e6db0d173d95ca65c79265a0b96d908ef318ea26e8f492fa44e9ee61` |
| 4 | `def` | [leastExt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variantb08f1c0aee4b7f0f98e150f75985c19ba93376177f3d0504d634d4488034cc1c.lean/declarations/leastext--f4ddfbca9204984cf5eeca4f.md) | 116 | `declaration-track:f4ddfbca9204984cf5eeca4f3a064c6bcc39853ae9586024b3b231fbd184e9a4` |
| 5 | `theorem` | [isLeast_leastExt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variantb08f1c0aee4b7f0f98e150f75985c19ba93376177f3d0504d634d4488034cc1c.lean/declarations/isleast-leastext--96540f3d40745af5fc31ad5e.md) | 143 | `result-track:96540f3d40745af5fc31ad5e33d98eeb8ba1c8295198ac444a09661e6ec02425` |
| 6 | `theorem` | [strictMono_leastExt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variantb08f1c0aee4b7f0f98e150f75985c19ba93376177f3d0504d634d4488034cc1c.lean/declarations/strictmono-leastext--5be78fb0f4f62034f8230fe8.md) | 147 | `result-track:5be78fb0f4f62034f8230fe844b367aaa92c8f5a1ec8bf8ad2c225cbd8d8298c` |
| 7 | `theorem` | [adjoin_image_leastExt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variantb08f1c0aee4b7f0f98e150f75985c19ba93376177f3d0504d634d4488034cc1c.lean/declarations/adjoin-image-leastext--3562f61abd980bbe8fad7c73.md) | 155 | `result-track:3562f61abd980bbe8fad7c730cd70bad66d730d58cc2f1080a578959f20c175d` |
| 8 | `theorem` | [iSup_adjoin_eq_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variantb08f1c0aee4b7f0f98e150f75985c19ba93376177f3d0504d634d4488034cc1c.lean/declarations/isup-adjoin-eq-top--3246552b4f0e5e9fad9d5152.md) | 160 | `result-track:3246552b4f0e5e9fad9d515245f1320262918ee5e1c01777eba359d4d0821b45` |
| 9 | `theorem` | [strictMono_filtration](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variantb08f1c0aee4b7f0f98e150f75985c19ba93376177f3d0504d634d4488034cc1c.lean/declarations/strictmono-filtration--d9eaf20b9fe8441afbc0aa04.md) | 166 | `result-track:d9eaf20b9fe8441afbc0aa04749656501f7447717ad4338e59799d51ffb11824` |
| 10 | `theorem` | [filtration_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variantb08f1c0aee4b7f0f98e150f75985c19ba93376177f3d0504d634d4488034cc1c.lean/declarations/filtration-succ--26f65eea96b04ce11bbe1c10.md) | 170 | `result-track:26f65eea96b04ce11bbe1c108739d1d064468ff3ad47e25565f7521c8cff7195` |
| 11 | `def` | [succEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variantb08f1c0aee4b7f0f98e150f75985c19ba93376177f3d0504d634d4488034cc1c.lean/declarations/succequiv--d56d9a4d5b1d3e7560d6cf8b.md) | 176 | `declaration-track:d56d9a4d5b1d3e7560d6cf8bb27d813a79a0b52414bc97af0acfc1b54f749ac8` |
| 12 | `theorem` | [succEquiv_coherence](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variantb08f1c0aee4b7f0f98e150f75985c19ba93376177f3d0504d634d4488034cc1c.lean/declarations/succequiv-coherence--6589a2332f8c702df7cfbbfe.md) | 182 | `result-track:6589a2332f8c702df7cfbbfea3b81602ee6bc6dea88e785e60b97ae371f40406` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variantb08f1c0aee4b7f0f98e150f75985c19ba93376177f3d0504d634d4488034cc1c.lean/declarations/instance--0f059ddec65ef030109343cb.md) | 187 | `declaration-track:0f059ddec65ef030109343cb4bb47f75ca7b4354aabd69a4f121915a8fabd85d` |
| 14 | `theorem` | [deg_lt_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variantb08f1c0aee4b7f0f98e150f75985c19ba93376177f3d0504d634d4488034cc1c.lean/declarations/deg-lt-aleph0--7b78ae87fa7f6f40849e2142.md) | 190 | `result-track:7b78ae87fa7f6f40849e2142d4ff7ff978b3ec35e88ddadcf6124b0c4698b3c4` |
| 15 | `def` | [filtration](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variantb08f1c0aee4b7f0f98e150f75985c19ba93376177f3d0504d634d4488034cc1c.lean/declarations/filtration--35fbdc051bd4e0912ef7de38.md) | 195 | `declaration-track:35fbdc051bd4e0912ef7de3817d6b3bb059ca0e0a3a5cdb4c51a96c7d3f850f4` |
| 16 | `def` | [factor](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variantb08f1c0aee4b7f0f98e150f75985c19ba93376177f3d0504d634d4488034cc1c.lean/declarations/factor--b93aa22414b7d7a0195a95ca.md) | 204 | `declaration-track:b93aa22414b7d7a0195a95caf933cd5a80b89cec310d924b643580090158889c` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variantb08f1c0aee4b7f0f98e150f75985c19ba93376177f3d0504d634d4488034cc1c.lean/declarations/instance--931257c7d5c309760c523c63.md) | 208 | `declaration-track:931257c7d5c309760c523c6308b8b43a6145149c2d9517e5009274ef58096c24` |
| 18 | `theorem` | [two_le_deg](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variantb08f1c0aee4b7f0f98e150f75985c19ba93376177f3d0504d634d4488034cc1c.lean/declarations/two-le-deg--a4f4bb1bab9359ee87782d20.md) | 212 | `result-track:a4f4bb1bab9359ee87782d2003acee8f2b91a51d3784e54600ee41be9a85bea7` |
| 19 | `def` | [embFunctor](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variantb08f1c0aee4b7f0f98e150f75985c19ba93376177f3d0504d634d4488034cc1c.lean/declarations/embfunctor--0720c27f6c522e379e947530.md) | 227 | `declaration-track:0720c27f6c522e379e947530a7bd5630c52e069d4126ca8e59d7608ceb137fba` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variantb08f1c0aee4b7f0f98e150f75985c19ba93376177f3d0504d634d4488034cc1c.lean/declarations/instance--e7a4bf9169014adbcf545dbe.md) | 230 | `declaration-track:e7a4bf9169014adbcf545dbe3a53cdd254314677af3cb34b21a9477ebf458fde` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variantb08f1c0aee4b7f0f98e150f75985c19ba93376177f3d0504d634d4488034cc1c.lean/declarations/instance--64b195692940df874a04b483.md) | 235 | `declaration-track:64b195692940df874a04b483ab91023ddff5e7f6b223fada95c39ae91e8e7653` |
| 22 | `def` | [equivSucc](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variantb08f1c0aee4b7f0f98e150f75985c19ba93376177f3d0504d634d4488034cc1c.lean/declarations/equivsucc--6192bd153cef36201a6b987e.md) | 238 | `declaration-track:6192bd153cef36201a6b987e8c495184f5893b54c9eec75c1f9df437b91e8502` |
| 23 | `theorem` | [equivSucc_coherence](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variantb08f1c0aee4b7f0f98e150f75985c19ba93376177f3d0504d634d4488034cc1c.lean/declarations/equivsucc-coherence--df5ee7d5c4745c1a7c46b024.md) | 244 | `result-track:df5ee7d5c4745c1a7c46b024ce5a609dc1d9c81043ad750f0c6269621b96e3a3` |
| 24 | `theorem` | [directed_filtration](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variantb08f1c0aee4b7f0f98e150f75985c19ba93376177f3d0504d634d4488034cc1c.lean/declarations/directed-filtration--ec6ac24d6116c86850eaa5eb.md) | 251 | `result-track:ec6ac24d6116c86850eaa5eba5dbd67f351f86f1685ae156b2f91938653df893` |
| 25 | `theorem` | [iSup_filtration](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variantb08f1c0aee4b7f0f98e150f75985c19ba93376177f3d0504d634d4488034cc1c.lean/declarations/isup-filtration--e6b2cf6cb9fcc85b18efaae0.md) | 258 | `result-track:e6b2cf6cb9fcc85b18efaae0b8fd0d770bb3d6b610145f000f98fd23680f4ed3` |
| 26 | `lemma` | [eq_bot_of_not_nonempty](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variantb08f1c0aee4b7f0f98e150f75985c19ba93376177f3d0504d634d4488034cc1c.lean/declarations/eq-bot-of-not-nonempty--521fe44e95f6ad8e9692146d.md) | 268 | `result-track:521fe44e95f6ad8e9692146d9a3422454bb2e27e96bba71fb11c5a2c1e361563` |
| 27 | `def` | [equivLim](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variantb08f1c0aee4b7f0f98e150f75985c19ba93376177f3d0504d634d4488034cc1c.lean/declarations/equivlim--d39f2411e512c247b19d75b1.md) | 278 | `declaration-track:d39f2411e512c247b19d75b1247fa8cd5533fe3900d03e28e01130763afb0cc8` |
| 28 | `theorem` | [equivLim_coherence](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variantb08f1c0aee4b7f0f98e150f75985c19ba93376177f3d0504d634d4488034cc1c.lean/declarations/equivlim-coherence--412c9502e91d9f4ac0d4e05a.md) | 299 | `result-track:412c9502e91d9f4ac0d4e05aa00a6a5821d045249421633084e3a5454908d2f0` |
| 29 | `def` | [embEquivPi](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variantb08f1c0aee4b7f0f98e150f75985c19ba93376177f3d0504d634d4488034cc1c.lean/declarations/embequivpi--ca7c70e2e0d557c10ff76fa9.md) | 305 | `declaration-track:ca7c70e2e0d557c10ff76fa947b862ca475ef7d60c766434793427a407ca20a6` |
| 30 | `theorem` | [cardinal_eq_two_pow_rank](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variantb08f1c0aee4b7f0f98e150f75985c19ba93376177f3d0504d634d4488034cc1c.lean/declarations/cardinal-eq-two-pow-rank--33686e436722f962e57adf26.md) | 319 | `result-track:33686e436722f962e57adf26ca42c07bf4dcdf515258b82d2a3905bab1bfb329` |
| 31 | `theorem` | [cardinal_eq_of_isSeparable](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variantb08f1c0aee4b7f0f98e150f75985c19ba93376177f3d0504d634d4488034cc1c.lean/declarations/cardinal-eq-of-isseparable--b414629bf2db3f8de127434a.md) | 330 | `result-track:b414629bf2db3f8de127434a4cf348aad6cd1c17c7b50b49eecc5c83a481e1c1` |
| 32 | `theorem` | [cardinal_eq_two_pow_sepDegree](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variantb08f1c0aee4b7f0f98e150f75985c19ba93376177f3d0504d634d4488034cc1c.lean/declarations/cardinal-eq-two-pow-sepdegree--230a9eee55df46d65b0a2fb3.md) | 338 | `result-track:230a9eee55df46d65b0a2fb30dbc7030ea380fab600fbad9fe4eb1fb58d5f38a` |
| 33 | `theorem` | [cardinal_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variantb08f1c0aee4b7f0f98e150f75985c19ba93376177f3d0504d634d4488034cc1c.lean/declarations/cardinal-eq--87eeca26e2d56911dabd3489.md) | 343 | `result-track:87eeca26e2d56911dabd3489dfbd7d273a1da87c58a8c7432fd923c3c74b7592` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
