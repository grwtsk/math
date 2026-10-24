# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Basic.Variantb73d9407690c62c367851ad1b53f3142a74a44be93236dbb01da596c646301db

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cfd2b0999fb2b567faea94d34304a78800fcedaa",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantb73d9407690c62c367851ad1b53f3142a74a44be93236dbb01da596c646301db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantb73d9407690c62c367851ad1b53f3142a74a44be93236dbb01da596c646301db.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantb73d9407690c62c367851ad1b53f3142a74a44be93236dbb01da596c646301db.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cfd2b0999fb2b567faea94d34304a78800fcedaa`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantb73d9407690c62c367851ad1b53f3142a74a44be93236dbb01da596c646301db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantb73d9407690c62c367851ad1b53f3142a74a44be93236dbb01da596c646301db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Opposite` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Quiver](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantb73d9407690c62c367851ad1b53f3142a74a44be93236dbb01da596c646301db.lean/declarations/quiver--d894ad40b7321b7a5fa1b63b.md) | 40 | `declaration-track:d894ad40b7321b7a5fa1b63b423a8d0a4f1b56280ea2fa40fbf2cc34e75e212c` |
| 2 | `instance` | [opposite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantb73d9407690c62c367851ad1b53f3142a74a44be93236dbb01da596c646301db.lean/declarations/opposite--6ba672160b201f8618b002ea.md) | 53 | `declaration-track:6ba672160b201f8618b002ea9ecc30c84f1bade5524d7bfadd8104b0f058b341` |
| 3 | `def` | [Hom.op](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantb73d9407690c62c367851ad1b53f3142a74a44be93236dbb01da596c646301db.lean/declarations/hom-op--a5b65d050f4df76ddff96c01.md) | 57 | `declaration-track:a5b65d050f4df76ddff96c01e52e569cbe4904122a6b15d98a46217fe32368a8` |
| 4 | `def` | [Hom.unop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantb73d9407690c62c367851ad1b53f3142a74a44be93236dbb01da596c646301db.lean/declarations/hom-unop--0e947c223886f9c4ae48f59a.md) | 60 | `declaration-track:0e947c223886f9c4ae48f59ae4386d885c79ce52a411d5d35570f09defbeb8f7` |
| 5 | `def` | [Hom.opEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantb73d9407690c62c367851ad1b53f3142a74a44be93236dbb01da596c646301db.lean/declarations/hom-opequiv--29a21cb3ce23e5db828736e0.md) | 64 | `declaration-track:29a21cb3ce23e5db828736e0fc503a2ec6816c4c6c92dc42885cc3355661f22f` |
| 6 | `def` | [Empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantb73d9407690c62c367851ad1b53f3142a74a44be93236dbb01da596c646301db.lean/declarations/empty--67614c123024500dbe411929.md) | 72 | `declaration-track:67614c123024500dbe411929e994c695a41268104e6c7f8e2fbe8ef8c570b2c5` |
| 7 | `instance` | [emptyQuiver](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantb73d9407690c62c367851ad1b53f3142a74a44be93236dbb01da596c646301db.lean/declarations/emptyquiver--cb9349542ba0746e9ce54de0.md) | 74 | `declaration-track:cb9349542ba0746e9ce54de04869d56cf55071e5215b76f70071c2ee83ac973c` |
| 8 | `theorem` | [empty_arrow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantb73d9407690c62c367851ad1b53f3142a74a44be93236dbb01da596c646301db.lean/declarations/empty-arrow--60ed309372c478cf6cd708fb.md) | 77 | `result-track:60ed309372c478cf6cd708fbaea120a50fb2bd5404bf766aec416e3823a59349` |
| 9 | `abbrev` | [IsThin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantb73d9407690c62c367851ad1b53f3142a74a44be93236dbb01da596c646301db.lean/declarations/isthin--ed9358a6735776712b15e62e.md) | 80 | `declaration-track:ed9358a6735776712b15e62ebef13017adc16fb4489d5abf74f7596ce38deb16` |
| 10 | `def` | [homOfEq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantb73d9407690c62c367851ad1b53f3142a74a44be93236dbb01da596c646301db.lean/declarations/homofeq--66b888d2e032d47d4ec28d8c.md) | 89 | `declaration-track:66b888d2e032d47d4ec28d8ca66ffc628de7d6398ec3564601fde477a77e87c3` |
| 11 | `lemma` | [homOfEq_trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantb73d9407690c62c367851ad1b53f3142a74a44be93236dbb01da596c646301db.lean/declarations/homofeq-trans--8da9ba8ff3e184eacd42b720.md) | 94 | `result-track:8da9ba8ff3e184eacd42b720cc842879b7a592ff8dc4538788983d3e47eaa192` |
| 12 | `lemma` | [homOfEq_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantb73d9407690c62c367851ad1b53f3142a74a44be93236dbb01da596c646301db.lean/declarations/homofeq-injective--ce3f32304ec8912ad738c56d.md) | 100 | `result-track:ce3f32304ec8912ad738c56d3e09d601be26edf1a20ad42e4be299b28420b356` |
| 13 | `lemma` | [homOfEq_rfl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantb73d9407690c62c367851ad1b53f3142a74a44be93236dbb01da596c646301db.lean/declarations/homofeq-rfl--609719e7c6ae2e0fe5f1e993.md) | 106 | `result-track:609719e7c6ae2e0fe5f1e9934289c53fb534ca141cf244c04cab516224da67d1` |
| 14 | `lemma` | [heq_of_homOfEq_ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantb73d9407690c62c367851ad1b53f3142a74a44be93236dbb01da596c646301db.lean/declarations/heq-of-homofeq-ext--754ff9c6d14da74bafe61601.md) | 108 | `result-track:754ff9c6d14da74bafe6160103b81603c04fbea2f89814b95c446c7bf5d16f07` |
| 15 | `lemma` | [homOfEq_eq_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantb73d9407690c62c367851ad1b53f3142a74a44be93236dbb01da596c646301db.lean/declarations/homofeq-eq-iff--f3358bf56231b80deac1358a.md) | 114 | `result-track:f3358bf56231b80deac1358ae2ea9fd2b43b9e92a92d7dc78a5d44a1a034dd63` |
| 16 | `lemma` | [eq_homOfEq_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantb73d9407690c62c367851ad1b53f3142a74a44be93236dbb01da596c646301db.lean/declarations/eq-homofeq-iff--a6f64251bc0218ad4aa6a5e1.md) | 119 | `result-track:a6f64251bc0218ad4aa6a5e186824c5561af111eaaf37e20760ffe0eb1d7dd72` |
| 17 | `lemma` | [homOfEq_heq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantb73d9407690c62c367851ad1b53f3142a74a44be93236dbb01da596c646301db.lean/declarations/homofeq-heq--0857d4dcfda6a8d8f55a04fb.md) | 124 | `result-track:0857d4dcfda6a8d8f55a04fb90d662fe70dac9760156f8708b81c8e342ff2dd3` |
| 18 | `lemma` | [homOfEq_heq_left_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantb73d9407690c62c367851ad1b53f3142a74a44be93236dbb01da596c646301db.lean/declarations/homofeq-heq-left-iff--fad7e1b60789cfb090e26560.md) | 128 | `result-track:fad7e1b60789cfb090e26560f5ddbbabb21a37698a80d98d0941a7d55bf6dd12` |
| 19 | `lemma` | [homOfEq_heq_right_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantb73d9407690c62c367851ad1b53f3142a74a44be93236dbb01da596c646301db.lean/declarations/homofeq-heq-right-iff--a8b374243f9cabf3aa722119.md) | 133 | `result-track:a8b374243f9cabf3aa722119499bdb122aacd1527045ecaea9611cc1c6bf9589` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
