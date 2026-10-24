# sym2x_self_eq_addSubMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7fc059e6-9b00-aaa3-7622-5dbc81d4cb3a",
  "kind": "lemma",
  "lexical_name": "sym2x_self_eq_addSubMap",
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
  "slug": "sym2x-self-eq-addsubmap--6b25708e2505b3ddd0d3891d",
  "source": {
    "blob": "52d6468bbf14426c720262351afeceee85ba4274",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 200,
    "path": "GRWTSK/Algebra/LinearAlgebra/AddSubMap/Variante0a8e06d960320bb2deb883f4248b89569c2fd2aae367ee32247d9cbf8b5d068.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b25708e2505b3ddd0d3891d65ca837596a33ce86dca75501079e500d87967fb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/AddSubMap/Variante0a8e06d960320bb2deb883f4248b89569c2fd2aae367ee32247d9cbf8b5d068.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7fc059e6-9b00-aaa3-7622-5dbc81d4cb3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sym2x_self_eq_addSubMap (P : W'.Point) :
    sym2x P P = (addSubMap W' · |>.eval <| sym2x P 0) := by
  match P with
  | 0 => ext i : 1; fin_cases i <;> simp [addSubMap]
  | some .. => ext i : 1; fin_cases i <;> simp [pow_two, two_mul, addSubMap]

section Field

variable {F : Type*} [Field F] {W : Affine F}

/- The explicit evaluation of `addSubMap` on `sym2x` of two nonzero points. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/AddSubMap/Variante0a8e06d960320bb2deb883f4248b89569c2fd2aae367ee32247d9cbf8b5d068.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AddSubMap/Variante0a8e06d960320bb2deb883f4248b89569c2fd2aae367ee32247d9cbf8b5d068.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52d6468bbf14426c720262351afeceee85ba4274` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
