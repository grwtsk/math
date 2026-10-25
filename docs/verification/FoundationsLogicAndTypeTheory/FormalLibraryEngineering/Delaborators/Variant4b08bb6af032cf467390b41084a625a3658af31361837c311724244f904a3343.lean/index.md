# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Delaborators.Variant4b08bb6af032cf467390b41084a625a3658af31361837c311724244f904a3343

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "519f146c25ec91da1ffba492dc1820a84e8a14dd",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Delaborators/Variant4b08bb6af032cf467390b41084a625a3658af31361837c311724244f904a3343.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Delaborators/Variant4b08bb6af032cf467390b41084a625a3658af31361837c311724244f904a3343.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Delaborators/Variant4b08bb6af032cf467390b41084a625a3658af31361837c311724244f904a3343.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `519f146c25ec91da1ffba492dc1820a84e8a14dd`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Delaborators/Variant4b08bb6af032cf467390b41084a625a3658af31361837c311724244f904a3343.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Delaborators/Variant4b08bb6af032cf467390b41084a625a3658af31361837c311724244f904a3343.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Util.PPOptions` — import line 7; external provider; requires a separately pinned dependency.
- `Lean.PrettyPrinter.Delaborator.Builtins` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [piNotation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Delaborators/Variant4b08bb6af032cf467390b41084a625a3658af31361837c311724244f904a3343.lean/declarations/pinotation--013e31802c12f86151bac3bb.md) | 30 | `declaration-track:013e31802c12f86151bac3bb66bb8553829ebd23b33eb630a35bdb8ac25121c4` |
| 2 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Delaborators/Variant4b08bb6af032cf467390b41084a625a3658af31361837c311724244f904a3343.lean/declarations/syntax--2f4c0461e32d3a175ad51e3f.md) | 38 | `declaration-track:2f4c0461e32d3a175ad51e3f496be12cfc3af929626d379d02b1815a3272c5ac` |
| 3 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Delaborators/Variant4b08bb6af032cf467390b41084a625a3658af31361837c311724244f904a3343.lean/declarations/macro-rules--6d9a1e85e05756ef7bbf267a.md) | 40 | `declaration-track:6d9a1e85e05756ef7bbf267a4a12e9e5bd1419367f77db93298629009aac6065` |
| 4 | `def` | [replacePiNotation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Delaborators/Variant4b08bb6af032cf467390b41084a625a3658af31361837c311724244f904a3343.lean/declarations/replacepinotation--5ff009edc910a690e1852e9d.md) | 46 | `declaration-track:5ff009edc910a690e1852e9d6a51504826d8a3a7292929a1d4290a9243a32876` |
| 5 | `def` | [delabPi](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Delaborators/Variant4b08bb6af032cf467390b41084a625a3658af31361837c311724244f904a3343.lean/declarations/delabpi--1b64eec6704edbd940d16af1.md) | 53 | `declaration-track:1b64eec6704edbd940d16af1d2a400b24376bb39c209edff6215b84c345f78b1` |
| 6 | `def` | [delabPi'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Delaborators/Variant4b08bb6af032cf467390b41084a625a3658af31361837c311724244f904a3343.lean/declarations/delabpi--7e67035bfdffa41375709db2.md) | 85 | `declaration-track:7e67035bfdffa41375709db2d513bf06e68a5f49b3192149d8f871ade8a5da53` |
| 7 | `def` | [exists_delab](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Delaborators/Variant4b08bb6af032cf467390b41084a625a3658af31361837c311724244f904a3343.lean/declarations/exists-delab--343c5fc568286ab79ac68164.md) | 106 | `declaration-track:343c5fc568286ab79ac68164c55a3c858b245acf4f56d167fafd4847435652e6` |
| 8 | `def` | [delab_not_in](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Delaborators/Variant4b08bb6af032cf467390b41084a625a3658af31361837c311724244f904a3343.lean/declarations/delab-not-in--cac5cb1a07bb1535e71f9b5f.md) | 170 | `declaration-track:cac5cb1a07bb1535e71f9b5fe8abac6672990d417e8702e972f16b3a5cf0dfed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
