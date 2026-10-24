# Verification target: GRWTSK.AlgebraicGeometry.Hodge.CMRealRescaling

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b133e9d19caf02a52f34f18607ebfe291eaf3f4",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/AlgebraicGeometry/Hodge/CMRealRescaling.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMRealRescaling.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMRealRescaling.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b133e9d19caf02a52f34f18607ebfe291eaf3f4`.

Source path: `GRWTSK/AlgebraicGeometry/Hodge/CMRealRescaling.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/AlgebraicGeometry/Hodge/CMRealRescaling.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.NumberField.TotallyRealSignApproximation`](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberFields/TotallyRealSignApproximation.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.AlgebraicGeometry.Hodge.CMArchimedeanPositivity`](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RealRescalingInterface](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMRealRescaling.lean/declarations/realrescalinginterface--8b6faf65e965e54652ed0f7e.md) | 43 | `declaration-track:8b6faf65e965e54652ed0f7ef475b5bf261f08374105574e30b24e54405e168d` |
| 2 | `def` | [requiredSignPattern](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMRealRescaling.lean/declarations/requiredsignpattern--188808c4de628f362d9a2d7d.md) | 57 | `declaration-track:188808c4de628f362d9a2d7d8aa283956daea35b7e048a66af076c3283fe4d00` |
| 3 | `theorem` | [included_fixed](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMRealRescaling.lean/declarations/included-fixed--0fee3b4a265db5dd0fe39e02.md) | 66 | `result-track:0fee3b4a265db5dd0fe39e02ae8600f38385372c1a1e6d22718a7d7fea616897` |
| 4 | `theorem` | [exists_fixedElement_realizesRequiredSign](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMRealRescaling.lean/declarations/exists-fixedelement-realizesrequiredsign--47cd5bef9c41631b49f71e8f.md) | 74 | `result-track:47cd5bef9c41631b49f71e8fb3ba966a181d9475969a9cd8d13aa715e2342505` |
| 5 | `theorem` | [exists_signControlledXi](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMRealRescaling.lean/declarations/exists-signcontrolledxi--da953a9ea13876d787210476.md) | 134 | `result-track:da953a9ea13876d787210476d2487e533886a912aaf9cf796a0da0a939adfc84` |
| 6 | `theorem` | [nonempty_signControlledXi](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMRealRescaling.lean/declarations/nonempty-signcontrolledxi--c6414a61c69b9c4c3f1ff570.md) | 146 | `result-track:c6414a61c69b9c4c3f1ff570e3b130085d4913104c0e2f9f95c71f41b2340bd2` |
| 7 | `def` | [maximalRealSubfieldInclude](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMRealRescaling.lean/declarations/maximalrealsubfieldinclude--949d742afebdcb87dbc56a46.md) | 175 | `declaration-track:949d742afebdcb87dbc56a466d9119ae3852ff04a14f41ade0818d662aa71e01` |
| 8 | `theorem` | [maximalRealSubfieldInclude_apply](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMRealRescaling.lean/declarations/maximalrealsubfieldinclude-apply--fd2a8d22ffd9820c9bd28505.md) | 179 | `result-track:fd2a8d22ffd9820c9bd28505f178aa576cea0476f58d569a907f8f5c2c137c3b` |
| 9 | `theorem` | [maximalRealSubfieldInclude_fixed](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMRealRescaling.lean/declarations/maximalrealsubfieldinclude-fixed--3627440883d3e258b9faece5.md) | 183 | `result-track:3627440883d3e258b9faece5bbf7e3948de6ba8d2180554df1640a4539bac27d` |
| 10 | `def` | [liftedRealEmbedding](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMRealRescaling.lean/declarations/liftedrealembedding--3a00d310bfc55fad3adb6140.md) | 192 | `declaration-track:3a00d310bfc55fad3adb6140101d9168a0b4b126bdb8f4d98a180f63c580c9e0` |
| 11 | `theorem` | [liftedRealEmbedding_algebraMap](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMRealRescaling.lean/declarations/liftedrealembedding-algebramap--66ebbd64833a34a1007f3d35.md) | 197 | `result-track:66ebbd64833a34a1007f3d351f25a396609cd8f3021cec248745d25241939e18` |
| 12 | `theorem` | [exists_galoisLiftOfRealEmbedding](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMRealRescaling.lean/declarations/exists-galoisliftofrealembedding--3e552524d98785935a9e7405.md) | 204 | `result-track:3e552524d98785935a9e740551e9a543e531e89ec674dc5b3e6a91dee5638304` |
| 13 | `def` | [galoisLiftOfRealEmbedding](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMRealRescaling.lean/declarations/galoisliftofrealembedding--6d0d30dd0e2d51c1aa00dcd8.md) | 216 | `declaration-track:6d0d30dd0e2d51c1aa00dcd82c6f053490268c5f803a95d7d1b348870118c60b` |
| 14 | `def` | [representativeOfRealEmbedding](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMRealRescaling.lean/declarations/representativeofrealembedding--c0cb02eb82cf78a17dba7a4c.md) | 223 | `declaration-track:c0cb02eb82cf78a17dba7a4caac1e7f08c6b30bfc541c210b2ceb8728b267686` |
| 15 | `theorem` | [complexEmbeddingAt_representativeOfRealEmbedding](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMRealRescaling.lean/declarations/complexembeddingat-representativeofrealembedding--115d8597839afeb7ed73b2b8.md) | 227 | `result-track:115d8597839afeb7ed73b2b8ca3d158038e7eb79a878f0e319ca9c97b6a0d4e5` |
| 16 | `theorem` | [maximalRealSubfieldAlgEquiv_eq_one_or_complexConj](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMRealRescaling.lean/declarations/maximalrealsubfieldalgequiv-eq-one-or-complexconj--23aa965b351a78c0a33168b6.md) | 237 | `result-track:23aa965b351a78c0a33168b6895ae6a4353bcec4e64c97cd875a04675c7d5a70` |
| 17 | `theorem` | [eq_or_eq_conj_of_eq_on_maximalRealSubfield](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMRealRescaling.lean/declarations/eq-or-eq-conj-of-eq-on-maximalrealsubfield--e02fcb0b91c5dd44f9f54506.md) | 252 | `result-track:e02fcb0b91c5dd44f9f545065c43e3d59e946d1e36140a17124851df50c7c02d` |
| 18 | `def` | [maximalRealRestriction](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMRealRescaling.lean/declarations/maximalrealrestriction--1b755bddf941ecc24153b7b5.md) | 290 | `declaration-track:1b755bddf941ecc24153b7b50d70256e05710ab9f977ff3707337359d6ed47da` |
| 19 | `theorem` | [maximalRealRestriction_apply](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMRealRescaling.lean/declarations/maximalrealrestriction-apply--9dc061b409151f5925016e8b.md) | 296 | `result-track:9dc061b409151f5925016e8b7452aff4de9d2966e97dbb4b10bb036d46ed8f3a` |
| 20 | `theorem` | [canonicalRepresentatives_cover](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMRealRescaling.lean/declarations/canonicalrepresentatives-cover--4b00ead0e1e9bfd5371f01d2.md) | 303 | `result-track:4b00ead0e1e9bfd5371f01d2f4a70c778c8ed431f1cd30a1d45eb1e851df9c48` |
| 21 | `def` | [canonicalMaximalRealRescalingInterface](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMRealRescaling.lean/declarations/canonicalmaximalrealrescalinginterface--3c8c5a0da85d011501a57182.md) | 349 | `declaration-track:3c8c5a0da85d011501a57182cb99507ccd0f2462ac9235db3cfac53efa2a4df5` |
| 22 | `theorem` | [nonempty_signControlledXi_canonical_of_seed](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMRealRescaling.lean/declarations/nonempty-signcontrolledxi-canonical-of-seed--7e2473876b00e6e744e3df1c.md) | 397 | `result-track:7e2473876b00e6e744e3df1c9b28564c0a2f55078389fc71c8d1a5f7636e1498` |
| 23 | `theorem` | [nonempty_signControlledXi_canonical](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMRealRescaling.lean/declarations/nonempty-signcontrolledxi-canonical--ca95df951413722eab19b592.md) | 407 | `result-track:ca95df951413722eab19b592757213bc87f26bc54de8818a7afb40db1c09cb3b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
