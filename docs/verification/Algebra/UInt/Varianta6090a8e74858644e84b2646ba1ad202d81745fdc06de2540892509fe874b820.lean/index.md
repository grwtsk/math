# Verification target: GRWTSK.Algebra.UInt.Varianta6090a8e74858644e84b2646ba1ad202d81745fdc06de2540892509fe874b820

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fcb8553156a0d0dd59846eb55b1d298f3f018688",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UInt/Varianta6090a8e74858644e84b2646ba1ad202d81745fdc06de2540892509fe874b820.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/UInt/Varianta6090a8e74858644e84b2646ba1ad202d81745fdc06de2540892509fe874b820.lean/index.md) · [Full source](../../../../mathematics/Algebra/UInt/Varianta6090a8e74858644e84b2646ba1ad202d81745fdc06de2540892509fe874b820.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fcb8553156a0d0dd59846eb55b1d298f3f018688`.

Source path: `GRWTSK/Algebra/UInt/Varianta6090a8e74858644e84b2646ba1ad202d81745fdc06de2540892509fe874b820.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UInt/Varianta6090a8e74858644e84b2646ba1ad202d81745fdc06de2540892509fe874b820.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Defs` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Defs` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Defs` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [UInt8.val_eq_of_lt](../../../../mathematics/Algebra/UInt/Varianta6090a8e74858644e84b2646ba1ad202d81745fdc06de2540892509fe874b820.lean/declarations/uint8-val-eq-of-lt--60d3431eab27bbbb6a74bccd.md) | 8 | `result-track:60d3431eab27bbbb6a74bccdc48faf1748fc3704bc31b37e973a97988e161733` |
| 2 | `lemma` | [UInt16.val_eq_of_lt](../../../../mathematics/Algebra/UInt/Varianta6090a8e74858644e84b2646ba1ad202d81745fdc06de2540892509fe874b820.lean/declarations/uint16-val-eq-of-lt--c17256a63202c7a0475e1306.md) | 10 | `result-track:c17256a63202c7a0475e1306ba19dc1e6bd2d18ed6971d5b11fbe6c91dea5cd4` |
| 3 | `lemma` | [UInt32.val_eq_of_lt](../../../../mathematics/Algebra/UInt/Varianta6090a8e74858644e84b2646ba1ad202d81745fdc06de2540892509fe874b820.lean/declarations/uint32-val-eq-of-lt--2e6ff66b5c9732a6845138b3.md) | 12 | `result-track:2e6ff66b5c9732a6845138b38ebc324000e854ab761bf76c08769652525b47cc` |
| 4 | `lemma` | [UInt64.val_eq_of_lt](../../../../mathematics/Algebra/UInt/Varianta6090a8e74858644e84b2646ba1ad202d81745fdc06de2540892509fe874b820.lean/declarations/uint64-val-eq-of-lt--123f91bcfc7c049a8b130c89.md) | 14 | `result-track:123f91bcfc7c049a8b130c891d07732ccde92437e0d42acf652de77db31890d4` |
| 5 | `lemma` | [USize.val_eq_of_lt](../../../../mathematics/Algebra/UInt/Varianta6090a8e74858644e84b2646ba1ad202d81745fdc06de2540892509fe874b820.lean/declarations/usize-val-eq-of-lt--15559d106084d7c985bae333.md) | 16 | `result-track:15559d106084d7c985bae333d82c6cd0db2857a311643f099bf76768759e22fd` |
| 6 | `instance` | [UInt8.neZero](../../../../mathematics/Algebra/UInt/Varianta6090a8e74858644e84b2646ba1ad202d81745fdc06de2540892509fe874b820.lean/declarations/uint8-nezero--53a190dc9cedf765c0e0951e.md) | 18 | `declaration-track:53a190dc9cedf765c0e0951e4ac803c8656ee50d70e0b212d8ca242687a8dd2b` |
| 7 | `instance` | [UInt16.neZero](../../../../mathematics/Algebra/UInt/Varianta6090a8e74858644e84b2646ba1ad202d81745fdc06de2540892509fe874b820.lean/declarations/uint16-nezero--879e6a96d4a54f105d89d915.md) | 20 | `declaration-track:879e6a96d4a54f105d89d9154795f3bc7d35c4abac2d8763a439689e7eaa6e0d` |
| 8 | `instance` | [UInt32.neZero](../../../../mathematics/Algebra/UInt/Varianta6090a8e74858644e84b2646ba1ad202d81745fdc06de2540892509fe874b820.lean/declarations/uint32-nezero--eb37d7752a44f1de1ca50637.md) | 22 | `declaration-track:eb37d7752a44f1de1ca50637179699e81bc4f4928aa143d0e5e176fe4ca3f2d2` |
| 9 | `instance` | [UInt64.neZero](../../../../mathematics/Algebra/UInt/Varianta6090a8e74858644e84b2646ba1ad202d81745fdc06de2540892509fe874b820.lean/declarations/uint64-nezero--aa50657caac50771781ed6a1.md) | 24 | `declaration-track:aa50657caac50771781ed6a1f4ec869cdc192efe901c4a781b5bd344fec8912f` |
| 10 | `instance` | [USize.neZero](../../../../mathematics/Algebra/UInt/Varianta6090a8e74858644e84b2646ba1ad202d81745fdc06de2540892509fe874b820.lean/declarations/usize-nezero--c6b2246cb526663385468bdc.md) | 26 | `declaration-track:c6b2246cb526663385468bdc83a693242c7899b3456f42d099a75fc07a8d2cc9` |
| 11 | `example` | [(anonymous)](../../../../mathematics/Algebra/UInt/Varianta6090a8e74858644e84b2646ba1ad202d81745fdc06de2540892509fe874b820.lean/declarations/example--bce0228f7912b1d3d223a9bd.md) | 28 | `declaration-track:bce0228f7912b1d3d223a9bd4c172c47b6db033cff42e6fd54a0dbd821c1d3f9` |
| 12 | `instance` | [(anonymous)](../../../../mathematics/Algebra/UInt/Varianta6090a8e74858644e84b2646ba1ad202d81745fdc06de2540892509fe874b820.lean/declarations/instance--d47b7261ce2a2beb04e5eecf.md) | 35 | `declaration-track:d47b7261ce2a2beb04e5eecf382a51a8defbca124857ebc1e84e50cc5a74e0fb` |
| 13 | `instance` | [(anonymous)](../../../../mathematics/Algebra/UInt/Varianta6090a8e74858644e84b2646ba1ad202d81745fdc06de2540892509fe874b820.lean/declarations/instance--f9d0e64dc2b716afae8c5c85.md) | 38 | `declaration-track:f9d0e64dc2b716afae8c5c8523e64abb752a69555e6624bfb575a66c1e7ebcc6` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/UInt/Varianta6090a8e74858644e84b2646ba1ad202d81745fdc06de2540892509fe874b820.lean/declarations/instance--e548a4058eaef97ca91fc955.md) | 41 | `declaration-track:e548a4058eaef97ca91fc955c238ba50b83fd36594d8056359d4b6ed818b2ecd` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/UInt/Varianta6090a8e74858644e84b2646ba1ad202d81745fdc06de2540892509fe874b820.lean/declarations/instance--63f975f43e47c44dd0f12594.md) | 44 | `declaration-track:63f975f43e47c44dd0f125945740ea92b5b00a57745a941acfa5f64f1522ec40` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/UInt/Varianta6090a8e74858644e84b2646ba1ad202d81745fdc06de2540892509fe874b820.lean/declarations/instance--1996ee3d84c69eec62ec1410.md) | 47 | `declaration-track:1996ee3d84c69eec62ec1410697cf336c596a05a47615e8adbbfedd1318f1dfb` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/Algebra/UInt/Varianta6090a8e74858644e84b2646ba1ad202d81745fdc06de2540892509fe874b820.lean/declarations/instance--579576fb1796e3fac6d5d121.md) | 50 | `declaration-track:579576fb1796e3fac6d5d121961e66b1b1a0557a73582d729fcd4a82de542375` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Algebra/UInt/Varianta6090a8e74858644e84b2646ba1ad202d81745fdc06de2540892509fe874b820.lean/declarations/instance--95a3bab89942446d7ea30624.md) | 53 | `declaration-track:95a3bab89942446d7ea3062402482f301b89d141526378a6103a2648a82f445a` |
| 19 | `lemma` | [zero_def](../../../../mathematics/Algebra/UInt/Varianta6090a8e74858644e84b2646ba1ad202d81745fdc06de2540892509fe874b820.lean/declarations/zero-def--5ee9cb4610ca42cf7a3c001f.md) | 56 | `result-track:5ee9cb4610ca42cf7a3c001fb6b6e9d75f65b32e34acbb349f5affbb94cd9438` |
| 20 | `lemma` | [one_def](../../../../mathematics/Algebra/UInt/Varianta6090a8e74858644e84b2646ba1ad202d81745fdc06de2540892509fe874b820.lean/declarations/one-def--6d4a096099f57e5e71cdd259.md) | 58 | `result-track:6d4a096099f57e5e71cdd259f8a866c60888ea3f389a9118e6e8185a36b022b2` |
| 21 | `lemma` | [neg_def](../../../../mathematics/Algebra/UInt/Varianta6090a8e74858644e84b2646ba1ad202d81745fdc06de2540892509fe874b820.lean/declarations/neg-def--5ac7573da33be06abfbc8b0e.md) | 60 | `result-track:5ac7573da33be06abfbc8b0e0baf5c639390677a95b443a1bfda6c7003700e39` |
| 22 | `lemma` | [sub_def](../../../../mathematics/Algebra/UInt/Varianta6090a8e74858644e84b2646ba1ad202d81745fdc06de2540892509fe874b820.lean/declarations/sub-def--cb4a3506cce6de2de11fb8f2.md) | 62 | `result-track:cb4a3506cce6de2de11fb8f26a7f3f5f8b4cdf23f18b1fe627a0c3b811f045ed` |
| 23 | `lemma` | [mul_def](../../../../mathematics/Algebra/UInt/Varianta6090a8e74858644e84b2646ba1ad202d81745fdc06de2540892509fe874b820.lean/declarations/mul-def--5afd54cf6eee3af6b031471c.md) | 64 | `result-track:5afd54cf6eee3af6b031471cd7a277b4b5a13cbf877d84763e63c73a660a25e5` |
| 24 | `lemma` | [mod_def](../../../../mathematics/Algebra/UInt/Varianta6090a8e74858644e84b2646ba1ad202d81745fdc06de2540892509fe874b820.lean/declarations/mod-def--e8243703e9bfa33a8336c8ad.md) | 66 | `result-track:e8243703e9bfa33a8336c8ad6ad525c3169de7fad942677b4dbef0ad886a1bcf` |
| 25 | `lemma` | [add_def](../../../../mathematics/Algebra/UInt/Varianta6090a8e74858644e84b2646ba1ad202d81745fdc06de2540892509fe874b820.lean/declarations/add-def--f4d60171e1d7906517545cc9.md) | 68 | `result-track:f4d60171e1d7906517545cc9c08a3083d67e8433e04c5120c3ad690960c18c26` |
| 26 | `lemma` | [pow_def](../../../../mathematics/Algebra/UInt/Varianta6090a8e74858644e84b2646ba1ad202d81745fdc06de2540892509fe874b820.lean/declarations/pow-def--e1a9ce82af66f30c3fc9ef3e.md) | 70 | `result-track:e1a9ce82af66f30c3fc9ef3e9da1990f010a1136235cbcde8218f3838bcddd20` |
| 27 | `lemma` | [nsmul_def](../../../../mathematics/Algebra/UInt/Varianta6090a8e74858644e84b2646ba1ad202d81745fdc06de2540892509fe874b820.lean/declarations/nsmul-def--e8ee39ffe3caee40aabdf1ce.md) | 72 | `result-track:e8ee39ffe3caee40aabdf1cea166261b7df60e8aa5e9dc7f24d84eac9dba867f` |
| 28 | `lemma` | [zsmul_def](../../../../mathematics/Algebra/UInt/Varianta6090a8e74858644e84b2646ba1ad202d81745fdc06de2540892509fe874b820.lean/declarations/zsmul-def--9e02a2b88683c5622c3466dc.md) | 74 | `result-track:9e02a2b88683c5622c3466dc944497c6464a603601612c74cbef2f1cefcf4db4` |
| 29 | `lemma` | [natCast_def](../../../../mathematics/Algebra/UInt/Varianta6090a8e74858644e84b2646ba1ad202d81745fdc06de2540892509fe874b820.lean/declarations/natcast-def--8ddba49abf0a5584bd496346.md) | 76 | `result-track:8ddba49abf0a5584bd496346b4f8707d2cacc5e00c5c8b51cba92135257be7c8` |
| 30 | `lemma` | [intCast_def](../../../../mathematics/Algebra/UInt/Varianta6090a8e74858644e84b2646ba1ad202d81745fdc06de2540892509fe874b820.lean/declarations/intcast-def--969558fad41cee5d27944171.md) | 78 | `result-track:969558fad41cee5d27944171398470df7821930c5f672cc32089422885960446` |
| 31 | `lemma` | [eq_of_val_eq](../../../../mathematics/Algebra/UInt/Varianta6090a8e74858644e84b2646ba1ad202d81745fdc06de2540892509fe874b820.lean/declarations/eq-of-val-eq--6f5b031c1d6074084b30bcc3.md) | 80 | `result-track:6f5b031c1d6074084b30bcc3b5fff80d7415ee8716ecf4bab1e11b69f8bffb2e` |
| 32 | `lemma` | [val_injective](../../../../mathematics/Algebra/UInt/Varianta6090a8e74858644e84b2646ba1ad202d81745fdc06de2540892509fe874b820.lean/declarations/val-injective--b496953959d3190905e09e0e.md) | 83 | `result-track:b496953959d3190905e09e0eaa54a369374808dd4f690139b5fe24b2fc403eb5` |
| 33 | `lemma` | [val_eq_of_eq](../../../../mathematics/Algebra/UInt/Varianta6090a8e74858644e84b2646ba1ad202d81745fdc06de2540892509fe874b820.lean/declarations/val-eq-of-eq--c16a8d0e51409cd71c7dd4f9.md) | 85 | `result-track:c16a8d0e51409cd71c7dd4f9c4c9ee1910273bffa5b12552f03ee2f2a3eca55e` |
| 34 | `lemma` | [mk_val_eq](../../../../mathematics/Algebra/UInt/Varianta6090a8e74858644e84b2646ba1ad202d81745fdc06de2540892509fe874b820.lean/declarations/mk-val-eq--4622ec0711ff105f02e4f425.md) | 88 | `result-track:4622ec0711ff105f02e4f425463fce6a8e7fa868ab0337f03582b458adaf12fb` |
| 35 | `instance` | [(anonymous)](../../../../mathematics/Algebra/UInt/Varianta6090a8e74858644e84b2646ba1ad202d81745fdc06de2540892509fe874b820.lean/declarations/instance--d573dd4ab408bbb2d8e77d8d.md) | 91 | `declaration-track:d573dd4ab408bbb2d8e77d8d8b7cd162cb5aa1915d1c219d113cf52d107c6bbf` |
| 36 | `def` | [isUpper](../../../../mathematics/Algebra/UInt/Varianta6090a8e74858644e84b2646ba1ad202d81745fdc06de2540892509fe874b820.lean/declarations/isupper--6d7905941d5b84194b99f241.md) | 102 | `declaration-track:6d7905941d5b84194b99f241deb53982697bfeca6d88bf4924d504f19184b9c6` |
| 37 | `def` | [isLower](../../../../mathematics/Algebra/UInt/Varianta6090a8e74858644e84b2646ba1ad202d81745fdc06de2540892509fe874b820.lean/declarations/islower--1339271106d2217cff9aa645.md) | 106 | `declaration-track:1339271106d2217cff9aa64506949e19db26222861c0facbf303ae082627166a` |
| 38 | `def` | [isAlpha](../../../../mathematics/Algebra/UInt/Varianta6090a8e74858644e84b2646ba1ad202d81745fdc06de2540892509fe874b820.lean/declarations/isalpha--9e2d073937b41666c3a91584.md) | 110 | `declaration-track:9e2d073937b41666c3a91584c8a0e480a1f982bf1364358888b6ea67d8ede991` |
| 39 | `def` | [isDigit](../../../../mathematics/Algebra/UInt/Varianta6090a8e74858644e84b2646ba1ad202d81745fdc06de2540892509fe874b820.lean/declarations/isdigit--d6b77c24742e1edd1350f2c7.md) | 114 | `declaration-track:d6b77c24742e1edd1350f2c7470fc8ce397fb12e0d86a0f299fa79cf2c87ddc2` |
| 40 | `def` | [isAlphanum](../../../../mathematics/Algebra/UInt/Varianta6090a8e74858644e84b2646ba1ad202d81745fdc06de2540892509fe874b820.lean/declarations/isalphanum--f353ee94987c61431d6e5893.md) | 118 | `declaration-track:f353ee94987c61431d6e58933915cb850fe96df79e51a6b81cb8aea095beb167` |
| 41 | `theorem` | [toChar_aux](../../../../mathematics/Algebra/UInt/Varianta6090a8e74858644e84b2646ba1ad202d81745fdc06de2540892509fe874b820.lean/declarations/tochar-aux--33f36af4d9f530a9cad1577d.md) | 121 | `result-track:33f36af4d9f530a9cad1577d7802bbcec62dba4be2f52c70df1bebb2535a894c` |
| 42 | `def` | [toChar](../../../../mathematics/Algebra/UInt/Varianta6090a8e74858644e84b2646ba1ad202d81745fdc06de2540892509fe874b820.lean/declarations/tochar--f265d2f569f8754ed8febbda.md) | 127 | `declaration-track:f265d2f569f8754ed8febbda549b6c66a045aa936cbe5b1d524778eba1a84664` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
