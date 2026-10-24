# Verification target: GRWTSK.Algebra.GroupTheory.Hom.Variant1d551d51f60e8a34774103bb686ad10ed44c5a109b48f8f5f5762b44d42c402f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "237803a2dfbecc3ae2bd0156ac501cf9a2a04e3e",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Hom/Variant1d551d51f60e8a34774103bb686ad10ed44c5a109b48f8f5f5762b44d42c402f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant1d551d51f60e8a34774103bb686ad10ed44c5a109b48f8f5f5762b44d42c402f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant1d551d51f60e8a34774103bb686ad10ed44c5a109b48f8f5f5762b44d42c402f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `237803a2dfbecc3ae2bd0156ac501cf9a2a04e3e`.

Source path: `GRWTSK/Algebra/GroupTheory/Hom/Variant1d551d51f60e8a34774103bb686ad10ed44c5a109b48f8f5f5762b44d42c402f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Hom/Variant1d551d51f60e8a34774103bb686ad10ed44c5a109b48f8f5f5762b44d42c402f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Divisibility.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Hom.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [map_dvd](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant1d551d51f60e8a34774103bb686ad10ed44c5a109b48f8f5f5762b44d42c402f.lean/declarations/map-dvd--bd003a846c55c66663d92e32.md) | 26 | `result-track:bd003a846c55c66663d92e324cafbea6694177bb1a096a8cf97a18934ff1f5a0` |
| 2 | `theorem` | [MulHom.map_dvd](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant1d551d51f60e8a34774103bb686ad10ed44c5a109b48f8f5f5762b44d42c402f.lean/declarations/mulhom-map-dvd--2c766d894364b4929a777f29.md) | 30 | `result-track:2c766d894364b4929a777f2947edfbe76f8008a8e7e293bc3745820677dfc72b` |
| 3 | `theorem` | [MonoidHom.map_dvd](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant1d551d51f60e8a34774103bb686ad10ed44c5a109b48f8f5f5762b44d42c402f.lean/declarations/monoidhom-map-dvd--04dc5f763cfef30652638356.md) | 33 | `result-track:04dc5f763cfef30652638356fc4ae394e0ccb5f977ef32d77d845e581a339a0e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
