# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Extra.Variantbc3013e310fe4f3481fc5c07f2a9367253e4d2ada2a8299636fcc4400c77eed3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "42c62ec2d86fab60c5331ae08361cf90d50cf4b9",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extra/Variantbc3013e310fe4f3481fc5c07f2a9367253e4d2ada2a8299636fcc4400c77eed3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extra/Variantbc3013e310fe4f3481fc5c07f2a9367253e4d2ada2a8299636fcc4400c77eed3.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extra/Variantbc3013e310fe4f3481fc5c07f2a9367253e4d2ada2a8299636fcc4400c77eed3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `42c62ec2d86fab60c5331ae08361cf90d50cf4b9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extra/Variantbc3013e310fe4f3481fc5c07f2a9367253e4d2ada2a8299636fcc4400c77eed3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extra/Variantbc3013e310fe4f3481fc5c07f2a9367253e4d2ada2a8299636fcc4400c77eed3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.Search` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.String.Termination` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.String.Length` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [utf8DecodeChar?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extra/Variantbc3013e310fe4f3481fc5c07f2a9367253e4d2ada2a8299636fcc4400c77eed3.lean/declarations/utf8decodechar--e61ba0cf930cddd608705f8d.md) | 21 | `declaration-track:e61ba0cf930cddd608705f8d3d2486b52c559b2f5854b3b401d2c2b9a363071b` |
| 2 | `abbrev` | [validateUTF8](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extra/Variantbc3013e310fe4f3481fc5c07f2a9367253e4d2ada2a8299636fcc4400c77eed3.lean/declarations/validateutf8--6be4ee41279fc13324c6f31a.md) | 28 | `declaration-track:6be4ee41279fc13324c6f31ab4dcd4f22029d2caf37f91ca56d44c4bc58342c4` |
| 3 | `def` | [findLeadingSpacesSize](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extra/Variantbc3013e310fe4f3481fc5c07f2a9367253e4d2ada2a8299636fcc4400c77eed3.lean/declarations/findleadingspacessize--6b38c5b427a5390047c6d427.md) | 31 | `declaration-track:6b38c5b427a5390047c6d427f0b07de1fdf86f24d83ff42ba41e307e75dd2db9` |
| 4 | `def` | [removeNumLeadingSpaces](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extra/Variantbc3013e310fe4f3481fc5c07f2a9367253e4d2ada2a8299636fcc4400c77eed3.lean/declarations/removenumleadingspaces--8b0c692ee0e561887bf4cb8d.md) | 50 | `declaration-track:8b0c692ee0e561887bf4cb8d9556a6c55fa36eae69a27c6e1c5665b140abca05` |
| 5 | `def` | [removeLeadingSpaces](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extra/Variantbc3013e310fe4f3481fc5c07f2a9367253e4d2ada2a8299636fcc4400c77eed3.lean/declarations/removeleadingspaces--adcb77970404571e37d7b290.md) | 85 | `declaration-track:adcb77970404571e37d7b29044955dc7444f71db2292ed698b4afb2b02c54f11` |
| 6 | `def` | [crlfToLf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extra/Variantbc3013e310fe4f3481fc5c07f2a9367253e4d2ada2a8299636fcc4400c77eed3.lean/declarations/crlftolf--acb1595cd7035f1a4b8e2d6e.md) | 95 | `declaration-track:acb1595cd7035f1a4b8e2d6edaf6fe28a801e047d256395d43d22f52e1e7ccd4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
