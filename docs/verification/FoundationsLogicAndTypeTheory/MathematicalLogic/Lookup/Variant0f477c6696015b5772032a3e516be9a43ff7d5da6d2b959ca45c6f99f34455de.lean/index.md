# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Lookup.Variant0f477c6696015b5772032a3e516be9a43ff7d5da6d2b959ca45c6f99f34455de

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac3ca4cde98fbc34a1eb58319796242e0427201f",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant0f477c6696015b5772032a3e516be9a43ff7d5da6d2b959ca45c6f99f34455de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant0f477c6696015b5772032a3e516be9a43ff7d5da6d2b959ca45c6f99f34455de.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant0f477c6696015b5772032a3e516be9a43ff7d5da6d2b959ca45c6f99f34455de.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac3ca4cde98fbc34a1eb58319796242e0427201f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant0f477c6696015b5772032a3e516be9a43ff7d5da6d2b959ca45c6f99f34455de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant0f477c6696015b5772032a3e516be9a43ff7d5da6d2b959ca45c6f99f34455de.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Compression.Lattice` — import line 1; external provider; requires a separately pinned dependency.
- `Think.SourceTree.Legacy.Compression.NormalForm` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LookupPath](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant0f477c6696015b5772032a3e516be9a43ff7d5da6d2b959ca45c6f99f34455de.lean/declarations/lookuppath--694a683570ef7de9fe582944.md) | 8 | `declaration-track:694a683570ef7de9fe58294471085844a917d69e221c7a35a57aab94db7cf258` |
| 2 | `def` | [listGet?](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant0f477c6696015b5772032a3e516be9a43ff7d5da6d2b959ca45c6f99f34455de.lean/declarations/listget--cd7de32c08332002678b36eb.md) | 12 | `declaration-track:cd7de32c08332002678b36ebd0da14ac76093f188b87671665f26845e3c2f961` |
| 3 | `def` | [pathIndex](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant0f477c6696015b5772032a3e516be9a43ff7d5da6d2b959ca45c6f99f34455de.lean/declarations/pathindex--c73953170a7239078dc7b190.md) | 17 | `declaration-track:c73953170a7239078dc7b19097124971cc107c12b10290e7f7f781588ed8f347` |
| 4 | `inductive` | [LookupPathAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant0f477c6696015b5772032a3e516be9a43ff7d5da6d2b959ca45c6f99f34455de.lean/declarations/lookuppathat--bf8c4b603c5cb80b74c86139.md) | 21 | `declaration-track:bf8c4b603c5cb80b74c861396c190e52dbc2a8225635fe739da19e5d057c9469` |
| 5 | `def` | [canonicalLookupPathAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant0f477c6696015b5772032a3e516be9a43ff7d5da6d2b959ca45c6f99f34455de.lean/declarations/canonicallookuppathat--42da35f4316b532d7f492f18.md) | 25 | `declaration-track:42da35f4316b532d7f492f18d6d52c5af3c87317c945eddcf40732c3e66c0003` |
| 6 | `def` | [lookupPathAtToPath](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant0f477c6696015b5772032a3e516be9a43ff7d5da6d2b959ca45c6f99f34455de.lean/declarations/lookuppathattopath--8969cf14c09294233a6cf1ff.md) | 30 | `declaration-track:8969cf14c09294233a6cf1ff82850890230073e628c07a3ca939198520614d6a` |
| 7 | `theorem` | [lookup_fiber_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant0f477c6696015b5772032a3e516be9a43ff7d5da6d2b959ca45c6f99f34455de.lean/declarations/lookup-fiber-subsingleton--6b7c72854cdfca2e2f20d203.md) | 36 | `result-track:6b7c72854cdfca2e2f20d203423711538ed53fe4415cd446e9d0e59ebead43a7` |
| 8 | `instance` | [lookupPathAtSubsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant0f477c6696015b5772032a3e516be9a43ff7d5da6d2b959ca45c6f99f34455de.lean/declarations/lookuppathatsubsingleton--8c5bc83f180212745735a2b7.md) | 45 | `declaration-track:8c5bc83f180212745735a2b73f1aea98909b2afa003fd93bf59a056dfa74da76` |
| 9 | `theorem` | [lookup_fiber_inhabited](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant0f477c6696015b5772032a3e516be9a43ff7d5da6d2b959ca45c6f99f34455de.lean/declarations/lookup-fiber-inhabited--4f0fc9967bea62508ef7f9f3.md) | 50 | `result-track:4f0fc9967bea62508ef7f9f32c8ae8f372f7db4b2622191c1a25a8037ee62246` |
| 10 | `theorem` | [lookup_fiber_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant0f477c6696015b5772032a3e516be9a43ff7d5da6d2b959ca45c6f99f34455de.lean/declarations/lookup-fiber-unique--fb052a5b71690c90be343cba.md) | 55 | `result-track:fb052a5b71690c90be343cba3fd5d46c698431ccc7f24a2b754f9fd0129135b1` |
| 11 | `def` | [lookupPathsByValueFrom](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant0f477c6696015b5772032a3e516be9a43ff7d5da6d2b959ca45c6f99f34455de.lean/declarations/lookuppathsbyvaluefrom--23b77ddf0473cc08f6fab0b7.md) | 62 | `declaration-track:23b77ddf0473cc08f6fab0b7341e0ce2e02440a8b1b252a77536dba4a5451765` |
| 12 | `def` | [lookupPathsByValue](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant0f477c6696015b5772032a3e516be9a43ff7d5da6d2b959ca45c6f99f34455de.lean/declarations/lookuppathsbyvalue--a41cef9b92eb62031600fc20.md) | 81 | `declaration-track:a41cef9b92eb62031600fc20ce1ed380018bfe7c04dccec16e139f9b59e1d8bf` |
| 13 | `theorem` | [lookupPathsByValue_empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant0f477c6696015b5772032a3e516be9a43ff7d5da6d2b959ca45c6f99f34455de.lean/declarations/lookuppathsbyvalue-empty--eb2dc6b9fe874942c3e85986.md) | 86 | `result-track:eb2dc6b9fe874942c3e85986a669bfbeab84427bc80d9132ff5238c86acd5b34` |
| 14 | `theorem` | [lookup_fiber_unique_by_value_requires_no_dup_surface](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant0f477c6696015b5772032a3e516be9a43ff7d5da6d2b959ca45c6f99f34455de.lean/declarations/lookup-fiber-unique-by-value-requires-no-dup-surface--09524a6b4ac76efd76e91b27.md) | 90 | `result-track:09524a6b4ac76efd76e91b273d7657528167c655523daabd7a5ff5319c9eb618` |
| 15 | `theorem` | [lookupPathAt_complete](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant0f477c6696015b5772032a3e516be9a43ff7d5da6d2b959ca45c6f99f34455de.lean/declarations/lookuppathat-complete--a1eaa42f87ec94c80cc57df5.md) | 95 | `result-track:a1eaa42f87ec94c80cc57df50afba3229b802a0be13eb5eeb03f6b079c3870bd` |
| 16 | `def` | [LookupSection](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant0f477c6696015b5772032a3e516be9a43ff7d5da6d2b959ca45c6f99f34455de.lean/declarations/lookupsection--c3b66d5341ba336dad3620ba.md) | 100 | `declaration-track:c3b66d5341ba336dad3620badddd025be055c9b6c848ed2b1ef668bf4cc46dfa` |
| 17 | `def` | [canonicalLookupSection](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant0f477c6696015b5772032a3e516be9a43ff7d5da6d2b959ca45c6f99f34455de.lean/declarations/canonicallookupsection--1d17eb20f2509e7517ae4837.md) | 105 | `declaration-track:1d17eb20f2509e7517ae4837b1436b5155c4f2a904abbfbe63911b9a6d20e27d` |
| 18 | `theorem` | [lookupSection_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant0f477c6696015b5772032a3e516be9a43ff7d5da6d2b959ca45c6f99f34455de.lean/declarations/lookupsection-subsingleton--98a07e2386ddad5a4662f1e5.md) | 110 | `result-track:98a07e2386ddad5a4662f1e55f502dbcc745278d6b82eafcccbb2a7c12062570` |
| 19 | `theorem` | [lookupSection_inhabited](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant0f477c6696015b5772032a3e516be9a43ff7d5da6d2b959ca45c6f99f34455de.lean/declarations/lookupsection-inhabited--4631bbfba2aa8b947ad13867.md) | 118 | `result-track:4631bbfba2aa8b947ad13867a6e01ae37c299837788b2bf5f60ecc328352fbad` |
| 20 | `structure` | [Cover](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant0f477c6696015b5772032a3e516be9a43ff7d5da6d2b959ca45c6f99f34455de.lean/declarations/cover--dbdbd13895b2f8631142267b.md) | 123 | `declaration-track:dbdbd13895b2f8631142267b423fe2940910c442b75a42329672ddf9ed4b2d39` |
| 21 | `structure` | [CompatibleFamily](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant0f477c6696015b5772032a3e516be9a43ff7d5da6d2b959ca45c6f99f34455de.lean/declarations/compatiblefamily--ef3b25733f67a734f3010021.md) | 127 | `declaration-track:ef3b25733f67a734f3010021db9817c94dd882db9cf8b7c0da68f62d2c1049e6` |
| 22 | `def` | [RestrictsTo](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant0f477c6696015b5772032a3e516be9a43ff7d5da6d2b959ca45c6f99f34455de.lean/declarations/restrictsto--01985a94208d68fef0dc9ae4.md) | 142 | `declaration-track:01985a94208d68fef0dc9ae4c3c057fd4e3b20976fefad84d21380a2ffc24f37` |
| 23 | `theorem` | [lookup_sections_glue_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant0f477c6696015b5772032a3e516be9a43ff7d5da6d2b959ca45c6f99f34455de.lean/declarations/lookup-sections-glue-unique--88c2f756c89a2f3a47ea5705.md) | 154 | `result-track:88c2f756c89a2f3a47ea570566475f5b25d925d7661bde3d3c72117076c6860f` |
| 24 | `def` | [LookupPathFor](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant0f477c6696015b5772032a3e516be9a43ff7d5da6d2b959ca45c6f99f34455de.lean/declarations/lookuppathfor--e3b97ace08c3433e1a9e226f.md) | 171 | `declaration-track:e3b97ace08c3433e1a9e226fa796689a7118814b9d705ed2b8437257d41acb28` |
| 25 | `def` | [lookupPath?](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant0f477c6696015b5772032a3e516be9a43ff7d5da6d2b959ca45c6f99f34455de.lean/declarations/lookuppath--add0877e61930e090312a11d.md) | 175 | `declaration-track:add0877e61930e090312a11d52ea5ef4a37c24b8cd3f62373d0d4b730fca301d` |
| 26 | `def` | [followPath?](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant0f477c6696015b5772032a3e516be9a43ff7d5da6d2b959ca45c6f99f34455de.lean/declarations/followpath--f37acfaad3872851af54369b.md) | 182 | `declaration-track:f37acfaad3872851af54369bc2635c245eb51aa7a9e7728832be29b165afae7a` |
| 27 | `theorem` | [lookupPath?_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant0f477c6696015b5772032a3e516be9a43ff7d5da6d2b959ca45c6f99f34455de.lean/declarations/lookuppath-sound--1b6511bb4815d3273086d868.md) | 186 | `result-track:1b6511bb4815d3273086d8685901bc9559031facac9bbdbac8ae968bf1cc9ac7` |
| 28 | `theorem` | [lookupPath_complete](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant0f477c6696015b5772032a3e516be9a43ff7d5da6d2b959ca45c6f99f34455de.lean/declarations/lookuppath-complete--179f5dbbbd62525a895a4d57.md) | 198 | `result-track:179f5dbbbd62525a895a4d5725c9bc9499489ea16f355dfe1ada586cdb1252cd` |
| 29 | `theorem` | [lookupPath_unique_by_index](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant0f477c6696015b5772032a3e516be9a43ff7d5da6d2b959ca45c6f99f34455de.lean/declarations/lookuppath-unique-by-index--2753a4102dc9c4fe626ab2d7.md) | 203 | `result-track:2753a4102dc9c4fe626ab2d79c6edb95912dac11ebf9fe28c17b407f095a3e19` |
| 30 | `theorem` | [lookupPath?_complete_some](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant0f477c6696015b5772032a3e516be9a43ff7d5da6d2b959ca45c6f99f34455de.lean/declarations/lookuppath-complete-some--1ac564468d16f66cd98a0f3d.md) | 219 | `result-track:1ac564468d16f66cd98a0f3dbed092a9c546a8084b95c77bdc611e0075b8914d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
