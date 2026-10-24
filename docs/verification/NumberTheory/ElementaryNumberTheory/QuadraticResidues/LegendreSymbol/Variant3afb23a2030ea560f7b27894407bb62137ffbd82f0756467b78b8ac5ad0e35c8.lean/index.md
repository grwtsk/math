# Verification target: GRWTSK.NumberTheory.LegendreSymbol.Variant3afb23a2030ea560f7b27894407bb62137ffbd82f0756467b78b8ac5ad0e35c8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7449c6f2f55ae4e245eba89ba41c7e15829c4468",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/LegendreSymbol/Variant3afb23a2030ea560f7b27894407bb62137ffbd82f0756467b78b8ac5ad0e35c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant3afb23a2030ea560f7b27894407bb62137ffbd82f0756467b78b8ac5ad0e35c8.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant3afb23a2030ea560f7b27894407bb62137ffbd82f0756467b78b8ac5ad0e35c8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7449c6f2f55ae4e245eba89ba41c7e15829c4468`.

Source path: `GRWTSK/NumberTheory/LegendreSymbol/Variant3afb23a2030ea560f7b27894407bb62137ffbd82f0756467b78b8ac5ad0e35c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/LegendreSymbol/Variant3afb23a2030ea560f7b27894407bb62137ffbd82f0756467b78b8ac5ad0e35c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LegendreSymbol.JacobiSymbol` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [jacobiSymNat](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant3afb23a2030ea560f7b27894407bb62137ffbd82f0756467b78b8ac5ad0e35c8.lean/declarations/jacobisymnat--6cb634a5f4789218b2ca0c40.md) | 61 | `declaration-track:6cb634a5f4789218b2ca0c4085703e4464b3cc3cbe82a67340492bcbff3606e4` |
| 2 | `theorem` | [jacobiSymNat.zero_right](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant3afb23a2030ea560f7b27894407bb62137ffbd82f0756467b78b8ac5ad0e35c8.lean/declarations/jacobisymnat-zero-right--0d09d42c4aea7d717653e1e4.md) | 73 | `result-track:0d09d42c4aea7d717653e1e4fc7a0e096f144b669ed52bac4d0bb448af848221` |
| 3 | `theorem` | [jacobiSymNat.one_right](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant3afb23a2030ea560f7b27894407bb62137ffbd82f0756467b78b8ac5ad0e35c8.lean/declarations/jacobisymnat-one-right--04887bb7a194fc055254b491.md) | 76 | `result-track:04887bb7a194fc055254b4915565663aae01c51f002228ebf55a56a5119b2a17` |
| 4 | `theorem` | [jacobiSymNat.zero_left](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant3afb23a2030ea560f7b27894407bb62137ffbd82f0756467b78b8ac5ad0e35c8.lean/declarations/jacobisymnat-zero-left--1c179dc0637dd973f7ca86ea.md) | 79 | `result-track:1c179dc0637dd973f7ca86ea593b608890a211c52b44e2160a2533e6453a6719` |
| 5 | `theorem` | [jacobiSymNat.one_left](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant3afb23a2030ea560f7b27894407bb62137ffbd82f0756467b78b8ac5ad0e35c8.lean/declarations/jacobisymnat-one-left--895759f20b32948388e8b417.md) | 87 | `result-track:895759f20b32948388e8b417980b0a92449b12fd5e8298f7c63361605d737909` |
| 6 | `theorem` | [LegendreSym.to_jacobiSym](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant3afb23a2030ea560f7b27894407bb62137ffbd82f0756467b78b8ac5ad0e35c8.lean/declarations/legendresym-to-jacobisym--456488796c7b4c67e00f6b52.md) | 91 | `result-track:456488796c7b4c67e00f6b52f8bd9dd93acb25c9e3b0c4da046bc67fce9e0b71` |
| 7 | `theorem` | [JacobiSym.mod_left](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant3afb23a2030ea560f7b27894407bb62137ffbd82f0756467b78b8ac5ad0e35c8.lean/declarations/jacobisym-mod-left--3a3bd84a1cc70d82e944a109.md) | 96 | `result-track:3a3bd84a1cc70d82e944a10999a412ffd5244b40428923fd5cdb838cc44ac2c7` |
| 8 | `theorem` | [jacobiSymNat.mod_left](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant3afb23a2030ea560f7b27894407bb62137ffbd82f0756467b78b8ac5ad0e35c8.lean/declarations/jacobisymnat-mod-left--3ee3a32132891ae92a704779.md) | 100 | `result-track:3ee3a32132891ae92a704779982ad1a381834a71f24fe34d2ea339fa60300e61` |
| 9 | `theorem` | [jacobiSymNat.even_even](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant3afb23a2030ea560f7b27894407bb62137ffbd82f0756467b78b8ac5ad0e35c8.lean/declarations/jacobisymnat-even-even--7fb332c7f1cb199b1f4c6498.md) | 105 | `result-track:7fb332c7f1cb199b1f4c6498c2b48e933f482b17c5be77585957c57d39710b46` |
| 10 | `theorem` | [jacobiSymNat.odd_even](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant3afb23a2030ea560f7b27894407bb62137ffbd82f0756467b78b8ac5ad0e35c8.lean/declarations/jacobisymnat-odd-even--beaa2821d3d70c4d2cbc0c72.md) | 116 | `result-track:beaa2821d3d70c4d2cbc0c72882e42a540900936624fc59ef8ec736dfba1b6d9` |
| 11 | `theorem` | [jacobiSymNat.double_even](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant3afb23a2030ea560f7b27894407bb62137ffbd82f0756467b78b8ac5ad0e35c8.lean/declarations/jacobisymnat-double-even--0083e07eebbb9de4e14aef35.md) | 129 | `result-track:0083e07eebbb9de4e14aef354cb2732d51d7f387f30e7c573a966c66be06407a` |
| 12 | `theorem` | [jacobiSymNat.even_odd₁](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant3afb23a2030ea560f7b27894407bb62137ffbd82f0756467b78b8ac5ad0e35c8.lean/declarations/jacobisymnat-even-odd--77b28090e9d7b71b6a56618d.md) | 137 | `result-track:77b28090e9d7b71b6a56618d80eb43ca88fa53b2e8e01ab70a7d0f6c92ed32bd` |
| 13 | `theorem` | [jacobiSymNat.even_odd₇](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant3afb23a2030ea560f7b27894407bb62137ffbd82f0756467b78b8ac5ad0e35c8.lean/declarations/jacobisymnat-even-odd--5746f495759793e6faa95632.md) | 143 | `result-track:5746f495759793e6faa9563267ce00defac5f39a1a4f1780bccaa4248da6b01d` |
| 14 | `theorem` | [jacobiSymNat.even_odd₃](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant3afb23a2030ea560f7b27894407bb62137ffbd82f0756467b78b8ac5ad0e35c8.lean/declarations/jacobisymnat-even-odd--3300e40fb5aa67ef1e4a66a4.md) | 149 | `result-track:3300e40fb5aa67ef1e4a66a428295787c9c3876a4c98d1f157af5611bc67df80` |
| 15 | `theorem` | [jacobiSymNat.even_odd₅](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant3afb23a2030ea560f7b27894407bb62137ffbd82f0756467b78b8ac5ad0e35c8.lean/declarations/jacobisymnat-even-odd--a4f3af7f43bc81c4665a21f8.md) | 155 | `result-track:a4f3af7f43bc81c4665a21f8b047b41e29fb472c8c07006466c4117e8947f0eb` |
| 16 | `theorem` | [jacobiSymNat.qr₁](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant3afb23a2030ea560f7b27894407bb62137ffbd82f0756467b78b8ac5ad0e35c8.lean/declarations/jacobisymnat-qr--aa33bf6f45ab997b441c2064.md) | 162 | `result-track:aa33bf6f45ab997b441c20645b2e44fbce65dcaeffa0e632cc4b2179363ce56d` |
| 17 | `theorem` | [jacobiSymNat.qr₁_mod](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant3afb23a2030ea560f7b27894407bb62137ffbd82f0756467b78b8ac5ad0e35c8.lean/declarations/jacobisymnat-qr-mod--1a25097e477f20bc8e5a6d8a.md) | 166 | `result-track:1a25097e477f20bc8e5a6d8a193bd690842747446405d44e12aac9cb8ffd0564` |
| 18 | `theorem` | [jacobiSymNat.qr₁'](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant3afb23a2030ea560f7b27894407bb62137ffbd82f0756467b78b8ac5ad0e35c8.lean/declarations/jacobisymnat-qr--9d83b4ff00ddfe2f770823b6.md) | 170 | `result-track:9d83b4ff00ddfe2f770823b69e767fdc72d67154c2e2f9e14b8f001126142b17` |
| 19 | `theorem` | [jacobiSymNat.qr₁'_mod](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant3afb23a2030ea560f7b27894407bb62137ffbd82f0756467b78b8ac5ad0e35c8.lean/declarations/jacobisymnat-qr-mod--8335da617d208aad5b06c3b1.md) | 174 | `result-track:8335da617d208aad5b06c3b1e90846d12d2ac76d04fc35cd967693c7f8886fcc` |
| 20 | `theorem` | [jacobiSymNat.qr₃](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant3afb23a2030ea560f7b27894407bb62137ffbd82f0756467b78b8ac5ad0e35c8.lean/declarations/jacobisymnat-qr--91c3d7603d6ffd6eff91ea9c.md) | 178 | `result-track:91c3d7603d6ffd6eff91ea9ce9f3b1dc602bd4838e46a8b5229bd0f562d7ad65` |
| 21 | `theorem` | [jacobiSymNat.qr₃_mod](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant3afb23a2030ea560f7b27894407bb62137ffbd82f0756467b78b8ac5ad0e35c8.lean/declarations/jacobisymnat-qr-mod--072831544a7fbc706a320901.md) | 182 | `result-track:072831544a7fbc706a3209015f52242fdf32905284edccbbd7e3315cd7cd4077` |
| 22 | `theorem` | [isInt_jacobiSym](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant3afb23a2030ea560f7b27894407bb62137ffbd82f0756467b78b8ac5ad0e35c8.lean/declarations/isint-jacobisym--584906fd2e6ce075c624a900.md) | 186 | `result-track:584906fd2e6ce075c624a900e8943d0a2ab7ee7980d25a84093e9873d4c8a465` |
| 23 | `theorem` | [isInt_jacobiSymNat](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant3afb23a2030ea560f7b27894407bb62137ffbd82f0756467b78b8ac5ad0e35c8.lean/declarations/isint-jacobisymnat--5d5f8ba56e3f62d98227e5ea.md) | 190 | `result-track:5d5f8ba56e3f62d98227e5ea1412df4842f927cd0df9b2885ecd9d3e732b46f9` |
| 24 | `def` | [proveJacobiSymOdd](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant3afb23a2030ea560f7b27894407bb62137ffbd82f0756467b78b8ac5ad0e35c8.lean/declarations/provejacobisymodd--e76b25189f4c82bd3cb5510a.md) | 215 | `declaration-track:e76b25189f4c82bd3cb5510a88038d3769f24297096cbdc0c0bcfb326fc894d5` |
| 25 | `def` | [proveJacobiSymNat](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant3afb23a2030ea560f7b27894407bb62137ffbd82f0756467b78b8ac5ad0e35c8.lean/declarations/provejacobisymnat--bd117291bdda4af2f5008b06.md) | 286 | `declaration-track:bd117291bdda4af2f5008b066c78a9a2380b59c8e8877d5c4f53d846dff32680` |
| 26 | `def` | [proveJacobiSym](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant3afb23a2030ea560f7b27894407bb62137ffbd82f0756467b78b8ac5ad0e35c8.lean/declarations/provejacobisym--46842d989fd7fca4496729a3.md) | 331 | `declaration-track:46842d989fd7fca4496729a364fbb967c4139ebbeb7a59675a06859188861b57` |
| 27 | `def` | [evalJacobiSym](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant3afb23a2030ea560f7b27894407bb62137ffbd82f0756467b78b8ac5ad0e35c8.lean/declarations/evaljacobisym--aa693769b0c93dacb5f74c0e.md) | 369 | `declaration-track:aa693769b0c93dacb5f74c0ee500149ac7537130d188b8b03bcd0757092f86ff` |
| 28 | `def` | [evalJacobiSymNat](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant3afb23a2030ea560f7b27894407bb62137ffbd82f0756467b78b8ac5ad0e35c8.lean/declarations/evaljacobisymnat--1da32c54b3762992cba26e5f.md) | 380 | `declaration-track:1da32c54b3762992cba26e5fd1443085993af82cbdcbfeb6c1b560703b49fddc` |
| 29 | `def` | [evalLegendreSym](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant3afb23a2030ea560f7b27894407bb62137ffbd82f0756467b78b8ac5ad0e35c8.lean/declarations/evallegendresym--9e8416c8a1abaea2abafb55c.md) | 391 | `declaration-track:9e8416c8a1abaea2abafb55c16ee1ef96976ea9d762a96156d4d8a373b2de318` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
