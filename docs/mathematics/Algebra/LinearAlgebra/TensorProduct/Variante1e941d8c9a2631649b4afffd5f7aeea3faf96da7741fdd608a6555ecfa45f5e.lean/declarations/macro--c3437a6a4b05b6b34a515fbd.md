# Anonymous macro

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7c09cd9737f4903b6e1c4ba2618905ddfa0b6eedff6407e753ea9006cc1f1930",
  "kind": "macro",
  "lexical_name": null,
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "macro--c3437a6a4b05b6b34a515fbd",
  "source": {
    "blob": "4767145d355148945b5f451057b3938f87057742",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 87,
    "path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variante1e941d8c9a2631649b4afffd5f7aeea3faf96da7741fdd608a6555ecfa45f5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c3437a6a4b05b6b34a515fbd7b5b6ccb582b83878256fc26e7d63dfb071c4ac7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TensorProduct/Variante1e941d8c9a2631649b4afffd5f7aeea3faf96da7741fdd608a6555ecfa45f5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `macro` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7c09cd9737f4903b6e1c4ba2618905ddfa0b6eedff6407e753ea9006cc1f1930`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
scoped macro "hopf_tensor_induction " var:elimTarget "with " var₁:ident var₂:ident : tactic =>
  `(tactic|
    (induction $var with
      | add _ _ h₁ h₂ =>
        -- avoid the more general `map_add` for performance reasons
        simp only [LinearEquiv.map_add, LinearMap.map_add,
          tmul_add, add_tmul, add_mul, mul_add, h₁, h₂]
      | tmul $var₁ $var₂ => ?_))

set_option backward.defeqAttrib.useBackward true in
set_option backward.privateInPublic true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TensorProduct/Variante1e941d8c9a2631649b4afffd5f7aeea3faf96da7741fdd608a6555ecfa45f5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variante1e941d8c9a2631649b4afffd5f7aeea3faf96da7741fdd608a6555ecfa45f5e.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4767145d355148945b5f451057b3938f87057742` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
