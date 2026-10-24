# Verification target: GRWTSK.NumberTheory.ZModChar.Variantc220c3eb1495757626feaa70c185d8ef57c1b90e6fde6711ea7aeeff93bae04c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e7ef7f256f9fbd9a636f426232fa8cad76ee9207",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ZModChar/Variantc220c3eb1495757626feaa70c185d8ef57c1b90e6fde6711ea7aeeff93bae04c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/ZModChar/Variantc220c3eb1495757626feaa70c185d8ef57c1b90e6fde6711ea7aeeff93bae04c.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/ZModChar/Variantc220c3eb1495757626feaa70c185d8ef57c1b90e6fde6711ea7aeeff93bae04c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e7ef7f256f9fbd9a636f426232fa8cad76ee9207`.

Source path: `GRWTSK/NumberTheory/ZModChar/Variantc220c3eb1495757626feaa70c185d8ef57c1b90e6fde6711ea7aeeff93bae04c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ZModChar/Variantc220c3eb1495757626feaa70c185d8ef57c1b90e6fde6711ea7aeeff93bae04c.lean.json)

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
| 1 | `def` | [χ₄](../../../../mathematics/NumberTheory/ZModChar/Variantc220c3eb1495757626feaa70c185d8ef57c1b90e6fde6711ea7aeeff93bae04c.lean/declarations/anonymous--5b0d7f05d9aa83a28689b8c6.md) | 50 | `declaration-track:5b0d7f05d9aa83a28689b8c6abb8d7b3a69961fdac77413eaa345e5e6bd8f758` |
| 2 | `theorem` | [isQuadratic_χ₄](../../../../mathematics/NumberTheory/ZModChar/Variantc220c3eb1495757626feaa70c185d8ef57c1b90e6fde6711ea7aeeff93bae04c.lean/declarations/isquadratic--9a45752c258dd27585d10c5b.md) | 61 | `result-track:9a45752c258dd27585d10c5b4149dd48d6a05954c1438e38e988d5ea1894c083` |
| 3 | `theorem` | [χ₄_nat_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variantc220c3eb1495757626feaa70c185d8ef57c1b90e6fde6711ea7aeeff93bae04c.lean/declarations/nat-mod-four--17efe79ff90431f4948fc187.md) | 66 | `result-track:17efe79ff90431f4948fc1877a84172d72f0114c6e5e48a2987bccbaee6bc7cc` |
| 4 | `theorem` | [χ₄_int_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variantc220c3eb1495757626feaa70c185d8ef57c1b90e6fde6711ea7aeeff93bae04c.lean/declarations/int-mod-four--61d4323ba2529688a491774d.md) | 69 | `result-track:61d4323ba2529688a491774d18530ea919c8c7ed90093cb592c8ad7095cbce3e` |
| 5 | `theorem` | [χ₄_int_eq_if_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variantc220c3eb1495757626feaa70c185d8ef57c1b90e6fde6711ea7aeeff93bae04c.lean/declarations/int-eq-if-mod-four--cd35c203f586fdaddeb93c8c.md) | 73 | `result-track:cd35c203f586fdaddeb93c8c8f2578a1859862f5647d26472ca06b14ed86d1c4` |
| 6 | `theorem` | [χ₄_nat_eq_if_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variantc220c3eb1495757626feaa70c185d8ef57c1b90e6fde6711ea7aeeff93bae04c.lean/declarations/nat-eq-if-mod-four--2a1cf21a59c10eec9389e1f5.md) | 80 | `result-track:2a1cf21a59c10eec9389e1f57f60408ef464d6f2dbd325e459adf9c8700a70f7` |
| 7 | `theorem` | [χ₄_eq_neg_one_pow](../../../../mathematics/NumberTheory/ZModChar/Variantc220c3eb1495757626feaa70c185d8ef57c1b90e6fde6711ea7aeeff93bae04c.lean/declarations/eq-neg-one-pow--02513d7fd51ce0cad2872e34.md) | 85 | `result-track:02513d7fd51ce0cad2872e341f637d4a5290e8e6a21cb252abb5d978ff42576a` |
| 8 | `theorem` | [χ₄_nat_one_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variantc220c3eb1495757626feaa70c185d8ef57c1b90e6fde6711ea7aeeff93bae04c.lean/declarations/nat-one-mod-four--b3cdf64286569ebb4a04b8ac.md) | 96 | `result-track:b3cdf64286569ebb4a04b8acf226bf9ff96ff7cc640c3c60e76bab5b05e2df07` |
| 9 | `theorem` | [χ₄_nat_three_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variantc220c3eb1495757626feaa70c185d8ef57c1b90e6fde6711ea7aeeff93bae04c.lean/declarations/nat-three-mod-four--79c43760fcb9003db643431d.md) | 101 | `result-track:79c43760fcb9003db643431dc180371e7d728c58b7e88bd190984269662c91e3` |
| 10 | `theorem` | [χ₄_int_one_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variantc220c3eb1495757626feaa70c185d8ef57c1b90e6fde6711ea7aeeff93bae04c.lean/declarations/int-one-mod-four--c54b4fbdb7f710542b42fad9.md) | 106 | `result-track:c54b4fbdb7f710542b42fad97e6ebb2760b49d41bb034a06a3b9b890e2163d52` |
| 11 | `theorem` | [χ₄_int_three_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variantc220c3eb1495757626feaa70c185d8ef57c1b90e6fde6711ea7aeeff93bae04c.lean/declarations/int-three-mod-four--cb8436894628c195fd6d6bbe.md) | 111 | `result-track:cb8436894628c195fd6d6bbe831d68c84a5c62a42412ac6b94764a245e0119dc` |
| 12 | `theorem` | [neg_one_pow_div_two_of_one_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variantc220c3eb1495757626feaa70c185d8ef57c1b90e6fde6711ea7aeeff93bae04c.lean/declarations/neg-one-pow-div-two-of-one-mod-four--430b90b737f8931d170320af.md) | 116 | `result-track:430b90b737f8931d170320af975b755063efdd2fd658b54903ed3af7a7ef31a1` |
| 13 | `theorem` | [neg_one_pow_div_two_of_three_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variantc220c3eb1495757626feaa70c185d8ef57c1b90e6fde6711ea7aeeff93bae04c.lean/declarations/neg-one-pow-div-two-of-three-mod-four--4c9edc835794d087be27307a.md) | 120 | `result-track:4c9edc835794d087be27307a25e7348490206d92dbba7bc938ac0af94cd65928` |
| 14 | `def` | [χ₈](../../../../mathematics/NumberTheory/ZModChar/Variantc220c3eb1495757626feaa70c185d8ef57c1b90e6fde6711ea7aeeff93bae04c.lean/declarations/anonymous--a66543632469fb7f2467ffab.md) | 126 | `declaration-track:a66543632469fb7f2467ffab8f337fb39f18a2027fd5d04fa88856c1cbfa2291` |
| 15 | `theorem` | [isQuadratic_χ₈](../../../../mathematics/NumberTheory/ZModChar/Variantc220c3eb1495757626feaa70c185d8ef57c1b90e6fde6711ea7aeeff93bae04c.lean/declarations/isquadratic--4258d5d3494522531505a910.md) | 137 | `result-track:4258d5d3494522531505a910d4207d6324cdfc63858aef535d0266c6aa105886` |
| 16 | `theorem` | [χ₈_nat_mod_eight](../../../../mathematics/NumberTheory/ZModChar/Variantc220c3eb1495757626feaa70c185d8ef57c1b90e6fde6711ea7aeeff93bae04c.lean/declarations/nat-mod-eight--8a2a2becb33be3e10ee6c015.md) | 142 | `result-track:8a2a2becb33be3e10ee6c015fe1daba8b8a0a24d593cfe47b9c51a1f76ec8b25` |
| 17 | `theorem` | [χ₈_int_mod_eight](../../../../mathematics/NumberTheory/ZModChar/Variantc220c3eb1495757626feaa70c185d8ef57c1b90e6fde6711ea7aeeff93bae04c.lean/declarations/int-mod-eight--9dc62cfda918d9bb58bba450.md) | 146 | `result-track:9dc62cfda918d9bb58bba4501a018791ac003bf619e603b0a86a888d20143ac9` |
| 18 | `theorem` | [χ₈_int_eq_if_mod_eight](../../../../mathematics/NumberTheory/ZModChar/Variantc220c3eb1495757626feaa70c185d8ef57c1b90e6fde6711ea7aeeff93bae04c.lean/declarations/int-eq-if-mod-eight--faebba0254a600105f6df557.md) | 150 | `result-track:faebba0254a600105f6df557dd40e717c4aa9e1daa58ef4e82bc84b0a652ace6` |
| 19 | `theorem` | [χ₈_nat_eq_if_mod_eight](../../../../mathematics/NumberTheory/ZModChar/Variantc220c3eb1495757626feaa70c185d8ef57c1b90e6fde6711ea7aeeff93bae04c.lean/declarations/nat-eq-if-mod-eight--693095257d895addb3766e54.md) | 158 | `result-track:693095257d895addb3766e54ecda988821697dbae1a6e50e36c6993efecb2a4d` |
| 20 | `def` | [χ₈'](../../../../mathematics/NumberTheory/ZModChar/Variantc220c3eb1495757626feaa70c185d8ef57c1b90e6fde6711ea7aeeff93bae04c.lean/declarations/anonymous--bf72a31b0b8ed157b0e1067d.md) | 165 | `declaration-track:bf72a31b0b8ed157b0e1067d17dbc5fbca08917922e42c4ab060544774aff832` |
| 21 | `theorem` | [isQuadratic_χ₈'](../../../../mathematics/NumberTheory/ZModChar/Variantc220c3eb1495757626feaa70c185d8ef57c1b90e6fde6711ea7aeeff93bae04c.lean/declarations/isquadratic--b1c0bb2bb2509be14a059b86.md) | 176 | `result-track:b1c0bb2bb2509be14a059b86d987255932f85adbfa7b4f4ab95496f0df2df093` |
| 22 | `theorem` | [χ₈'_int_eq_if_mod_eight](../../../../mathematics/NumberTheory/ZModChar/Variantc220c3eb1495757626feaa70c185d8ef57c1b90e6fde6711ea7aeeff93bae04c.lean/declarations/int-eq-if-mod-eight--27c12ab3f70435415ce1c0df.md) | 181 | `result-track:27c12ab3f70435415ce1c0df734afd8cab551563f542b692617ca0587149e952` |
| 23 | `theorem` | [χ₈'_nat_eq_if_mod_eight](../../../../mathematics/NumberTheory/ZModChar/Variantc220c3eb1495757626feaa70c185d8ef57c1b90e6fde6711ea7aeeff93bae04c.lean/declarations/nat-eq-if-mod-eight--fdbf38101b0d3c939e21d4ac.md) | 189 | `result-track:fdbf38101b0d3c939e21d4ace4403790da7b56a984b08f6963ea2b38c30f7b33` |
| 24 | `theorem` | [χ₈'_eq_χ₄_mul_χ₈](../../../../mathematics/NumberTheory/ZModChar/Variantc220c3eb1495757626feaa70c185d8ef57c1b90e6fde6711ea7aeeff93bae04c.lean/declarations/eq-mul--7276403bf94105f0bedef279.md) | 194 | `result-track:7276403bf94105f0bedef27923aa3cea32b5b410659e9c82a1433179487c801d` |
| 25 | `theorem` | [χ₈'_int_eq_χ₄_mul_χ₈](../../../../mathematics/NumberTheory/ZModChar/Variantc220c3eb1495757626feaa70c185d8ef57c1b90e6fde6711ea7aeeff93bae04c.lean/declarations/int-eq-mul--b3a92ad8c8ca2c14db89a94f.md) | 197 | `result-track:b3a92ad8c8ca2c14db89a94fdc7583b22747d7f11184ba972d38c2a098ebd4df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
