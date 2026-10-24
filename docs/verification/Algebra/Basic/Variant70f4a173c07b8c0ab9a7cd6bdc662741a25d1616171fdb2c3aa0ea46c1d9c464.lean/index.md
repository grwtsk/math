# Verification target: GRWTSK.Algebra.Basic.Variant70f4a173c07b8c0ab9a7cd6bdc662741a25d1616171fdb2c3aa0ea46c1d9c464

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5baae506ec26973fb25f9ff8817a4e60254e816f",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant70f4a173c07b8c0ab9a7cd6bdc662741a25d1616171fdb2c3aa0ea46c1d9c464.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant70f4a173c07b8c0ab9a7cd6bdc662741a25d1616171fdb2c3aa0ea46c1d9c464.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant70f4a173c07b8c0ab9a7cd6bdc662741a25d1616171fdb2c3aa0ea46c1d9c464.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5baae506ec26973fb25f9ff8817a4e60254e816f`.

Source path: `GRWTSK/Algebra/Basic/Variant70f4a173c07b8c0ab9a7cd6bdc662741a25d1616171fdb2c3aa0ea46c1d9c464.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant70f4a173c07b8c0ab9a7cd6bdc662741a25d1616171fdb2c3aa0ea46c1d9c464.lean.json)

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
| 1 | `lemma` | [residue_def](../../../../mathematics/Algebra/Basic/Variant70f4a173c07b8c0ab9a7cd6bdc662741a25d1616171fdb2c3aa0ea46c1d9c464.lean/declarations/residue-def--a90bd8814f0468d30e95680a.md) | 40 | `result-track:a90bd8814f0468d30e95680a8fa6899ef91b8a1146ee92b1cd3c4a846d9a9f75` |
| 2 | `lemma` | [ker_residue](../../../../mathematics/Algebra/Basic/Variant70f4a173c07b8c0ab9a7cd6bdc662741a25d1616171fdb2c3aa0ea46c1d9c464.lean/declarations/ker-residue--e4653d70699be297977614ae.md) | 42 | `result-track:e4653d70699be297977614ae2a6c921840af3d2bf539da8d8fd42817f025b156` |
| 3 | `lemma` | [residue_eq_zero_iff](../../../../mathematics/Algebra/Basic/Variant70f4a173c07b8c0ab9a7cd6bdc662741a25d1616171fdb2c3aa0ea46c1d9c464.lean/declarations/residue-eq-zero-iff--95092a02e02e0ce1f5369ab3.md) | 46 | `result-track:95092a02e02e0ce1f5369ab3df84c662324011e1259eec5069349af6f450a236` |
| 4 | `lemma` | [residue_ne_zero_iff_isUnit](../../../../mathematics/Algebra/Basic/Variant70f4a173c07b8c0ab9a7cd6bdc662741a25d1616171fdb2c3aa0ea46c1d9c464.lean/declarations/residue-ne-zero-iff-isunit--3553074b5b865f0d55fc60ec.md) | 49 | `result-track:3553074b5b865f0d55fc60ec6cbfc13e333fbbe25bddee996381e09a882641f3` |
| 5 | `lemma` | [residue_surjective](../../../../mathematics/Algebra/Basic/Variant70f4a173c07b8c0ab9a7cd6bdc662741a25d1616171fdb2c3aa0ea46c1d9c464.lean/declarations/residue-surjective--5f6b3f8ca87ffa6785230654.md) | 52 | `result-track:5f6b3f8ca87ffa6785230654e8d048938e2b713d4c9c55ea0d9cff9b10e294c8` |
| 6 | `instance` | [ResidueField.algebra](../../../../mathematics/Algebra/Basic/Variant70f4a173c07b8c0ab9a7cd6bdc662741a25d1616171fdb2c3aa0ea46c1d9c464.lean/declarations/residuefield-algebra--5e14e1c5bfe10c6e39b088a2.md) | 58 | `declaration-track:5e14e1c5bfe10c6e39b088a2f2fd057cf04910070e9e704df9b833f9c8748769` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant70f4a173c07b8c0ab9a7cd6bdc662741a25d1616171fdb2c3aa0ea46c1d9c464.lean/declarations/instance--2f85435e1e60f93379a16cd3.md) | 62 | `declaration-track:2f85435e1e60f93379a16cd31e89597e11a16c409c6a1534de0d6875db645895` |
| 8 | `theorem` | [ResidueField.algebraMap_eq](../../../../mathematics/Algebra/Basic/Variant70f4a173c07b8c0ab9a7cd6bdc662741a25d1616171fdb2c3aa0ea46c1d9c464.lean/declarations/residuefield-algebramap-eq--9698fdf730311386adcc8564.md) | 68 | `result-track:9698fdf730311386adcc856405a774afb98ba580c667102519518c041d5337d6` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant70f4a173c07b8c0ab9a7cd6bdc662741a25d1616171fdb2c3aa0ea46c1d9c464.lean/declarations/instance--9840c27a13469ab001fc92fc.md) | 71 | `declaration-track:9840c27a13469ab001fc92fc788da72487bf5e821b61bc973862378d5f16e238` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant70f4a173c07b8c0ab9a7cd6bdc662741a25d1616171fdb2c3aa0ea46c1d9c464.lean/declarations/instance--cb03160895c75a2052ff18e0.md) | 76 | `declaration-track:cb03160895c75a2052ff18e008f2efa9e2c1d685c587514af55e66cceafda300` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant70f4a173c07b8c0ab9a7cd6bdc662741a25d1616171fdb2c3aa0ea46c1d9c464.lean/declarations/instance--e092f67d2ff90481d8a482cf.md) | 79 | `declaration-track:e092f67d2ff90481d8a482cf056eed19b7f10c7aaf85120e524881259f4da05e` |
| 12 | `def` | [lift](../../../../mathematics/Algebra/Basic/Variant70f4a173c07b8c0ab9a7cd6bdc662741a25d1616171fdb2c3aa0ea46c1d9c464.lean/declarations/lift--de3e3150a0e9613a44403821.md) | 88 | `declaration-track:de3e3150a0e9613a44403821160bc98a1f38edf68c995a8945336269e7fd154e` |
| 13 | `theorem` | [lift_comp_residue](../../../../mathematics/Algebra/Basic/Variant70f4a173c07b8c0ab9a7cd6bdc662741a25d1616171fdb2c3aa0ea46c1d9c464.lean/declarations/lift-comp-residue--6e686876ed62f97f438c4d8d.md) | 93 | `result-track:6e686876ed62f97f438c4d8ddcebb5aa76a3c20cf55ae01ee0be299354069a6c` |
| 14 | `theorem` | [lift_residue_apply](../../../../mathematics/Algebra/Basic/Variant70f4a173c07b8c0ab9a7cd6bdc662741a25d1616171fdb2c3aa0ea46c1d9c464.lean/declarations/lift-residue-apply--ccb39d9c95203195dd4434a0.md) | 98 | `result-track:ccb39d9c95203195dd4434a08f0f6655a32c79ba9641cfdbe8283fd0f8c875a2` |
| 15 | `def` | [map](../../../../mathematics/Algebra/Basic/Variant70f4a173c07b8c0ab9a7cd6bdc662741a25d1616171fdb2c3aa0ea46c1d9c464.lean/declarations/map--4ea78af0667db00f31d85227.md) | 104 | `declaration-track:4ea78af0667db00f31d8522778b9882dca2dc62b54585bf4388a88a860f4dac5` |
| 16 | `theorem` | [map_id](../../../../mathematics/Algebra/Basic/Variant70f4a173c07b8c0ab9a7cd6bdc662741a25d1616171fdb2c3aa0ea46c1d9c464.lean/declarations/map-id--6fd30063401762108ed643df.md) | 113 | `result-track:6fd30063401762108ed643dfd939d13ecc38670a31e2016c10aa92044d9faebd` |
| 17 | `theorem` | [map_comp](../../../../mathematics/Algebra/Basic/Variant70f4a173c07b8c0ab9a7cd6bdc662741a25d1616171fdb2c3aa0ea46c1d9c464.lean/declarations/map-comp--9a1fe8c4eb3baae12a3bf625.md) | 119 | `result-track:9a1fe8c4eb3baae12a3bf625420224b4acf7e39b650889751c4c6b4bcb8389e8` |
| 18 | `theorem` | [map_comp_residue](../../../../mathematics/Algebra/Basic/Variant70f4a173c07b8c0ab9a7cd6bdc662741a25d1616171fdb2c3aa0ea46c1d9c464.lean/declarations/map-comp-residue--70d3ad2ada344eb5b891c919.md) | 124 | `result-track:70d3ad2ada344eb5b891c9196dbe57f1043c1a677570c60b6734b643f9167179` |
| 19 | `theorem` | [map_residue](../../../../mathematics/Algebra/Basic/Variant70f4a173c07b8c0ab9a7cd6bdc662741a25d1616171fdb2c3aa0ea46c1d9c464.lean/declarations/map-residue--8c66fc7a415d704afbaaaefd.md) | 129 | `result-track:8c66fc7a415d704afbaaaefd1aa7769e712bfe07873069c590799bf3954e9e4e` |
| 20 | `theorem` | [map_id_apply](../../../../mathematics/Algebra/Basic/Variant70f4a173c07b8c0ab9a7cd6bdc662741a25d1616171fdb2c3aa0ea46c1d9c464.lean/declarations/map-id-apply--748d8451987c89287fbe07c6.md) | 133 | `result-track:748d8451987c89287fbe07c6a2b294f485f2a02cd7e7186e8ab1a6f8d5cce3f1` |
| 21 | `theorem` | [map_map](../../../../mathematics/Algebra/Basic/Variant70f4a173c07b8c0ab9a7cd6bdc662741a25d1616171fdb2c3aa0ea46c1d9c464.lean/declarations/map-map--31266d11a00bf9d2c7a4547d.md) | 137 | `result-track:31266d11a00bf9d2c7a4547db8b33986e27c63c708de07842a8d4e6e21fc6a78` |
| 22 | `def` | [mapEquiv](../../../../mathematics/Algebra/Basic/Variant70f4a173c07b8c0ab9a7cd6bdc662741a25d1616171fdb2c3aa0ea46c1d9c464.lean/declarations/mapequiv--6735c37cb6977f1a0c39a293.md) | 143 | `declaration-track:6735c37cb6977f1a0c39a293356c17896c3a4659c9e88859646b57fe8fa4f157` |
| 23 | `theorem` | [mapEquiv.symm](../../../../mathematics/Algebra/Basic/Variant70f4a173c07b8c0ab9a7cd6bdc662741a25d1616171fdb2c3aa0ea46c1d9c464.lean/declarations/mapequiv-symm--616ce3efae39735f224396f7.md) | 153 | `result-track:616ce3efae39735f224396f7aa8b3c0f470c26070ffe733522e2755c9a135537` |
| 24 | `theorem` | [mapEquiv_trans](../../../../mathematics/Algebra/Basic/Variant70f4a173c07b8c0ab9a7cd6bdc662741a25d1616171fdb2c3aa0ea46c1d9c464.lean/declarations/mapequiv-trans--dbb5475ec0af113b6c352eae.md) | 157 | `result-track:dbb5475ec0af113b6c352eaed5edaf402068f7395c979505207a50c3aa6323a3` |
| 25 | `theorem` | [mapEquiv_refl](../../../../mathematics/Algebra/Basic/Variant70f4a173c07b8c0ab9a7cd6bdc662741a25d1616171fdb2c3aa0ea46c1d9c464.lean/declarations/mapequiv-refl--11996d4a2e4645083cf11033.md) | 162 | `result-track:11996d4a2e4645083cf11033a8e5563cc29b56be1e60a0d5ec5c6142cc3d40d9` |
| 26 | `def` | [mapAut](../../../../mathematics/Algebra/Basic/Variant70f4a173c07b8c0ab9a7cd6bdc662741a25d1616171fdb2c3aa0ea46c1d9c464.lean/declarations/mapaut--fccec7042eb0cc67c69faad5.md) | 168 | `declaration-track:fccec7042eb0cc67c69faad5256b8eaff651d263003c5d27542017442c07b12b` |
| 27 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant70f4a173c07b8c0ab9a7cd6bdc662741a25d1616171fdb2c3aa0ea46c1d9c464.lean/declarations/instance--ba142e4e516ca8a3670a63cb.md) | 179 | `declaration-track:ba142e4e516ca8a3670a63cb00c26570a18719ca46da7cf2949e57ab3df9a75b` |
| 28 | `theorem` | [residue_smul](../../../../mathematics/Algebra/Basic/Variant70f4a173c07b8c0ab9a7cd6bdc662741a25d1616171fdb2c3aa0ea46c1d9c464.lean/declarations/residue-smul--3bd49af8d3d09a661062a403.md) | 183 | `result-track:3bd49af8d3d09a661062a4034baafe0a23d34b05ed316df26638e8dfa5ab0096` |
| 29 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant70f4a173c07b8c0ab9a7cd6bdc662741a25d1616171fdb2c3aa0ea46c1d9c464.lean/declarations/instance--e701ab785cc6526ebcff1e4b.md) | 192 | `declaration-track:e701ab785cc6526ebcff1e4b12130f2c59a92cf6bb7c52125c4c0d4d2c309093` |
| 30 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant70f4a173c07b8c0ab9a7cd6bdc662741a25d1616171fdb2c3aa0ea46c1d9c464.lean/declarations/instance--cda8506cf1f963d295920a03.md) | 195 | `declaration-track:cda8506cf1f963d295920a03cf8a31b17175541e73b13a42a3a4707541b4444c` |
| 31 | `lemma` | [algebraMap_residue](../../../../mathematics/Algebra/Basic/Variant70f4a173c07b8c0ab9a7cd6bdc662741a25d1616171fdb2c3aa0ea46c1d9c464.lean/declarations/algebramap-residue--3932d2ddea6096511f3be8b7.md) | 198 | `result-track:3932d2ddea6096511f3be8b793997e50a80a50164a7218a5ab7489b2c9295856` |
| 32 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant70f4a173c07b8c0ab9a7cd6bdc662741a25d1616171fdb2c3aa0ea46c1d9c464.lean/declarations/instance--b8894683ce920ca5571ec874.md) | 202 | `declaration-track:b8894683ce920ca5571ec8743125ce1e458e6092aebb3ce8c68263f6a6af6a69` |
| 33 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant70f4a173c07b8c0ab9a7cd6bdc662741a25d1616171fdb2c3aa0ea46c1d9c464.lean/declarations/instance--186ce9b25f438f9c25860ecc.md) | 206 | `declaration-track:186ce9b25f438f9c25860ecc22c2dd34395092cf5018c7c0a5900f3eef17ac02` |
| 34 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant70f4a173c07b8c0ab9a7cd6bdc662741a25d1616171fdb2c3aa0ea46c1d9c464.lean/declarations/instance--b18d449b74957625a4c129ad.md) | 214 | `declaration-track:b18d449b74957625a4c129ad4376253c19ed6ed65a526cb79b40350ddb948291` |
| 35 | `instance` | [finite_of_module_finite](../../../../mathematics/Algebra/Basic/Variant70f4a173c07b8c0ab9a7cd6bdc662741a25d1616171fdb2c3aa0ea46c1d9c464.lean/declarations/finite-of-module-finite--2c0029188242d5e4243f71c9.md) | 217 | `declaration-track:2c0029188242d5e4243f71c96a1710d0494f1b03fb3a818cb3d5c1210b6c5d23` |
| 36 | `lemma` | [finite_of_finite](../../../../mathematics/Algebra/Basic/Variant70f4a173c07b8c0ab9a7cd6bdc662741a25d1616171fdb2c3aa0ea46c1d9c464.lean/declarations/finite-of-finite--0dcd03782255cc92300eeb7a.md) | 221 | `result-track:0dcd03782255cc92300eeb7a0661f9fdef7c56b5f9f609b1ab02fa8b4b5f7826` |
| 37 | `def` | [mapAlgHom](../../../../mathematics/Algebra/Basic/Variant70f4a173c07b8c0ab9a7cd6bdc662741a25d1616171fdb2c3aa0ea46c1d9c464.lean/declarations/mapalghom--968cef4699524f0671b7e147.md) | 233 | `declaration-track:968cef4699524f0671b7e1474bc8e5db694c19ccdbce6a348dcafe9ddf70b4d6` |
| 38 | `theorem` | [mapAlgHom_residue](../../../../mathematics/Algebra/Basic/Variant70f4a173c07b8c0ab9a7cd6bdc662741a25d1616171fdb2c3aa0ea46c1d9c464.lean/declarations/mapalghom-residue--4612d3bed60151c5f83bc736.md) | 241 | `result-track:4612d3bed60151c5f83bc736a75d8dbc93de29a0b38977cb411abc52e5924c7e` |
| 39 | `def` | [mapAlgEquiv](../../../../mathematics/Algebra/Basic/Variant70f4a173c07b8c0ab9a7cd6bdc662741a25d1616171fdb2c3aa0ea46c1d9c464.lean/declarations/mapalgequiv--211c13c093a38027ec2d09d9.md) | 248 | `declaration-track:211c13c093a38027ec2d09d9441c661b31428fc4337b1fb64a3c55a0cc58dbef` |
| 40 | `theorem` | [mapAlgEquiv_residue](../../../../mathematics/Algebra/Basic/Variant70f4a173c07b8c0ab9a7cd6bdc662741a25d1616171fdb2c3aa0ea46c1d9c464.lean/declarations/mapalgequiv-residue--1a14a80160faa333044d8b34.md) | 253 | `result-track:1a14a80160faa333044d8b34d33a58804a490e76bdd327e6ce6d5e657bbfacec` |
| 41 | `def` | [mapAlgHom'](../../../../mathematics/Algebra/Basic/Variant70f4a173c07b8c0ab9a7cd6bdc662741a25d1616171fdb2c3aa0ea46c1d9c464.lean/declarations/mapalghom--48cb75302646a87e26dea7d2.md) | 262 | `declaration-track:48cb75302646a87e26dea7d20c791de1fbc616fdfb76329bc4f9661c960d4f21` |
| 42 | `theorem` | [mapAlgHom'_residue](../../../../mathematics/Algebra/Basic/Variant70f4a173c07b8c0ab9a7cd6bdc662741a25d1616171fdb2c3aa0ea46c1d9c464.lean/declarations/mapalghom-residue--0dcaae797f1e504cec8576c8.md) | 267 | `result-track:0dcaae797f1e504cec8576c82b3c20ee657b72e57c4736e69c24eb5165867392` |
| 43 | `def` | [mapAlgEquiv'](../../../../mathematics/Algebra/Basic/Variant70f4a173c07b8c0ab9a7cd6bdc662741a25d1616171fdb2c3aa0ea46c1d9c464.lean/declarations/mapalgequiv--cea73e864b886fa6d6138084.md) | 274 | `declaration-track:cea73e864b886fa6d61380848a60ecfc2ee7e4e4e68b3dd454bb9a321fa52dd4` |
| 44 | `theorem` | [mapAlgEquiv'_residue](../../../../mathematics/Algebra/Basic/Variant70f4a173c07b8c0ab9a7cd6bdc662741a25d1616171fdb2c3aa0ea46c1d9c464.lean/declarations/mapalgequiv-residue--fd1623bc1f14dc9d9ec027c9.md) | 279 | `result-track:fd1623bc1f14dc9d9ec027c9fe9851b5c833178be7d7f7958cf644f1bba04a26` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
