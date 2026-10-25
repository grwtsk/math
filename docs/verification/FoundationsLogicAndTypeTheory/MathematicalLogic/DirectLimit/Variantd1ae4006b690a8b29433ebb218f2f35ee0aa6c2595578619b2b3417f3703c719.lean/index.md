# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.DirectLimit.Variantd1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e842ecceb47a423ff6ca7cca4d1e407f8c0e1d9",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantd1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantd1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantd1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e842ecceb47a423ff6ca7cca4d1e407f8c0e1d9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantd1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantd1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finite.Sum` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Order` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.ModelTheory.FinitelyGenerated` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.ModelTheory.Quotients` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.DirectedInverseSystem` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [natLERec](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantd1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719.lean/declarations/natlerec--370428f0f7dada15e0520131.md) | 52 | `declaration-track:370428f0f7dada15e0520131ec1d8375beb2630f3363838b85545330965804e1` |
| 2 | `theorem` | [coe_natLERec](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantd1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719.lean/declarations/coe-natlerec--cfe21af2fc2a61e3a17d9213.md) | 56 | `result-track:cfe21af2fc2a61e3a17d9213440089d4bfc37ab38dc61a7ebce5bba88c6065a8` |
| 3 | `instance` | [natLERec.directedSystem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantd1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719.lean/declarations/natlerec-directedsystem--6fc941d09f2216c690f882c4.md) | 69 | `declaration-track:6fc941d09f2216c690f882c4dd7bb132dbc2eeb1d5c828e61f82440a34871e3b` |
| 4 | `abbrev` | [Structure.Sigma](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantd1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719.lean/declarations/structure-sigma--4fb5b4a04a01fdf102cbed1c.md) | 85 | `declaration-track:4fb5b4a04a01fdf102cbed1cdc6d87e15035096298fa513d5cec72b191f27f83` |
| 5 | `abbrev` | [Structure.Sigma.mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantd1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719.lean/declarations/structure-sigma-mk--8e0ed9aea0a0b396eb734764.md) | 90 | `declaration-track:8e0ed9aea0a0b396eb73476485f6efd664d1da49ca680b94017d6872d1c03807` |
| 6 | `def` | [unify](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantd1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719.lean/declarations/unify--a7917a1c84f8fefa9dab15d5.md) | 95 | `declaration-track:a7917a1c84f8fefa9dab15d51b9033e7e19f399b66ca8de796286188a2c10673` |
| 7 | `theorem` | [unify_sigma_mk_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantd1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719.lean/declarations/unify-sigma-mk-self--43eebb4f16484be729aafc86.md) | 102 | `result-track:43eebb4f16484be729aafc86c5206e5f98111fe091f3234fc00d450c95be780b` |
| 8 | `theorem` | [comp_unify](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantd1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719.lean/declarations/comp-unify--f8361f9165a5d1b487753f69.md) | 109 | `result-track:f8361f9165a5d1b487753f690643d06e36d03637d7e6eedde94593fe46522c1d` |
| 9 | `def` | [setoid](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantd1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719.lean/declarations/setoid--a6f659c0e6075ccc8e53156b.md) | 123 | `declaration-track:a6f659c0e6075ccc8e53156b76cbe7cf8b0602abfc5502426bdf7958a04a71ed` |
| 10 | `def` | [sigmaStructure](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantd1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719.lean/declarations/sigmastructure--0dbbbd11da184d3834504dd9.md) | 139 | `declaration-track:0dbbbd11da184d3834504dd96fca2b055fbc21b829c467bd05cffd2b715d6e53` |
| 11 | `def` | [DirectLimit](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantd1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719.lean/declarations/directlimit--92e7409be04bdce73834aa36.md) | 153 | `declaration-track:92e7409be04bdce73834aa36f18c79b76eaf13a32ace7952f4c36679b697cac0` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantd1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719.lean/declarations/instance--c871d1ec5c8bad55504d1d41.md) | 158 | `declaration-track:c871d1ec5c8bad55504d1d4192247cf2b3f93bab6dfdc089f0d6c7e468e2bffb` |
| 13 | `theorem` | [equiv_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantd1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719.lean/declarations/equiv-iff--aa90ccb7fd0303e613660dd1.md) | 166 | `result-track:aa90ccb7fd0303e613660dd10ad12b336db91286533f009e338742d9a5fb6537` |
| 14 | `theorem` | [funMap_unify_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantd1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719.lean/declarations/funmap-unify-equiv--218ff2442f3ef0bf7ca90186.md) | 178 | `result-track:218ff2442f3ef0bf7ca901863af854b6e74770a7fb8ed71d5dd20ac831507359` |
| 15 | `theorem` | [relMap_unify_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantd1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719.lean/declarations/relmap-unify-equiv--30c2cb705a4ace7a416a3eeb.md) | 185 | `result-track:30c2cb705a4ace7a416a3eebfc2e558bae9fba730e405653e3c71f009894943e` |
| 16 | `theorem` | [exists_unify_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantd1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719.lean/declarations/exists-unify-eq--7a386555df30b55827f4bc48.md) | 193 | `result-track:7a386555df30b55827f4bc48f08724675216170e37c3aead3176fda3be5010ba` |
| 17 | `theorem` | [funMap_equiv_unify](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantd1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719.lean/declarations/funmap-equiv-unify--8f7db7f7f264596f3c682148.md) | 201 | `result-track:8f7db7f7f264596f3c682148031128e95c7cb2ce8c8e9397257acdf7c9e8f1fe` |
| 18 | `theorem` | [relMap_equiv_unify](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantd1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719.lean/declarations/relmap-equiv-unify--8c522a9167937a19926262ef.md) | 206 | `result-track:8c522a9167937a19926262ef6dc44d7d13adf8f53f40c363c688dc0348ecd093` |
| 19 | `instance` | [prestructure](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantd1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719.lean/declarations/prestructure--66fcdf5870aef906c43d26a3.md) | 213 | `declaration-track:66fcdf5870aef906c43d26a38c82177dffb11071bdcd506fe6193a1158368b3b` |
| 20 | `instance` | [instStructureDirectLimit](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantd1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719.lean/declarations/inststructuredirectlimit--4c37cb0419d39f34e8b8c358.md) | 228 | `declaration-track:4c37cb0419d39f34e8b8c358552dac2061e2ffe478ffe97d7314a330db6887a4` |
| 21 | `theorem` | [funMap_quotient_mk'_sigma_mk'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantd1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719.lean/declarations/funmap-quotient-mk-sigma-mk--97c2f1390a9bb29574059789.md) | 232 | `result-track:97c2f1390a9bb2957405978949a0ac8502a813eb686a988a79c7607ff293ae76` |
| 22 | `theorem` | [relMap_quotient_mk'_sigma_mk'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantd1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719.lean/declarations/relmap-quotient-mk-sigma-mk--cb94b2a58f21fd6e58e23479.md) | 242 | `result-track:cb94b2a58f21fd6e58e23479160cd308eb135db0450ef10a51ac3917a4c2626e` |
| 23 | `theorem` | [exists_quotient_mk'_sigma_mk'_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantd1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719.lean/declarations/exists-quotient-mk-sigma-mk-eq--8e527acf40c2c07d3525bf3b.md) | 250 | `result-track:8e527acf40c2c07d3525bf3b78482e2cb5e3a14b34ac1cbddb34758516cc7533` |
| 24 | `def` | [of](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantd1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719.lean/declarations/of--7bd3e0b0d7dc4aa9d2cbc2dc.md) | 267 | `declaration-track:7bd3e0b0d7dc4aa9d2cbc2dc68c7b7ace974c1296c02e4840af1fe76754d6275` |
| 25 | `theorem` | [of_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantd1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719.lean/declarations/of-apply--670b0c224633dc8889034915.md) | 286 | `result-track:670b0c224633dc8889034915317119bd93609159518f0dcf18dd06ac742609cb` |
| 26 | `theorem` | [of_f](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantd1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719.lean/declarations/of-f--21608a25681a6c6d387e5694.md) | 291 | `result-track:21608a25681a6c6d387e5694820b7f58d4327e36d9eff6eb145f82b9f1793cbd` |
| 27 | `theorem` | [exists_of](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantd1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719.lean/declarations/exists-of--97d3a0204ad9f27991886f0d.md) | 298 | `result-track:97d3a0204ad9f27991886f0de60ea3367535fcfb41dfac516d0d5dcf84877694` |
| 28 | `theorem` | [inductionOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantd1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719.lean/declarations/inductionon--5562efff8a223dee08cbe908.md) | 302 | `result-track:5562efff8a223dee08cbe9081e303e9275ba54f7e67d523245cd54fcf41d4a5a` |
| 29 | `theorem` | [iSup_range_of_eq_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantd1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719.lean/declarations/isup-range-of-eq-top--5aabaeda69a7381af4092208.md) | 307 | `result-track:5aabaeda69a7381af4092208b4abea3a3b414e3ec9849993b9bd4056f39ffe1b` |
| 30 | `theorem` | [exists_fg_substructure_in_Sigma](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantd1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719.lean/declarations/exists-fg-substructure-in-sigma--03551a15957bc29dc9f9784e.md) | 313 | `result-track:03551a15957bc29dc9f9784ea2dc0252b14905d31b0214bc5b984c013b9705a6` |
| 31 | `def` | [lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantd1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719.lean/declarations/lift--0f3da7702442c42fd3d8b7a9.md) | 330 | `declaration-track:0f3da7702442c42fd3d8b7a9f8d953184a0d63c4cb31b72c0d65d64000010e49` |
| 32 | `theorem` | [lift_quotient_mk'_sigma_mk'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantd1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719.lean/declarations/lift-quotient-mk-sigma-mk--9cefcae252e93f178eb2d37e.md) | 360 | `result-track:9cefcae252e93f178eb2d37e99b1eb7fa9ba5a616bbfe1b1fcf401d3a985604b` |
| 33 | `theorem` | [lift_of](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantd1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719.lean/declarations/lift-of--cc87d8fa2cc7dc8bc1857e37.md) | 364 | `result-track:cc87d8fa2cc7dc8bc1857e374039a2e8b8208d02fcba7a01be5e3b96a05fc6b0` |
| 34 | `theorem` | [lift_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantd1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719.lean/declarations/lift-unique--fec599a31b7b1740546ce65e.md) | 366 | `result-track:fec599a31b7b1740546ce65eef095757c1d3f17f34292e3838e3bdf8dd3b64bd` |
| 35 | `lemma` | [range_lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantd1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719.lean/declarations/range-lift--87c0f5539a26ab1d9c47263a.md) | 372 | `result-track:87c0f5539a26ab1d9c47263ae32c68b2bd4ac03afbda4e841c043b9762d7fb96` |
| 36 | `def` | [equiv_lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantd1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719.lean/declarations/equiv-lift--bb3b19404f8be27f6cb46fad.md) | 385 | `declaration-track:bb3b19404f8be27f6cb46fad77bc714c0f5d94501e9bcee89d5ea4c6e88dcfcb` |
| 37 | `theorem` | [equiv_lift_of](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantd1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719.lean/declarations/equiv-lift-of--d32f9c9b956d9eef2ef2741e.md) | 401 | `result-track:d32f9c9b956d9eef2ef2741ecdcd9613b5cb48bee2d9ce8684f93fc188134c3f` |
| 38 | `theorem` | [cg](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantd1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719.lean/declarations/cg--cdd979749c39e22b7cae2574.md) | 407 | `result-track:cdd979749c39e22b7cae2574a483fed98c86addbc0be2709ab8b5142e001cd91` |
| 39 | `instance` | [cg'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantd1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719.lean/declarations/cg--538bd58c2ad7ab766af45bfe.md) | 423 | `declaration-track:538bd58c2ad7ab766af45bfe3382036efbd080b5785c0b9be675bb84948ea78d` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantd1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719.lean/declarations/instance--c5a873f1563174969f714084.md) | 436 | `declaration-track:c5a873f1563174969f714084a4e05387ccfc29e18a56139d3308b2b957dd1971` |
| 41 | `def` | [liftInclusion](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantd1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719.lean/declarations/liftinclusion--f5aa5dd338ba44ac49a0ecb1.md) | 443 | `declaration-track:f5aa5dd338ba44ac49a0ecb1a798305c8f333a1e23c99ca9de307a31795e9a44` |
| 42 | `theorem` | [liftInclusion_of](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantd1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719.lean/declarations/liftinclusion-of--dfcc9af2bf5980c9899d3016.md) | 448 | `result-track:dfcc9af2bf5980c9899d3016efef63b44a547528aabcdeb2fc05ea3429fb7b4f` |
| 43 | `lemma` | [rangeLiftInclusion](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantd1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719.lean/declarations/rangeliftinclusion--72e12bd4791f40772f3a8b13.md) | 452 | `result-track:72e12bd4791f40772f3a8b130a8d5d587f4866cc0f961e8abddc9cfc34a06e95` |
| 44 | `def` | [Equiv_iSup](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantd1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719.lean/declarations/equiv-isup--301f66c4728a6662a7509072.md) | 456 | `declaration-track:301f66c4728a6662a750907288e28ff8b3cf4d2de86938787b2f5560b4883d00` |
| 45 | `theorem` | [Equiv_isup_of_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantd1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719.lean/declarations/equiv-isup-of-apply--ddde08d8157c4cb48e9c5d83.md) | 470 | `result-track:ddde08d8157c4cb48e9c5d832c503220a25831c867a00df5c75fa67404e77d47` |
| 46 | `theorem` | [Equiv_isup_symm_inclusion_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantd1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719.lean/declarations/equiv-isup-symm-inclusion-apply--e3832a887bf4d1c8223374fb.md) | 474 | `result-track:e3832a887bf4d1c8223374fb5dceaa360a5387ddac142c7775fd544615b42cee` |
| 47 | `theorem` | [Equiv_isup_symm_inclusion](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantd1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719.lean/declarations/equiv-isup-symm-inclusion--5aeab5f68f9f19793342002e.md) | 482 | `result-track:5aeab5f68f9f19793342002ec7c5e6bb09153d9a4203d264f9fc9c8f6a03e41d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
