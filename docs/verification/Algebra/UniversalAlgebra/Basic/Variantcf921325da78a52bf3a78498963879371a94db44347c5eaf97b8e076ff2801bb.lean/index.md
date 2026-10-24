# Verification target: GRWTSK.Algebra.UniversalAlgebra.Basic.Variantcf921325da78a52bf3a78498963879371a94db44347c5eaf97b8e076ff2801bb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c9c2314819a0828a0733ed95854bd595b5585d3",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variantcf921325da78a52bf3a78498963879371a94db44347c5eaf97b8e076ff2801bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantcf921325da78a52bf3a78498963879371a94db44347c5eaf97b8e076ff2801bb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantcf921325da78a52bf3a78498963879371a94db44347c5eaf97b8e076ff2801bb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c9c2314819a0828a0733ed95854bd595b5585d3`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variantcf921325da78a52bf3a78498963879371a94db44347c5eaf97b8e076ff2801bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Basic/Variantcf921325da78a52bf3a78498963879371a94db44347c5eaf97b8e076ff2801bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.ContinuedFractions.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Floor.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IntFractPair](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantcf921325da78a52bf3a78498963879371a94db44347c5eaf97b8e076ff2801bb.lean/declarations/intfractpair--255141f24bd0622c10af7ca1.md) | 79 | `declaration-track:255141f24bd0622c10af7ca1d404860bdf8987c2f95f2fc9ba4b341549097a1a` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantcf921325da78a52bf3a78498963879371a94db44347c5eaf97b8e076ff2801bb.lean/declarations/instance--455387fa343ec567fe6c574c.md) | 91 | `declaration-track:455387fa343ec567fe6c574c1d226f51317adfc50f5b027521bc470817068715` |
| 3 | `instance` | [inhabited](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantcf921325da78a52bf3a78498963879371a94db44347c5eaf97b8e076ff2801bb.lean/declarations/inhabited--3cf1ab5fe069a72208a181cb.md) | 94 | `declaration-track:3cf1ab5fe069a72208a181cb326b74f9de53bff61adad706ef0b24e66ee49e04` |
| 4 | `def` | [mapFr](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantcf921325da78a52bf3a78498963879371a94db44347c5eaf97b8e076ff2801bb.lean/declarations/mapfr--acb95ff3a998ef4365c6d595.md) | 99 | `declaration-track:acb95ff3a998ef4365c6d595924921a23a451b58af218f7977880d89a66d6db7` |
| 5 | `def` | [coeFn](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantcf921325da78a52bf3a78498963879371a94db44347c5eaf97b8e076ff2801bb.lean/declarations/coefn--bafefcc567f76f38dcc5c705.md) | 112 | `declaration-track:bafefcc567f76f38dcc5c705d11306230cfc805f673508542a3d4e13b8e70214` |
| 6 | `instance` | [coe](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantcf921325da78a52bf3a78498963879371a94db44347c5eaf97b8e076ff2801bb.lean/declarations/coe--8a6dce929b6b1d0bd387bcc7.md) | 115 | `declaration-track:8a6dce929b6b1d0bd387bcc75389245ea8bd035147e9415c1c4fdbe2ea054d5c` |
| 7 | `theorem` | [coe_to_intFractPair](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantcf921325da78a52bf3a78498963879371a94db44347c5eaf97b8e076ff2801bb.lean/declarations/coe-to-intfractpair--f2422fb28127a512e665fa8c.md) | 119 | `result-track:f2422fb28127a512e665fa8c58a5ac033ea25b00c6ae67be15f7c949515e5140` |
| 8 | `def` | [of](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantcf921325da78a52bf3a78498963879371a94db44347c5eaf97b8e076ff2801bb.lean/declarations/of--6d804fcbf53fbb8306977e07.md) | 129 | `declaration-track:6d804fcbf53fbb8306977e07a39bcf68506d7fe4c0756a399dabf649201914ba` |
| 9 | `def` | [stream](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantcf921325da78a52bf3a78498963879371a94db44347c5eaf97b8e076ff2801bb.lean/declarations/stream--475360c0b3ae28de16726055.md) | 146 | `declaration-track:475360c0b3ae28de16726055ab76d4367103e33ef270e9c5974695b7df3cef45` |
| 10 | `theorem` | [stream_isSeq](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantcf921325da78a52bf3a78498963879371a94db44347c5eaf97b8e076ff2801bb.lean/declarations/stream-isseq--5b52cbe2518159acef227b5b.md) | 155 | `result-track:5b52cbe2518159acef227b5beaacfa1f70ca5cdcc62db64ab8b2a0ee021d384e` |
| 11 | `def` | [seq1](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantcf921325da78a52bf3a78498963879371a94db44347c5eaf97b8e076ff2801bb.lean/declarations/seq1--15361d6a8792b4873c534b15.md) | 168 | `declaration-track:15361d6a8792b4873c534b15ebe321d499da24de7d9f8a55a04a13c704f4e54c` |
| 12 | `def` | [of](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantcf921325da78a52bf3a78498963879371a94db44347c5eaf97b8e076ff2801bb.lean/declarations/of--240f6a7faa2166972d33e0da.md) | 189 | `declaration-track:240f6a7faa2166972d33e0dad2b17c3c42d42d944a49aa6d1d1ac8134313c896` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
