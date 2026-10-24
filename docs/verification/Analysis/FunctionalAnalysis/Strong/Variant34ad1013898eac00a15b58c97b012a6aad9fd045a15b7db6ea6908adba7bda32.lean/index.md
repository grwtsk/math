# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Strong.Variant34ad1013898eac00a15b58c97b012a6aad9fd045a15b7db6ea6908adba7bda32

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "965a38fe12fafc139712e88ad866679bd16eb605",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Strong/Variant34ad1013898eac00a15b58c97b012a6aad9fd045a15b7db6ea6908adba7bda32.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant34ad1013898eac00a15b58c97b012a6aad9fd045a15b7db6ea6908adba7bda32.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant34ad1013898eac00a15b58c97b012a6aad9fd045a15b7db6ea6908adba7bda32.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `965a38fe12fafc139712e88ad866679bd16eb605`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Strong/Variant34ad1013898eac00a15b58c97b012a6aad9fd045a15b7db6ea6908adba7bda32.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Strong/Variant34ad1013898eac00a15b58c97b012a6aad9fd045a15b7db6ea6908adba7bda32.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Function` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [UniformConvexOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant34ad1013898eac00a15b58c97b012a6aad9fd045a15b7db6ea6908adba7bda32.lean/declarations/uniformconvexon--15c011c86d343fa6245de39e.md) | 45 | `declaration-track:15c011c86d343fa6245de39eb17bf6b3ff3ffddafc2586ce82d955e61880d093` |
| 2 | `def` | [UniformConcaveOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant34ad1013898eac00a15b58c97b012a6aad9fd045a15b7db6ea6908adba7bda32.lean/declarations/uniformconcaveon--07fad4cb3b9faf05f727335a.md) | 53 | `declaration-track:07fad4cb3b9faf05f727335a86144b442ccc61e48304a7ac979fa176ce9d8cee` |
| 3 | `lemma` | [uniformConvexOn_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant34ad1013898eac00a15b58c97b012a6aad9fd045a15b7db6ea6908adba7bda32.lean/declarations/uniformconvexon-zero--ea8d0cf9555ac2e7e42c487b.md) | 57 | `result-track:ea8d0cf9555ac2e7e42c487b0f7388d10058fa2edc44c4aca4e41556f6d66cf3` |
| 4 | `lemma` | [uniformConcaveOn_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant34ad1013898eac00a15b58c97b012a6aad9fd045a15b7db6ea6908adba7bda32.lean/declarations/uniformconcaveon-zero--1699706c10192253675781ee.md) | 60 | `result-track:1699706c10192253675781eeed9398fcd256d686f46430fb2d0fd344f1275014` |
| 5 | `lemma` | [UniformConvexOn.mono](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant34ad1013898eac00a15b58c97b012a6aad9fd045a15b7db6ea6908adba7bda32.lean/declarations/uniformconvexon-mono--4dbcfa7663b0e3767c1af3ff.md) | 66 | `result-track:4dbcfa7663b0e3767c1af3ff8b46fea34b4d193d434c59ed8dd6c7a8a6f194e0` |
| 6 | `lemma` | [UniformConcaveOn.mono](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant34ad1013898eac00a15b58c97b012a6aad9fd045a15b7db6ea6908adba7bda32.lean/declarations/uniformconcaveon-mono--d08951e8b1e8ff68059b530e.md) | 69 | `result-track:d08951e8b1e8ff68059b530e5d2f13792d367ef055377882f95ad4ca797f8da1` |
| 7 | `lemma` | [UniformConvexOn.convexOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant34ad1013898eac00a15b58c97b012a6aad9fd045a15b7db6ea6908adba7bda32.lean/declarations/uniformconvexon-convexon--4a8163888688314d4fb0d3bc.md) | 72 | `result-track:4a8163888688314d4fb0d3bc657aa2cbaf739d4bba63b0c36ab986eea68ec3eb` |
| 8 | `lemma` | [UniformConcaveOn.concaveOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant34ad1013898eac00a15b58c97b012a6aad9fd045a15b7db6ea6908adba7bda32.lean/declarations/uniformconcaveon-concaveon--b32a40c25989231cfd182fbf.md) | 75 | `result-track:b32a40c25989231cfd182fbfc45bc4f78076b484e397c2b478b51788cafe06bd` |
| 9 | `lemma` | [UniformConvexOn.strictConvexOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant34ad1013898eac00a15b58c97b012a6aad9fd045a15b7db6ea6908adba7bda32.lean/declarations/uniformconvexon-strictconvexon--851f3a013106a6ce832b6bbd.md) | 78 | `result-track:851f3a013106a6ce832b6bbd2acc6eea6cdb2745233a2685d43d78ebc80bf638` |
| 10 | `lemma` | [UniformConcaveOn.strictConcaveOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant34ad1013898eac00a15b58c97b012a6aad9fd045a15b7db6ea6908adba7bda32.lean/declarations/uniformconcaveon-strictconcaveon--0d6730beb9d77643f5d87154.md) | 86 | `result-track:0d6730beb9d77643f5d87154f4ff48e54fee122bc73f3d93ceefb3a448a2a272` |
| 11 | `lemma` | [UniformConvexOn.add](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant34ad1013898eac00a15b58c97b012a6aad9fd045a15b7db6ea6908adba7bda32.lean/declarations/uniformconvexon-add--1e648e86b5dbaa9aadf55fb5.md) | 94 | `result-track:1e648e86b5dbaa9aadf55fb50c12882db9eae2e3ad96fb76878d140395bd1b68` |
| 12 | `lemma` | [UniformConcaveOn.add](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant34ad1013898eac00a15b58c97b012a6aad9fd045a15b7db6ea6908adba7bda32.lean/declarations/uniformconcaveon-add--b79ff545a825544b3b4d901b.md) | 100 | `result-track:b79ff545a825544b3b4d901bbf69e74d0b643c43307c43f32179e5e53c8be5c2` |
| 13 | `lemma` | [UniformConvexOn.neg](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant34ad1013898eac00a15b58c97b012a6aad9fd045a15b7db6ea6908adba7bda32.lean/declarations/uniformconvexon-neg--63fea87e70eddeca25c79741.md) | 105 | `result-track:63fea87e70eddeca25c797419222daf03293e622d9fa89c1e5391def2d522448` |
| 14 | `lemma` | [UniformConcaveOn.neg](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant34ad1013898eac00a15b58c97b012a6aad9fd045a15b7db6ea6908adba7bda32.lean/declarations/uniformconcaveon-neg--38fde31bfe05f28e228015b9.md) | 109 | `result-track:38fde31bfe05f28e228015b946e2ca0f50f588cf5112af2cae2d42d7b9676b33` |
| 15 | `lemma` | [UniformConvexOn.sub](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant34ad1013898eac00a15b58c97b012a6aad9fd045a15b7db6ea6908adba7bda32.lean/declarations/uniformconvexon-sub--18ae9193ba467b8d32ba23f7.md) | 114 | `result-track:18ae9193ba467b8d32ba23f74cdd0ea93ef98c1655a86a3f18e8b3c00a88b8bc` |
| 16 | `lemma` | [UniformConcaveOn.sub](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant34ad1013898eac00a15b58c97b012a6aad9fd045a15b7db6ea6908adba7bda32.lean/declarations/uniformconcaveon-sub--994738a593055aebec53b9cc.md) | 117 | `result-track:994738a593055aebec53b9ccfe1a651f015c1c5a2680d48cc20e2a0db66a3d6f` |
| 17 | `def` | [StrongConvexOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant34ad1013898eac00a15b58c97b012a6aad9fd045a15b7db6ea6908adba7bda32.lean/declarations/strongconvexon--ef308c288f0a4266bec344f2.md) | 124 | `declaration-track:ef308c288f0a4266bec344f29d4db24c5023b09af49b9b066de3d550e7124471` |
| 18 | `def` | [StrongConcaveOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant34ad1013898eac00a15b58c97b012a6aad9fd045a15b7db6ea6908adba7bda32.lean/declarations/strongconcaveon--5a46fd5bedde78204903ea7f.md) | 131 | `declaration-track:5a46fd5bedde78204903ea7fa6d6f5b3adb594493549012b8ff0fe4e6a45a31d` |
| 19 | `lemma` | [StrongConvexOn.mono](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant34ad1013898eac00a15b58c97b012a6aad9fd045a15b7db6ea6908adba7bda32.lean/declarations/strongconvexon-mono--14a9c361d953bdd9094636e6.md) | 136 | `result-track:14a9c361d953bdd9094636e6ebc5aae84926e14f6c69066900249226341fec68` |
| 20 | `lemma` | [StrongConcaveOn.mono](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant34ad1013898eac00a15b58c97b012a6aad9fd045a15b7db6ea6908adba7bda32.lean/declarations/strongconcaveon-mono--e5553944ea31ae97bf98c7d5.md) | 139 | `result-track:e5553944ea31ae97bf98c7d522fe98882919d01f2801752e1fec239b077f022d` |
| 21 | `lemma` | [strongConvexOn_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant34ad1013898eac00a15b58c97b012a6aad9fd045a15b7db6ea6908adba7bda32.lean/declarations/strongconvexon-zero--1e64e69ac2e76fb2eb07da0f.md) | 142 | `result-track:1e64e69ac2e76fb2eb07da0fd9ecdaf1e8ac976b2061ebbf48fd332e606c5bea` |
| 22 | `lemma` | [strongConcaveOn_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant34ad1013898eac00a15b58c97b012a6aad9fd045a15b7db6ea6908adba7bda32.lean/declarations/strongconcaveon-zero--a08ad48ebdf586baa58379ba.md) | 145 | `result-track:a08ad48ebdf586baa58379ba3146e606b528f8a2fbf43f8c5301ace57cfb0b24` |
| 23 | `lemma` | [StrongConvexOn.strictConvexOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant34ad1013898eac00a15b58c97b012a6aad9fd045a15b7db6ea6908adba7bda32.lean/declarations/strongconvexon-strictconvexon--74872783fcd8d49460b84a21.md) | 148 | `result-track:74872783fcd8d49460b84a2161392c3a32ba645eaadf086dd159f1b30a0c07fe` |
| 24 | `lemma` | [StrongConcaveOn.strictConcaveOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant34ad1013898eac00a15b58c97b012a6aad9fd045a15b7db6ea6908adba7bda32.lean/declarations/strongconcaveon-strictconcaveon--8b54dba8e7313a91c0a6a9f8.md) | 151 | `result-track:8b54dba8e7313a91c0a6a9f859d2a693c61821cc7bebf8193429e2f1e29b60d7` |
| 25 | `lemma` | [aux_sub](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant34ad1013898eac00a15b58c97b012a6aad9fd045a15b7db6ea6908adba7bda32.lean/declarations/aux-sub--91a329e25d9b65e245699170.md) | 159 | `result-track:91a329e25d9b65e245699170ee85d94143b2f774a80d78e0365fcde57d8e9334` |
| 26 | `lemma` | [aux_add](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant34ad1013898eac00a15b58c97b012a6aad9fd045a15b7db6ea6908adba7bda32.lean/declarations/aux-add--c1baae365fee1023143b79bb.md) | 168 | `result-track:c1baae365fee1023143b79bb6e183b3e61cabb0c81342b433960bee4c42afb06` |
| 27 | `lemma` | [strongConvexOn_iff_convex](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant34ad1013898eac00a15b58c97b012a6aad9fd045a15b7db6ea6908adba7bda32.lean/declarations/strongconvexon-iff-convex--63920f1df45cef3444b87b1e.md) | 174 | `result-track:63920f1df45cef3444b87b1e84dc58a4a3cb794a5a2eec1f759352ca2e8acbd3` |
| 28 | `lemma` | [strongConcaveOn_iff_convex](../../../../../mathematics/Analysis/FunctionalAnalysis/Strong/Variant34ad1013898eac00a15b58c97b012a6aad9fd045a15b7db6ea6908adba7bda32.lean/declarations/strongconcaveon-iff-convex--30be29a20f55b67bd10017bc.md) | 179 | `result-track:30be29a20f55b67bd10017bc7cfb8c89260ffa758c00b4f2a3266784a930c737` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
