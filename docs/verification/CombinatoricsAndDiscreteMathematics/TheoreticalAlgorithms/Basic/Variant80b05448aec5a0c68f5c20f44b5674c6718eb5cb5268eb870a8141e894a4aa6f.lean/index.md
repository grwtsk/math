# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Variant80b05448aec5a0c68f5c20f44b5674c6718eb5cb5268eb870a8141e894a4aa6f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f42eb336f32ec7f3595683f4499677f4254a655c",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant80b05448aec5a0c68f5c20f44b5674c6718eb5cb5268eb870a8141e894a4aa6f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant80b05448aec5a0c68f5c20f44b5674c6718eb5cb5268eb870a8141e894a4aa6f.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant80b05448aec5a0c68f5c20f44b5674c6718eb5cb5268eb870a8141e894a4aa6f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f42eb336f32ec7f3595683f4499677f4254a655c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant80b05448aec5a0c68f5c20f44b5674c6718eb5cb5268eb870a8141e894a4aa6f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant80b05448aec5a0c68f5c20f44b5674c6718eb5cb5268eb870a8141e894a4aa6f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.Char` — import line 12; external provider; requires a separately pinned dependency.
- `Std.Data.Nat.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Std.Data.Array.Match` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant80b05448aec5a0c68f5c20f44b5674c6718eb5cb5268eb870a8141e894a4aa6f.lean/declarations/instance--8d8fa203ee2117a6b9102ba6.md) | 19 | `declaration-track:8d8fa203ee2117a6b9102ba66add832037e1d8682dc869e756cdb80ca1cc287d` |
| 2 | `theorem` | [Pos.ne_zero_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant80b05448aec5a0c68f5c20f44b5674c6718eb5cb5268eb870a8141e894a4aa6f.lean/declarations/pos-ne-zero-of-lt--de2dbae67648fc78e1d89ace.md) | 23 | `result-track:de2dbae67648fc78e1d89acecb22308c869239624edaa2740f8f03e3a64aaa6e` |
| 3 | `structure` | [Matcher](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant80b05448aec5a0c68f5c20f44b5674c6718eb5cb5268eb870a8141e894a4aa6f.lean/declarations/matcher--b50ba1ab5d8fc1f48d2909fa.md) | 45 | `declaration-track:b50ba1ab5d8fc1f48d2909fa978bc8925313db6f0410861eb17ec0944483c9f4` |
| 4 | `def` | [Matcher.ofSubstring](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant80b05448aec5a0c68f5c20f44b5674c6718eb5cb5268eb870a8141e894a4aa6f.lean/declarations/matcher-ofsubstring--5b96484c47f5dfc76084b1bd.md) | 50 | `declaration-track:5b96484c47f5dfc76084b1bd88ef1144ca55eb8cd30b76b1477815ce41105c95` |
| 5 | `def` | [Matcher.ofString](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant80b05448aec5a0c68f5c20f44b5674c6718eb5cb5268eb870a8141e894a4aa6f.lean/declarations/matcher-ofstring--21c41786bd5a691fd817be4f.md) | 55 | `declaration-track:21c41786bd5a691fd817be4fb4794a7ffb59375087a0e9fb452530d0ef1ca1f1` |
| 6 | `abbrev` | [Matcher.patternSize](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant80b05448aec5a0c68f5c20f44b5674c6718eb5cb5268eb870a8141e894a4aa6f.lean/declarations/matcher-patternsize--b000d3cf90a37733ebe0ea75.md) | 59 | `declaration-track:b000d3cf90a37733ebe0ea7593384f0ce21d880d04d63d978ded37e2daa94aef` |
| 7 | `def` | [Matcher.findAll](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant80b05448aec5a0c68f5c20f44b5674c6718eb5cb5268eb870a8141e894a4aa6f.lean/declarations/matcher-findall--7fa6aa83c79e864e77ba2ee1.md) | 62 | `declaration-track:7fa6aa83c79e864e77ba2ee19002fbe0b3af66bafb374b9cecd06eca35042dbe` |
| 8 | `def` | [Matcher.find?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant80b05448aec5a0c68f5c20f44b5674c6718eb5cb5268eb870a8141e894a4aa6f.lean/declarations/matcher-find--a944d388f440a97c124594fb.md) | 75 | `declaration-track:a944d388f440a97c124594fbe3ffa9de8a21f8bf8728310b8efe3329b1c1e2fa` |
| 9 | `def` | [commonPrefix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant80b05448aec5a0c68f5c20f44b5674c6718eb5cb5268eb870a8141e894a4aa6f.lean/declarations/commonprefix--0edc0463dd3159570b65d232.md) | 91 | `declaration-track:0edc0463dd3159570b65d232a328a56724902e350d89ad23f440a7cf752057fb` |
| 10 | `def` | [commonSuffix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant80b05448aec5a0c68f5c20f44b5674c6718eb5cb5268eb870a8141e894a4aa6f.lean/declarations/commonsuffix--d29ffbc177fb36a7c736024d.md) | 110 | `declaration-track:d29ffbc177fb36a7c736024dbbf86a598bc251aff7253cc48a58bb2e87114449` |
| 11 | `def` | [dropPrefix?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant80b05448aec5a0c68f5c20f44b5674c6718eb5cb5268eb870a8141e894a4aa6f.lean/declarations/dropprefix--f6c0fcf31107fe2a3676baa7.md) | 130 | `declaration-track:f6c0fcf31107fe2a3676baa793719b331814c7131fc1a20edaacbeb355258063` |
| 12 | `def` | [dropSuffix?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant80b05448aec5a0c68f5c20f44b5674c6718eb5cb5268eb870a8141e894a4aa6f.lean/declarations/dropsuffix--6550ecfd0b971c4eeb842f38.md) | 140 | `declaration-track:6550ecfd0b971c4eeb842f388051dbd48f6ffc4f0c292e0232561c2f0859a908` |
| 13 | `def` | [findAllSubstr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant80b05448aec5a0c68f5c20f44b5674c6718eb5cb5268eb870a8141e894a4aa6f.lean/declarations/findallsubstr--f1f516e398f9f9f2f5c0a971.md) | 150 | `declaration-track:f1f516e398f9f9f2f5c0a971441b0487e4bc5ca46b2f32a9265471d36c618b9d` |
| 14 | `def` | [findSubstr?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant80b05448aec5a0c68f5c20f44b5674c6718eb5cb5268eb870a8141e894a4aa6f.lean/declarations/findsubstr--e3d89c219cda5f31fe03d932.md) | 157 | `declaration-track:e3d89c219cda5f31fe03d93213476b8182c9c9a63d925d0e59b09af72cef1289` |
| 15 | `def` | [containsSubstr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant80b05448aec5a0c68f5c20f44b5674c6718eb5cb5268eb870a8141e894a4aa6f.lean/declarations/containssubstr--f10a780598b6475e017acee3.md) | 163 | `declaration-track:f10a780598b6475e017acee3f3f8a89aed37a403979c5b2904679101181a15ba` |
| 16 | `abbrev` | [findAllSubstr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant80b05448aec5a0c68f5c20f44b5674c6718eb5cb5268eb870a8141e894a4aa6f.lean/declarations/findallsubstr--34c37f1e63d0ab9bed830bd1.md) | 171 | `declaration-track:34c37f1e63d0ab9bed830bd1a3ddfad79b8d415b580c3bd9a8afc566ab557c3e` |
| 17 | `abbrev` | [findSubstr?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant80b05448aec5a0c68f5c20f44b5674c6718eb5cb5268eb870a8141e894a4aa6f.lean/declarations/findsubstr--3462540181baefa65b58126d.md) | 175 | `declaration-track:3462540181baefa65b58126d88c99ee86627aabbf2d08d87280a3a77765a79b5` |
| 18 | `abbrev` | [containsSubstr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant80b05448aec5a0c68f5c20f44b5674c6718eb5cb5268eb870a8141e894a4aa6f.lean/declarations/containssubstr--3a4e85ef872f4c48608f45ae.md) | 179 | `declaration-track:3a4e85ef872f4c48608f45ae452f59dedeed358cabc74dc83f7b50716488ad41` |
| 19 | `def` | [dropPrefix?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant80b05448aec5a0c68f5c20f44b5674c6718eb5cb5268eb870a8141e894a4aa6f.lean/declarations/dropprefix--a62090f970a8fb41f9baedfd.md) | 185 | `declaration-track:a62090f970a8fb41f9baedfd51626a2ea26ad40736d10ba96183180ef6d87423` |
| 20 | `def` | [dropSuffix?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant80b05448aec5a0c68f5c20f44b5674c6718eb5cb5268eb870a8141e894a4aa6f.lean/declarations/dropsuffix--775a972a3542c222001a291f.md) | 191 | `declaration-track:775a972a3542c222001a291f1cd217022892a4d629b5a955fe428d8a4f6538e4` |
| 21 | `def` | [stripPrefix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant80b05448aec5a0c68f5c20f44b5674c6718eb5cb5268eb870a8141e894a4aa6f.lean/declarations/stripprefix--ac429ffa9628d145aea4e6ca.md) | 196 | `declaration-track:ac429ffa9628d145aea4e6cae7fe871925af5cf042aee2c07c93ea1291e89124` |
| 22 | `def` | [stripSuffix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant80b05448aec5a0c68f5c20f44b5674c6718eb5cb5268eb870a8141e894a4aa6f.lean/declarations/stripsuffix--adf0475a629dc4d8d46dcf8a.md) | 201 | `declaration-track:adf0475a629dc4d8d46dcf8a773b907833bd1e06c5325a96b6df343d28c48fc9` |
| 23 | `def` | [count](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant80b05448aec5a0c68f5c20f44b5674c6718eb5cb5268eb870a8141e894a4aa6f.lean/declarations/count--b746c893c4e9d806c6d29a1b.md) | 205 | `declaration-track:b746c893c4e9d806c6d29a1b95df88b4d4c1f3eb2eaeefe9bc066f02236d3d3a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
