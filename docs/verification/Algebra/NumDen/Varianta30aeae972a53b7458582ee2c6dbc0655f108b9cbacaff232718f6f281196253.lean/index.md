# Verification target: GRWTSK.Algebra.NumDen.Varianta30aeae972a53b7458582ee2c6dbc0655f108b9cbacaff232718f6f281196253

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b75dae1ed651cb639d45055b6c760a7f93fac50",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/NumDen/Varianta30aeae972a53b7458582ee2c6dbc0655f108b9cbacaff232718f6f281196253.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/NumDen/Varianta30aeae972a53b7458582ee2c6dbc0655f108b9cbacaff232718f6f281196253.lean/index.md) · [Full source](../../../../mathematics/Algebra/NumDen/Varianta30aeae972a53b7458582ee2c6dbc0655f108b9cbacaff232718f6f281196253.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b75dae1ed651cb639d45055b6c760a7f93fac50`.

Source path: `GRWTSK/Algebra/NumDen/Varianta30aeae972a53b7458582ee2c6dbc0655f108b9cbacaff232718f6f281196253.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/NumDen/Varianta30aeae972a53b7458582ee2c6dbc0655f108b9cbacaff232718f6f281196253.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Localization.FractionRing` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Integer` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.UniqueFactorizationDomain.GCDMonoid` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_reduced_fraction](../../../../mathematics/Algebra/NumDen/Varianta30aeae972a53b7458582ee2c6dbc0655f108b9cbacaff232718f6f281196253.lean/declarations/exists-reduced-fraction--1756b996d7076125f752e748.md) | 32 | `result-track:1756b996d7076125f752e748a5845e1fbf7c7c2ece0978b531e6a520bfd7b3ec` |
| 2 | `def` | [num](../../../../mathematics/Algebra/NumDen/Varianta30aeae972a53b7458582ee2c6dbc0655f108b9cbacaff232718f6f281196253.lean/declarations/num--0f45db85e559a5bc2b851391.md) | 45 | `declaration-track:0f45db85e559a5bc2b851391dfb41fa3d896841115361f670be3f6e5093b1eb6` |
| 3 | `def` | [den](../../../../mathematics/Algebra/NumDen/Varianta30aeae972a53b7458582ee2c6dbc0655f108b9cbacaff232718f6f281196253.lean/declarations/den--1efab6075e480277b98d4861.md) | 49 | `declaration-track:1efab6075e480277b98d4861d481f19d641050381cd78ce9f2f00db20754ac99` |
| 4 | `theorem` | [num_den_reduced](../../../../mathematics/Algebra/NumDen/Varianta30aeae972a53b7458582ee2c6dbc0655f108b9cbacaff232718f6f281196253.lean/declarations/num-den-reduced--220ab053f42eed3beb9c74d2.md) | 52 | `result-track:220ab053f42eed3beb9c74d247377011345de5197dc1aa89220bf5c13d43e4d2` |
| 5 | `theorem` | [mk'_num_den](../../../../mathematics/Algebra/NumDen/Varianta30aeae972a53b7458582ee2c6dbc0655f108b9cbacaff232718f6f281196253.lean/declarations/mk-num-den--e61591092057ec9b62d2642d.md) | 56 | `result-track:e61591092057ec9b62d2642daf33c2f64dacef332c88fd635b73be957f992661` |
| 6 | `theorem` | [mk'_num_den'](../../../../mathematics/Algebra/NumDen/Varianta30aeae972a53b7458582ee2c6dbc0655f108b9cbacaff232718f6f281196253.lean/declarations/mk-num-den--76dc067d85bd7e9e1b3f81cc.md) | 60 | `result-track:76dc067d85bd7e9e1b3f81cc0baee909616f8284e851170c09b647612917887d` |
| 7 | `theorem` | [num_mul_den_eq_num_iff_eq](../../../../mathematics/Algebra/NumDen/Varianta30aeae972a53b7458582ee2c6dbc0655f108b9cbacaff232718f6f281196253.lean/declarations/num-mul-den-eq-num-iff-eq--35a041e3d852aaf4aedbb8fd.md) | 66 | `result-track:35a041e3d852aaf4aedbb8fd212214a49cca4eb815a559bad3134e6e02b37305` |
| 8 | `theorem` | [num_mul_den_eq_num_iff_eq'](../../../../mathematics/Algebra/NumDen/Varianta30aeae972a53b7458582ee2c6dbc0655f108b9cbacaff232718f6f281196253.lean/declarations/num-mul-den-eq-num-iff-eq--7cef29cdc3d638dfc60d475a.md) | 71 | `result-track:7cef29cdc3d638dfc60d475a9ddeb50d9cae6e0606d642a9f490eeac3561baee` |
| 9 | `theorem` | [num_mul_den_eq_num_mul_den_iff_eq](../../../../mathematics/Algebra/NumDen/Varianta30aeae972a53b7458582ee2c6dbc0655f108b9cbacaff232718f6f281196253.lean/declarations/num-mul-den-eq-num-mul-den-iff-eq--820616cf17f894459006f244.md) | 76 | `result-track:820616cf17f894459006f244e17eaf95cbb1a4d5cca5165e866bd38421201513` |
| 10 | `theorem` | [eq_zero_of_num_eq_zero](../../../../mathematics/Algebra/NumDen/Varianta30aeae972a53b7458582ee2c6dbc0655f108b9cbacaff232718f6f281196253.lean/declarations/eq-zero-of-num-eq-zero--88116808d4f0957d424bde42.md) | 80 | `result-track:88116808d4f0957d424bde42af6f45f7fdd6c04680a49ee62f68c9eacae6ab64` |
| 11 | `lemma` | [num_zero](../../../../mathematics/Algebra/NumDen/Varianta30aeae972a53b7458582ee2c6dbc0655f108b9cbacaff232718f6f281196253.lean/declarations/num-zero--270906587243e73ef19a25c6.md) | 84 | `result-track:270906587243e73ef19a25c64ce46a392686d35e472ef49f794c5b212b2c4587` |
| 12 | `lemma` | [num_eq_zero](../../../../mathematics/Algebra/NumDen/Varianta30aeae972a53b7458582ee2c6dbc0655f108b9cbacaff232718f6f281196253.lean/declarations/num-eq-zero--f3c35af9f740519becc65a81.md) | 94 | `result-track:f3c35af9f740519becc65a81fdbad2dd946b875bea3cb75926c62f65a1ca68ab` |
| 13 | `theorem` | [isInteger_of_isUnit_den](../../../../mathematics/Algebra/NumDen/Varianta30aeae972a53b7458582ee2c6dbc0655f108b9cbacaff232718f6f281196253.lean/declarations/isinteger-of-isunit-den--81b73d3c3987a8e391896d1a.md) | 97 | `result-track:81b73d3c3987a8e391896d1aaac448bbdb985f6e89fc6d7ced56b10d4a874185` |
| 14 | `theorem` | [isUnit_den_iff](../../../../mathematics/Algebra/NumDen/Varianta30aeae972a53b7458582ee2c6dbc0655f108b9cbacaff232718f6f281196253.lean/declarations/isunit-den-iff--a85fc88aba1eb90e9b50fd60.md) | 107 | `result-track:a85fc88aba1eb90e9b50fd60a0a66122dbdc88e0fd3f716ac6b957cf00a39690` |
| 15 | `theorem` | [isUnit_den_zero](../../../../mathematics/Algebra/NumDen/Varianta30aeae972a53b7458582ee2c6dbc0655f108b9cbacaff232718f6f281196253.lean/declarations/isunit-den-zero--1ee8bca1bde4fe560d7ea1f2.md) | 122 | `result-track:1ee8bca1bde4fe560d7ea1f250279972fa87e3de47bbcceb082112c1cffc4385` |
| 16 | `lemma` | [associated_den_num_inv](../../../../mathematics/Algebra/NumDen/Varianta30aeae972a53b7458582ee2c6dbc0655f108b9cbacaff232718f6f281196253.lean/declarations/associated-den-num-inv--d1d1b127223c8cbd3aada3a1.md) | 125 | `result-track:d1d1b127223c8cbd3aada3a1f0d74174e5bdd74e2485c77dbdf8eee81b946670` |
| 17 | `lemma` | [associated_num_den_inv](../../../../mathematics/Algebra/NumDen/Varianta30aeae972a53b7458582ee2c6dbc0655f108b9cbacaff232718f6f281196253.lean/declarations/associated-num-den-inv--8855a93ee88a2555aae1ff92.md) | 136 | `result-track:8855a93ee88a2555aae1ff92ac09279c638228e1d995facccbb79d6f2ea85b08` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
