# liftAux_spec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aac41003-0514-e54c-45f6-58c49eefea4c",
  "kind": "theorem",
  "lexical_name": "liftAux_spec",
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
  "slug": "liftaux-spec--9b00bc3e5d72cf4489d8dbe2",
  "source": {
    "blob": "62d10082754200dbb9ac6632e65bb6b87b0b7a36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 210,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Free/Variantfca4a6a6994559aa4af56d6f32cd629601a391a4ab88c1918b2d292f6785a773.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b00bc3e5d72cf4489d8dbe2279ccfc17ac2cea4783665e7b0859a6d4f56311e",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Free/Variantfca4a6a6994559aa4af56d6f32cd629601a391a4ab88c1918b2d292f6785a773.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aac41003-0514-e54c-45f6-58c49eefea4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem liftAux_spec (f : X → L) (a b : lib R X) (h : FreeLieAlgebra.Rel R X a b) :
    liftAux R f a = liftAux R f b := by
  induction h
  case lie_self a' => simp only [liftAux_map_mul, NonUnitalAlgHom.map_zero, lie_self]
  case leibniz_lie a' b' c' =>
    simp only [liftAux_map_mul, liftAux_map_add, sub_add_cancel, lie_lie]
  case smul t a' b' _ h₂ => simp only [liftAux_map_smul, h₂]
  case add_right a' b' c' _ h₂ => simp only [liftAux_map_add, h₂]
  case mul_left a' b' c' _ h₂ => simp only [liftAux_map_mul, h₂]
  case mul_right a' b' c' _ h₂ => simp only [liftAux_map_mul, h₂]
#align free_lie_algebra.lift_aux_spec FreeLieAlgebra.liftAux_spec

/-- The quotient map as a `NonUnitalAlgHom`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Free/Variantfca4a6a6994559aa4af56d6f32cd629601a391a4ab88c1918b2d292f6785a773.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Free/Variantfca4a6a6994559aa4af56d6f32cd629601a391a4ab88c1918b2d292f6785a773.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62d10082754200dbb9ac6632e65bb6b87b0b7a36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
