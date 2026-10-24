# Verification target: GRWTSK.Algebra.UniversalAlgebra.Invertible.Variantb38541695245276353a1534173ac8e8efa565a8d0c155f28a07bb2e2a9a3bfcb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "72000974be59f794a70bf2bbd73068a123b8b34b",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Invertible/Variantb38541695245276353a1534173ac8e8efa565a8d0c155f28a07bb2e2a9a3bfcb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Invertible/Variantb38541695245276353a1534173ac8e8efa565a8d0c155f28a07bb2e2a9a3bfcb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Invertible/Variantb38541695245276353a1534173ac8e8efa565a8d0c155f28a07bb2e2a9a3bfcb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `72000974be59f794a70bf2bbd73068a123b8b34b`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Invertible/Variantb38541695245276353a1534173ac8e8efa565a8d0c155f28a07bb2e2a9a3bfcb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Invertible/Variantb38541695245276353a1534173ac8e8efa565a8d0c155f28a07bb2e2a9a3bfcb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Invertible` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [invertibleOfRingCharNotDvd](../../../../../mathematics/Algebra/UniversalAlgebra/Invertible/Variantb38541695245276353a1534173ac8e8efa565a8d0c155f28a07bb2e2a9a3bfcb.lean/declarations/invertibleofringcharnotdvd--fafdc186e8f884d3ff22171e.md) | 37 | `declaration-track:fafdc186e8f884d3ff22171e73127a85cc8ee4353780999439eb9c6830aa1ec7` |
| 2 | `theorem` | [not_ringChar_dvd_of_invertible](../../../../../mathematics/Algebra/UniversalAlgebra/Invertible/Variantb38541695245276353a1534173ac8e8efa565a8d0c155f28a07bb2e2a9a3bfcb.lean/declarations/not-ringchar-dvd-of-invertible--a614e12de14f4c83d7ad5905.md) | 41 | `result-track:a614e12de14f4c83d7ad5905e8ccb11c3bfe12cced7816aaf1c5803c68dda49f` |
| 3 | `def` | [invertibleOfCharPNotDvd](../../../../../mathematics/Algebra/UniversalAlgebra/Invertible/Variantb38541695245276353a1534173ac8e8efa565a8d0c155f28a07bb2e2a9a3bfcb.lean/declarations/invertibleofcharpnotdvd--3e5c312505bb8501d3fc9dca.md) | 48 | `declaration-track:3e5c312505bb8501d3fc9dca355f407e22f252ec0d9741a719b51d296c29f5c8` |
| 4 | `instance` | [invertibleOfPos](../../../../../mathematics/Algebra/UniversalAlgebra/Invertible/Variantb38541695245276353a1534173ac8e8efa565a8d0c155f28a07bb2e2a9a3bfcb.lean/declarations/invertibleofpos--31e3598c937b6a962b80fb48.md) | 54 | `declaration-track:31e3598c937b6a962b80fb48fe259f5ece3766d1675ca9718e082fae16c954cd` |
| 5 | `instance` | [invertibleSucc](../../../../../mathematics/Algebra/UniversalAlgebra/Invertible/Variantb38541695245276353a1534173ac8e8efa565a8d0c155f28a07bb2e2a9a3bfcb.lean/declarations/invertiblesucc--31bdfcdc57f7bbc3e4126ba2.md) | 64 | `declaration-track:31bdfcdc57f7bbc3e4126ba2e7463b526e9d19cbf932cba61d7e27646eeb1ca1` |
| 6 | `instance` | [invertibleTwo](../../../../../mathematics/Algebra/UniversalAlgebra/Invertible/Variantb38541695245276353a1534173ac8e8efa565a8d0c155f28a07bb2e2a9a3bfcb.lean/declarations/invertibletwo--37c6ed3d78d9a00ba08ebd30.md) | 74 | `declaration-track:37c6ed3d78d9a00ba08ebd3018f0b4bf4d50381f73928dbad3d0cc1df26f5ae3` |
| 7 | `instance` | [invertibleThree](../../../../../mathematics/Algebra/UniversalAlgebra/Invertible/Variantb38541695245276353a1534173ac8e8efa565a8d0c155f28a07bb2e2a9a3bfcb.lean/declarations/invertiblethree--0a70781ec7bc0b9bd9269bef.md) | 78 | `declaration-track:0a70781ec7bc0b9bd9269befa80cfefd027b28407993354acdd51690812bc917` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
