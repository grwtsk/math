# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RuzsaSzemeredi.Variant9467520be287170e89cad3c5645ed693adc3d7f369d2b77812c978ccd2dc1ad1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82722dbad7c77b0f4158ef68b5b9646f197d2ac7",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant9467520be287170e89cad3c5645ed693adc3d7f369d2b77812c978ccd2dc1ad1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant9467520be287170e89cad3c5645ed693adc3d7f369d2b77812c978ccd2dc1ad1.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant9467520be287170e89cad3c5645ed693adc3d7f369d2b77812c978ccd2dc1ad1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82722dbad7c77b0f4158ef68b5b9646f197d2ac7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant9467520be287170e89cad3c5645ed693adc3d7f369d2b77812c978ccd2dc1ad1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant9467520be287170e89cad3c5645ed693adc3d7f369d2b77812c978ccd2dc1ad1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Additive.AP.Three.Behrend` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Triangle.Tripartite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Rify` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ruzsaSzemerediNumber](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant9467520be287170e89cad3c5645ed693adc3d7f369d2b77812c978ccd2dc1ad1.lean/declarations/ruzsaszemeredinumber--7ea8e8b31b7929e7629c5ce6.md) | 45 | `declaration-track:7ea8e8b31b7929e7629c5ce6fe51a7b762f4c345f07127600070cb685c052066` |
| 2 | `lemma` | [ruzsaSzemerediNumber_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant9467520be287170e89cad3c5645ed693adc3d7f369d2b77812c978ccd2dc1ad1.lean/declarations/ruzsaszemeredinumber-le--c215cb3bd48a27496707bd2c.md) | 51 | `result-track:c215cb3bd48a27496707bd2c779a1fd00805fa335a2082815bb9a0896d24d596` |
| 3 | `lemma` | [ruzsaSzemerediNumber_spec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant9467520be287170e89cad3c5645ed693adc3d7f369d2b77812c978ccd2dc1ad1.lean/declarations/ruzsaszemeredinumber-spec--df4a136aa2a50b6df1ac1e94.md) | 53 | `result-track:df4a136aa2a50b6df1ac1e94c3118c55ff4c633012acef2572657257cbdcee49` |
| 4 | `lemma` | [SimpleGraph.LocallyLinear.le_ruzsaSzemerediNumber](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant9467520be287170e89cad3c5645ed693adc3d7f369d2b77812c978ccd2dc1ad1.lean/declarations/simplegraph-locallylinear-le-ruzsaszemeredinumber--7792556ec65f1ff7ceb779d4.md) | 64 | `result-track:7792556ec65f1ff7ceb779d4d33eb37c9ff30fdd29585ee52968e6cf7af809e2` |
| 5 | `lemma` | [ruzsaSzemerediNumber_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant9467520be287170e89cad3c5645ed693adc3d7f369d2b77812c978ccd2dc1ad1.lean/declarations/ruzsaszemeredinumber-mono--c940c52bca6965f18f3ea8c6.md) | 69 | `result-track:c940c52bca6965f18f3ea8c6b8db035f2a8c504ff4d81b58579aa42ced23812b` |
| 6 | `lemma` | [ruzsaSzemerediNumber_congr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant9467520be287170e89cad3c5645ed693adc3d7f369d2b77812c978ccd2dc1ad1.lean/declarations/ruzsaszemeredinumber-congr--742ac2ea3ef568896a086bf5.md) | 77 | `result-track:742ac2ea3ef568896a086bf54e5602a16833a28644337c896ce59d2933ab89c1` |
| 7 | `def` | [ruzsaSzemerediNumberNat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant9467520be287170e89cad3c5645ed693adc3d7f369d2b77812c978ccd2dc1ad1.lean/declarations/ruzsaszemeredinumbernat--396a500743d6ba1f6fe21b4c.md) | 85 | `declaration-track:396a500743d6ba1f6fe21b4c9ded61da624a96b36d5d03b64358057bbae5dbd5` |
| 8 | `lemma` | [ruzsaSzemerediNumberNat_card](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant9467520be287170e89cad3c5645ed693adc3d7f369d2b77812c978ccd2dc1ad1.lean/declarations/ruzsaszemeredinumbernat-card--a59a0f5eceb9092d23bc319d.md) | 88 | `result-track:a59a0f5eceb9092d23bc319d357bb1a4519099d3288690e34da55afb8dda9f23` |
| 9 | `lemma` | [ruzsaSzemerediNumberNat_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant9467520be287170e89cad3c5645ed693adc3d7f369d2b77812c978ccd2dc1ad1.lean/declarations/ruzsaszemeredinumbernat-mono--1af184db632e79e5c15abfd8.md) | 91 | `result-track:1af184db632e79e5c15abfd8a12ae0f32df440a4cae4e1a3436467a1e1d71c42` |
| 10 | `lemma` | [ruzsaSzemerediNumberNat_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant9467520be287170e89cad3c5645ed693adc3d7f369d2b77812c978ccd2dc1ad1.lean/declarations/ruzsaszemeredinumbernat-le--2041f4f2ea26a052476a90b8.md) | 94 | `result-track:2041f4f2ea26a052476a90b85d634dfb5fbb0e4360134809103ccb3788805691` |
| 11 | `lemma` | [ruzsaSzemerediNumberNat_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant9467520be287170e89cad3c5645ed693adc3d7f369d2b77812c978ccd2dc1ad1.lean/declarations/ruzsaszemeredinumbernat-zero--252122f36c96228f14c81304.md) | 97 | `result-track:252122f36c96228f14c81304b5457ec23e9fed57ba2dc7c9e8b0d53539cf1c75` |
| 12 | `lemma` | [ruzsaSzemerediNumberNat_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant9467520be287170e89cad3c5645ed693adc3d7f369d2b77812c978ccd2dc1ad1.lean/declarations/ruzsaszemeredinumbernat-one--c46f9dd62774112c2ad3a2d1.md) | 100 | `result-track:c46f9dd62774112c2ad3a2d1a1819c13496251a6e2c0ee206ca44796dab136ba` |
| 13 | `lemma` | [ruzsaSzemerediNumberNat_two](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant9467520be287170e89cad3c5645ed693adc3d7f369d2b77812c978ccd2dc1ad1.lean/declarations/ruzsaszemeredinumbernat-two--390777da6ab61aed12b885dc.md) | 103 | `result-track:390777da6ab61aed12b885dc2beb07b47075feac31465f763eb3b97fc15f4f70` |
| 14 | `def` | [triangleIndices](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant9467520be287170e89cad3c5645ed693adc3d7f369d2b77812c978ccd2dc1ad1.lean/declarations/triangleindices--c0ec27015d431db2ee87d6e6.md) | 114 | `declaration-track:c0ec27015d431db2ee87d6e655e51ab6aa7ff76ec559333822cd59b1c10717a9` |
| 15 | `lemma` | [mem_triangleIndices](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant9467520be287170e89cad3c5645ed693adc3d7f369d2b77812c978ccd2dc1ad1.lean/declarations/mem-triangleindices--d28cd441e04ec1cf4390da1e.md) | 124 | `result-track:d28cd441e04ec1cf4390da1ee55507bd1eaa0a5b368fb1583e5d7627ac108109` |
| 16 | `lemma` | [card_triangleIndices](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant9467520be287170e89cad3c5645ed693adc3d7f369d2b77812c978ccd2dc1ad1.lean/declarations/card-triangleindices--5211166bed7594628ab90fb2.md) | 128 | `result-track:5211166bed7594628ab90fb2b8652bbd29f3ba99cd98dff619cb03ca29aa5607` |
| 17 | `lemma` | [noAccidental](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant9467520be287170e89cad3c5645ed693adc3d7f369d2b77812c978ccd2dc1ad1.lean/declarations/noaccidental--27aa9a02de3b5c33731e779b.md) | 131 | `result-track:27aa9a02de3b5c33731e779bf2facfdb3c5af3899ed94583b2b19b7f95b11a91` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant9467520be287170e89cad3c5645ed693adc3d7f369d2b77812c978ccd2dc1ad1.lean/declarations/instance--3d1e1a950b8be4ecde0b394a.md) | 142 | `declaration-track:3d1e1a950b8be4ecde0b394a5dc0eadea081b7555ebc9c031891730529e4f8d6` |
| 19 | `lemma` | [locallyLinear](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant9467520be287170e89cad3c5645ed693adc3d7f369d2b77812c978ccd2dc1ad1.lean/declarations/locallylinear--64734c1df6616fe19d47109a.md) | 156 | `result-track:64734c1df6616fe19d47109a0d76a23a7225795eaec0febc2cca0494af47252b` |
| 20 | `lemma` | [card_edgeFinset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant9467520be287170e89cad3c5645ed693adc3d7f369d2b77812c978ccd2dc1ad1.lean/declarations/card-edgefinset--434c597442ca6c429add9437.md) | 160 | `result-track:434c597442ca6c429add94371ce122b178fd984b936b312d4e3e956c4fbca82f` |
| 21 | `lemma` | [addRothNumber_le_ruzsaSzemerediNumber](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant9467520be287170e89cad3c5645ed693adc3d7f369d2b77812c978ccd2dc1ad1.lean/declarations/addrothnumber-le-ruzsaszemeredinumber--31e4d61cda523a3de452cc43.md) | 169 | `result-track:31e4d61cda523a3de452cc43ea5098064c39534d8fdbc34a4740e1dbac9bf108` |
| 22 | `lemma` | [rothNumberNat_le_ruzsaSzemerediNumberNat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant9467520be287170e89cad3c5645ed693adc3d7f369d2b77812c978ccd2dc1ad1.lean/declarations/rothnumbernat-le-ruzsaszemeredinumbernat--7b1ee8ca02cfbcfe4624e78a.md) | 176 | `result-track:7b1ee8ca02cfbcfe4624e78ae28ee780026ecf3c7403d6c01cb9de64e1247500` |
| 23 | `theorem` | [rothNumberNat_le_ruzsaSzemerediNumberNat'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant9467520be287170e89cad3c5645ed693adc3d7f369d2b77812c978ccd2dc1ad1.lean/declarations/rothnumbernat-le-ruzsaszemeredinumbernat--547d009b7b6e239a01df79b8.md) | 197 | `result-track:547d009b7b6e239a01df79b8af98f4c4c8996c5d2fea49374b6084b05a39dd8e` |
| 24 | `theorem` | [ruzsaSzemerediNumberNat_lower_bound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant9467520be287170e89cad3c5645ed693adc3d7f369d2b77812c978ccd2dc1ad1.lean/declarations/ruzsaszemeredinumbernat-lower-bound--1c6132babb90dff25f08424c.md) | 224 | `result-track:1c6132babb90dff25f08424c3ce0a617fa30158e46de6bea67d021bd87361c06` |
| 25 | `theorem` | [ruzsaSzemerediNumberNat_asymptotic_lower_bound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant9467520be287170e89cad3c5645ed693adc3d7f369d2b77812c978ccd2dc1ad1.lean/declarations/ruzsaszemeredinumbernat-asymptotic-lower-bound--e8eb862370a1e95560bc0e67.md) | 240 | `result-track:e8eb862370a1e95560bc0e67db0597b6ba6b1c790cded8a6403e4044a637a880` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
