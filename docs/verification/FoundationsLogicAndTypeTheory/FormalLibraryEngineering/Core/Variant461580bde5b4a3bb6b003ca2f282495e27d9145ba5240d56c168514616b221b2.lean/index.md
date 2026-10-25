# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Core.Variant461580bde5b4a3bb6b003ca2f282495e27d9145ba5240d56c168514616b221b2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1138f1143517eed8d8149d322e2059e1aec33b39",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant461580bde5b4a3bb6b003ca2f282495e27d9145ba5240d56c168514616b221b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant461580bde5b4a3bb6b003ca2f282495e27d9145ba5240d56c168514616b221b2.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant461580bde5b4a3bb6b003ca2f282495e27d9145ba5240d56c168514616b221b2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1138f1143517eed8d8149d322e2059e1aec33b39`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant461580bde5b4a3bb6b003ca2f282495e27d9145ba5240d56c168514616b221b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant461580bde5b4a3bb6b003ca2f282495e27d9145ba5240d56c168514616b221b2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Lean.Expr.Rat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.Result` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Util.Qq` — import line 8; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Location` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant461580bde5b4a3bb6b003ca2f282495e27d9145ba5240d56c168514616b221b2.lean/declarations/syntax--0f0604eea56976a4af0bbc36.md) | 24 | `declaration-track:0f0604eea56976a4af0bbc366f6a8d2d03f8519ae738482fe63a127df01732b8` |
| 2 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant461580bde5b4a3bb6b003ca2f282495e27d9145ba5240d56c168514616b221b2.lean/declarations/initialize--4a21dd7048ba7e90f9186c7e.md) | 29 | `declaration-track:4a21dd7048ba7e90f9186c7e40bc9eaca13d934370276aef0f1dbfc0a8e375b5` |
| 3 | `structure` | [NormNumExt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant461580bde5b4a3bb6b003ca2f282495e27d9145ba5240d56c168514616b221b2.lean/declarations/normnumext--3ef46dc4aa4419c9978729c8.md) | 34 | `declaration-track:3ef46dc4aa4419c9978729c812793823ca96e94dad1f91e04d90b6f34859b9a9` |
| 4 | `def` | [mkNormNumExt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant461580bde5b4a3bb6b003ca2f282495e27d9145ba5240d56c168514616b221b2.lean/declarations/mknormnumext--f984aa1ab7850f77b187e159.md) | 47 | `declaration-track:f984aa1ab7850f77b187e15986ab18a4f28de8f1323a1bad06ad29d8a2fad011` |
| 5 | `abbrev` | [Entry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant461580bde5b4a3bb6b003ca2f282495e27d9145ba5240d56c168514616b221b2.lean/declarations/entry--a0a82b95e0b21ee0ee3dee84.md) | 53 | `declaration-track:a0a82b95e0b21ee0ee3dee84013c9741a29708feb8e1fcb09f6e4165adf33169` |
| 6 | `structure` | [NormNums](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant461580bde5b4a3bb6b003ca2f282495e27d9145ba5240d56c168514616b221b2.lean/declarations/normnums--b765ba18d168851a8360280a.md) | 56 | `declaration-track:b765ba18d168851a8360280aad74f42255bd7dd3116b16171d7b2da67b643fde` |
| 7 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant461580bde5b4a3bb6b003ca2f282495e27d9145ba5240d56c168514616b221b2.lean/declarations/initialize--16ce711ca49a7dd9064c0654.md) | 64 | `declaration-track:16ce711ca49a7dd9064c0654797783a5035df3a02a5c9b6a717540b9b5964389` |
| 8 | `def` | [derive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant461580bde5b4a3bb6b003ca2f282495e27d9145ba5240d56c168514616b221b2.lean/declarations/derive--be13de8c39530c81b9fc4bec.md) | 78 | `declaration-track:be13de8c39530c81b9fc4bec5de9e1f4ebe1d8566a1bb78ae428ac4208ef9ad9` |
| 9 | `def` | [deriveNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant461580bde5b4a3bb6b003ca2f282495e27d9145ba5240d56c168514616b221b2.lean/declarations/derivenat--703099bf0f3b49bcb7480517.md) | 100 | `declaration-track:703099bf0f3b49bcb7480517b9e89220bd8aec6c72d391ada1c35fe6f7e61acb` |
| 10 | `def` | [deriveInt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant461580bde5b4a3bb6b003ca2f282495e27d9145ba5240d56c168514616b221b2.lean/declarations/deriveint--b94e43cfe56f681411e578af.md) | 108 | `declaration-track:b94e43cfe56f681411e578aff5945ed84da0b099ea96d5b94b12449dab0765e8` |
| 11 | `def` | [deriveRat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant461580bde5b4a3bb6b003ca2f282495e27d9145ba5240d56c168514616b221b2.lean/declarations/deriverat--f6a71b738753c8d4df87efc1.md) | 117 | `declaration-track:f6a71b738753c8d4df87efc1f488c88cea3bf350cb67844f5d41612c53ed5ea4` |
| 12 | `def` | [deriveBool](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant461580bde5b4a3bb6b003ca2f282495e27d9145ba5240d56c168514616b221b2.lean/declarations/derivebool--f5ccc5b6abcc5294bd2eca52.md) | 125 | `declaration-track:f5ccc5b6abcc5294bd2eca52ee7ed3209c562597b3361c4dbd946fdac779dcb4` |
| 13 | `def` | [deriveBoolOfIff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant461580bde5b4a3bb6b003ca2f282495e27d9145ba5240d56c168514616b221b2.lean/declarations/deriveboolofiff--f1fc074067c2b23a1ce1f53d.md) | 131 | `declaration-track:f1fc074067c2b23a1ce1f53d12ebc8861089785eb6bdd7457858c3469d1a500e` |
| 14 | `def` | [eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant461580bde5b4a3bb6b003ca2f282495e27d9145ba5240d56c168514616b221b2.lean/declarations/eval--65648c13c6a5644a110a6653.md) | 140 | `declaration-track:65648c13c6a5644a110a665348f53bcba28deddb7f6794fd0e25f4dae2dd6ac4` |
| 15 | `def` | [NormNums.eraseCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant461580bde5b4a3bb6b003ca2f282495e27d9145ba5240d56c168514616b221b2.lean/declarations/normnums-erasecore--82740a804ff5525ee41886b2.md) | 147 | `declaration-track:82740a804ff5525ee41886b2164e41dd18db46664579b39ccfd670ac8b4ca64b` |
| 16 | `def` | [NormNums.erase](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant461580bde5b4a3bb6b003ca2f282495e27d9145ba5240d56c168514616b221b2.lean/declarations/normnums-erase--614e8dfaa77d3bee2a985927.md) | 156 | `declaration-track:614e8dfaa77d3bee2a98592789bc5374929bdb02bc44abf48ee37ab2e142e335` |
| 17 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant461580bde5b4a3bb6b003ca2f282495e27d9145ba5240d56c168514616b221b2.lean/declarations/initialize--470973b5994b69938ea51e94.md) | 163 | `declaration-track:470973b5994b69938ea51e94db674e1b2fba767232c6888438721bc41a0ee1fd` |
| 18 | `def` | [tryNormNum](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant461580bde5b4a3bb6b003ca2f282495e27d9145ba5240d56c168514616b221b2.lean/declarations/trynormnum--10c09110c474a89d010be9c0.md) | 190 | `declaration-track:10c09110c474a89d010be9c014bed8fe6ed0f2bfe8e749431c0ac905d87f9bec` |
| 19 | `def` | [discharge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant461580bde5b4a3bb6b003ca2f282495e27d9145ba5240d56c168514616b221b2.lean/declarations/discharge--b60ce93753714bd2d511c6e4.md) | 199 | `declaration-track:b60ce93753714bd2d511c6e4112f1e47b437babff84687a01d2c894940b0796d` |
| 20 | `def` | [methods](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant461580bde5b4a3bb6b003ca2f282495e27d9145ba5240d56c168514616b221b2.lean/declarations/methods--f45c2f7de660bb10cd147bca.md) | 202 | `declaration-track:f45c2f7de660bb10cd147bcae91ace80726f894ef78d9b6bbaa3639f1e2cac09` |
| 21 | `def` | [deriveSimp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant461580bde5b4a3bb6b003ca2f282495e27d9145ba5240d56c168514616b221b2.lean/declarations/derivesimp--f074a8f4f691254e5a082105.md) | 214 | `declaration-track:f074a8f4f691254e5a0821059ac963254d86dc3070034dfabbf0eb6050701ba0` |
| 22 | `def` | [normNumAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant461580bde5b4a3bb6b003ca2f282495e27d9145ba5240d56c168514616b221b2.lean/declarations/normnumat--c6feef53b51d390b8e8525fb.md) | 229 | `declaration-track:c6feef53b51d390b8e8525fbe4d2cc81e7348243c8e23841c69c8611281b3f42` |
| 23 | `def` | [getSimpContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant461580bde5b4a3bb6b003ca2f282495e27d9145ba5240d56c168514616b221b2.lean/declarations/getsimpcontext--cc13d77e60b235f72897afcc.md) | 269 | `declaration-track:cc13d77e60b235f72897afcc8f739130508428aaacf97896e70447d1090fc42d` |
| 24 | `def` | [elabNormNum](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant461580bde5b4a3bb6b003ca2f282495e27d9145ba5240d56c168514616b221b2.lean/declarations/elabnormnum--8e63ce6d496d3dd0916aa76e.md) | 294 | `declaration-track:8e63ce6d496d3dd0916aa76e3738ac5f38663445be5c564562aee737f753a283` |
| 25 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant461580bde5b4a3bb6b003ca2f282495e27d9145ba5240d56c168514616b221b2.lean/declarations/elab--b66cf1cce763169b2e696fac.md) | 316 | `declaration-track:b66cf1cce763169b2e696fac664125aecc815a53680324869c0d658a112384fb` |
| 26 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant461580bde5b4a3bb6b003ca2f282495e27d9145ba5240d56c168514616b221b2.lean/declarations/elab--fbb04790ca9a7fe571a78435.md) | 321 | `declaration-track:fbb04790ca9a7fe571a7843556fe404237a5f335e716e579a3a5fea72aa13d67` |
| 27 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant461580bde5b4a3bb6b003ca2f282495e27d9145ba5240d56c168514616b221b2.lean/declarations/syntax--9aa3bea34d40756e3aaf9135.md) | 326 | `declaration-track:9aa3bea34d40756e3aaf913555008d0fce9a0a4a28a25de6d477dbeb1b0fee8d` |
| 28 | `def` | [elabNormNum1Conv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant461580bde5b4a3bb6b003ca2f282495e27d9145ba5240d56c168514616b221b2.lean/declarations/elabnormnum1conv--c4c385f47d872a93290a10bf.md) | 329 | `declaration-track:c4c385f47d872a93290a10bf63830bd62ae3285369aeae75abfa7041bcece81e` |
| 29 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant461580bde5b4a3bb6b003ca2f282495e27d9145ba5240d56c168514616b221b2.lean/declarations/syntax--995452380b745f4b746e721e.md) | 333 | `declaration-track:995452380b745f4b746e721eba503cfe404039ee560adfc010306a619f104188` |
| 30 | `def` | [elabNormNumConv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant461580bde5b4a3bb6b003ca2f282495e27d9145ba5240d56c168514616b221b2.lean/declarations/elabnormnumconv--9413759882b5a8e344c79947.md) | 337 | `declaration-track:9413759882b5a8e344c799473dcdc7e5d02bd57d8b580b695c38d1f215bf08f6` |
| 31 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant461580bde5b4a3bb6b003ca2f282495e27d9145ba5240d56c168514616b221b2.lean/declarations/macro--3b1685d147b015e2e433246d.md) | 357 | `declaration-track:3b1685d147b015e2e433246daba12f65cff076acce593bd5ce3051c29f0ce3b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
