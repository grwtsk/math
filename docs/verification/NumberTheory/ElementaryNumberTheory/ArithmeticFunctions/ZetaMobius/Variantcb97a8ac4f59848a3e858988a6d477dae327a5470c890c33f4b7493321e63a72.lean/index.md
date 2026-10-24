# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.ZetaMobius.Variantcb97a8ac4f59848a3e858988a6d477dae327a5470c890c33f4b7493321e63a72

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb18b3d1ab40f79351387f476fb1ce64c324487f",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ZetaMobius/Variantcb97a8ac4f59848a3e858988a6d477dae327a5470c890c33f4b7493321e63a72.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ZetaMobius/Variantcb97a8ac4f59848a3e858988a6d477dae327a5470c890c33f4b7493321e63a72.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ZetaMobius/Variantcb97a8ac4f59848a3e858988a6d477dae327a5470c890c33f4b7493321e63a72.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb18b3d1ab40f79351387f476fb1ce64c324487f`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ZetaMobius/Variantcb97a8ac4f59848a3e858988a6d477dae327a5470c890c33f4b7493321e63a72.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ZetaMobius/Variantcb97a8ac4f59848a3e858988a6d477dae327a5470c890c33f4b7493321e63a72.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.FractalSpace` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ArithmeticFunction](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ZetaMobius/Variantcb97a8ac4f59848a3e858988a6d477dae327a5470c890c33f4b7493321e63a72.lean/declarations/arithmeticfunction--af21180cc6c1076c1f384e51.md) | 13 | `declaration-track:af21180cc6c1076c1f384e51038379ce14d347d5c32601c6d69bc37c65a0e14a` |
| 2 | `abbrev` | [DirichletSeries](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ZetaMobius/Variantcb97a8ac4f59848a3e858988a6d477dae327a5470c890c33f4b7493321e63a72.lean/declarations/dirichletseries--80fb80110c83f979e05bcffe.md) | 14 | `declaration-track:80fb80110c83f979e05bcffedb63c34123d9da636419dce39dc48a617b357631` |
| 3 | `abbrev` | [PrimeScale](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ZetaMobius/Variantcb97a8ac4f59848a3e858988a6d477dae327a5470c890c33f4b7493321e63a72.lean/declarations/primescale--14b1598b494ab5d0c40aa018.md) | 15 | `declaration-track:14b1598b494ab5d0c40aa01835027fb9772f02dcaa97a647185f4b984186fe19` |
| 4 | `abbrev` | [SquareFreeScale](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ZetaMobius/Variantcb97a8ac4f59848a3e858988a6d477dae327a5470c890c33f4b7493321e63a72.lean/declarations/squarefreescale--7d747601725fefb7fdc0289e.md) | 16 | `declaration-track:7d747601725fefb7fdc0289e470a63bacfce55e90fe5fe40d643bf9715eb0029` |
| 5 | `def` | [RiemannZeta](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ZetaMobius/Variantcb97a8ac4f59848a3e858988a6d477dae327a5470c890c33f4b7493321e63a72.lean/declarations/riemannzeta--a717e7be76b27580c3c2b84e.md) | 18 | `declaration-track:a717e7be76b27580c3c2b84ef4186c29ac8b1dd7ba4ef5eac93a17313e147e65` |
| 6 | `def` | [zeta](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ZetaMobius/Variantcb97a8ac4f59848a3e858988a6d477dae327a5470c890c33f4b7493321e63a72.lean/declarations/zeta--4c45a4dc69bd19121a52fe78.md) | 19 | `declaration-track:4c45a4dc69bd19121a52fe78c6a62dade97c43ab3ee1e2db19b5e7794dceb2a3` |
| 7 | `def` | [arithmeticDelta](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ZetaMobius/Variantcb97a8ac4f59848a3e858988a6d477dae327a5470c890c33f4b7493321e63a72.lean/declarations/arithmeticdelta--df72f8a91bc4afd2e5a4d0dd.md) | 21 | `declaration-track:df72f8a91bc4afd2e5a4d0dd9efa86ad46bdb272801c2e46bb7cf3ca980dd0bb` |
| 8 | `def` | [oneArithmetic](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ZetaMobius/Variantcb97a8ac4f59848a3e858988a6d477dae327a5470c890c33f4b7493321e63a72.lean/declarations/onearithmetic--2f17d0f9960076c12be06c65.md) | 24 | `declaration-track:2f17d0f9960076c12be06c65cb7cd7dbfdeb1a29100f34493e5a37260d5444b7` |
| 9 | `def` | [MobiusFunction](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ZetaMobius/Variantcb97a8ac4f59848a3e858988a6d477dae327a5470c890c33f4b7493321e63a72.lean/declarations/mobiusfunction--7b4a281f9fa2bc804d88454f.md) | 27 | `declaration-track:7b4a281f9fa2bc804d88454f8878e313f119612882f90a8b90547cf3ed7c272e` |
| 10 | `def` | [mobius](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ZetaMobius/Variantcb97a8ac4f59848a3e858988a6d477dae327a5470c890c33f4b7493321e63a72.lean/declarations/mobius--46475e52f131a4c6d716315e.md) | 30 | `declaration-track:46475e52f131a4c6d716315ed889aef8395b78bf46f8b1808543a8277fc72109` |
| 11 | `def` | [DirichletConvolution](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ZetaMobius/Variantcb97a8ac4f59848a3e858988a6d477dae327a5470c890c33f4b7493321e63a72.lean/declarations/dirichletconvolution--64af9dc32c9ddb1858010db8.md) | 33 | `declaration-track:64af9dc32c9ddb1858010db8ce216ab2c23668d94bf77e1d0791e9e047dbbfcb` |
| 12 | `def` | [dirichletConvolution](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ZetaMobius/Variantcb97a8ac4f59848a3e858988a6d477dae327a5470c890c33f4b7493321e63a72.lean/declarations/dirichletconvolution--41c985b10850f819d3f58e1f.md) | 36 | `declaration-track:41c985b10850f819d3f58e1fa4d3795a409e9d9d3a0948e26ccb9ab241a94ebd` |
| 13 | `structure` | [FinitePrimeSet](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ZetaMobius/Variantcb97a8ac4f59848a3e858988a6d477dae327a5470c890c33f4b7493321e63a72.lean/declarations/finiteprimeset--f8b960d6c665286109bfc7a9.md) | 38 | `declaration-track:f8b960d6c665286109bfc7a9c7733cdaef02a412bd4c974c7b92b6407e82effb` |
| 14 | `def` | [EulerProduct](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ZetaMobius/Variantcb97a8ac4f59848a3e858988a6d477dae327a5470c890c33f4b7493321e63a72.lean/declarations/eulerproduct--76e4b147f25eadd0249f943e.md) | 42 | `declaration-track:76e4b147f25eadd0249f943ebf11ed1018cc487548d6658184bcda6689b20ece` |
| 15 | `def` | [finiteEulerProduct](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ZetaMobius/Variantcb97a8ac4f59848a3e858988a6d477dae327a5470c890c33f4b7493321e63a72.lean/declarations/finiteeulerproduct--f86da921273024203801b0a8.md) | 43 | `declaration-track:f86da921273024203801b0a814aa7c0c36e5856bf094cb87efc4f5869c12af10` |
| 16 | `def` | [finitePrimePowerDirichletSum](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ZetaMobius/Variantcb97a8ac4f59848a3e858988a6d477dae327a5470c890c33f4b7493321e63a72.lean/declarations/finiteprimepowerdirichletsum--5b3393b07794cac4e5c93f93.md) | 45 | `declaration-track:5b3393b07794cac4e5c93f932edbf2590d3d29967ed7ad3223c8f418647ce0e3` |
| 17 | `theorem` | [mobius_dirichlet_inverse_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ZetaMobius/Variantcb97a8ac4f59848a3e858988a6d477dae327a5470c890c33f4b7493321e63a72.lean/declarations/mobius-dirichlet-inverse-one--14023fde113cded1d83e5fa3.md) | 47 | `result-track:14023fde113cded1d83e5fa357a8dfbf04af760a96abbba494dec41dea73b41d` |
| 18 | `theorem` | [finite_euler_product_expands_over_prime_powers](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ZetaMobius/Variantcb97a8ac4f59848a3e858988a6d477dae327a5470c890c33f4b7493321e63a72.lean/declarations/finite-euler-product-expands-over-prime-powers--43c17eae8e18ad1f42f22baa.md) | 51 | `result-track:43c17eae8e18ad1f42f22baadbed65f385eefc54a791c1a23a4b3c604a101fc9` |
| 19 | `def` | [analytic_euler_product_not_claimed](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ZetaMobius/Variantcb97a8ac4f59848a3e858988a6d477dae327a5470c890c33f4b7493321e63a72.lean/declarations/analytic-euler-product-not-claimed--0658d350fe997890711fa19c.md) | 58 | `declaration-track:0658d350fe997890711fa19c3f5c7cf9c18e164ed8e5139b1a72f37803924ffe` |
| 20 | `def` | [analytic_mobius_inverse_not_claimed](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ZetaMobius/Variantcb97a8ac4f59848a3e858988a6d477dae327a5470c890c33f4b7493321e63a72.lean/declarations/analytic-mobius-inverse-not-claimed--f034769a521955ab2b642313.md) | 61 | `declaration-track:f034769a521955ab2b64231388c219c520fa667bef981be2d8e2130051804a35` |
| 21 | `structure` | [RiemannZetaDescriptor](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ZetaMobius/Variantcb97a8ac4f59848a3e858988a6d477dae327a5470c890c33f4b7493321e63a72.lean/declarations/riemannzetadescriptor--a95163d8f819733b59f1baf8.md) | 64 | `declaration-track:a95163d8f819733b59f1baf89d7e887d1236b36ec7394c1ee65fc15732f92b1d` |
| 22 | `structure` | [EulerProductDescriptor](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ZetaMobius/Variantcb97a8ac4f59848a3e858988a6d477dae327a5470c890c33f4b7493321e63a72.lean/declarations/eulerproductdescriptor--2d91e94897c1255b602ed69c.md) | 69 | `declaration-track:2d91e94897c1255b602ed69c43a88c339f83bf55411227733a2da5d6372f621d` |
| 23 | `structure` | [MobiusDescriptor](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ZetaMobius/Variantcb97a8ac4f59848a3e858988a6d477dae327a5470c890c33f4b7493321e63a72.lean/declarations/mobiusdescriptor--6afc7d77e96cdc5acdc0c3a1.md) | 74 | `declaration-track:6afc7d77e96cdc5acdc0c3a18238de6db0ed91d7cf667bd014d7e924b3542db4` |
| 24 | `structure` | [DirichletSeriesDescriptor](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ZetaMobius/Variantcb97a8ac4f59848a3e858988a6d477dae327a5470c890c33f4b7493321e63a72.lean/declarations/dirichletseriesdescriptor--8c78cc3313656907531ed72c.md) | 79 | `declaration-track:8c78cc3313656907531ed72c531955d4d0af895efde172c2a271d76e970762a6` |
| 25 | `structure` | [DirichletConvolutionDescriptor](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ZetaMobius/Variantcb97a8ac4f59848a3e858988a6d477dae327a5470c890c33f4b7493321e63a72.lean/declarations/dirichletconvolutiondescriptor--a2d8f19cd8f6f8999d95f3ca.md) | 84 | `declaration-track:a2d8f19cd8f6f8999d95f3ca4451f669ef5b5bb794a497c8a84f0fb4260be750` |
| 26 | `structure` | [ZetaMobiusScaleData](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ZetaMobius/Variantcb97a8ac4f59848a3e858988a6d477dae327a5470c890c33f4b7493321e63a72.lean/declarations/zetamobiusscaledata--b5e2c1a8475002481e4dd1b0.md) | 88 | `declaration-track:b5e2c1a8475002481e4dd1b0c19aab17d4539c0105ceaa9fd350344169766155` |
| 27 | `def` | [ZetaMobiusArithmeticSound](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ZetaMobius/Variantcb97a8ac4f59848a3e858988a6d477dae327a5470c890c33f4b7493321e63a72.lean/declarations/zetamobiusarithmeticsound--e8aeeee6715ba33c0d81205e.md) | 96 | `declaration-track:e8aeeee6715ba33c0d81205ef3417d4c4e31991e478d163ce0ba563aec728bd2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
