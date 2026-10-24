# cantorSetEquivNatToBool

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aa525e3df9f895f1fa52f54629a3f2a70d95daa3333b8bc9cfb9983ea5e8b5cf",
  "kind": "def",
  "lexical_name": "cantorSetEquivNatToBool",
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
  "slug": "cantorsetequivnattobool--b1e06767c05b5efedfdbd061",
  "source": {
    "blob": "eaf1e9662b278b4e584feeccfce2be3132dede68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 347,
    "line": 326,
    "path": "GRWTSK/Topology/GeneralTopology/CantorSet/Variant2674d089a27078995e20aba22476a17b0d79fd64c0ce79d3061acdec35b8bc53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b1e06767c05b5efedfdbd061ce1372f909ad796f67473cb126f8ffc88f80cae7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CantorSet/Variant2674d089a27078995e20aba22476a17b0d79fd64c0ce79d3061acdec35b8bc53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aa525e3df9f895f1fa52f54629a3f2a70d95daa3333b8bc9cfb9983ea5e8b5cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 326–347.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def cantorSetEquivNatToBool : cantorSet ≃ (ℕ → Bool) where
  toFun := fun ⟨x, h⟩ ↦ (cantorToBinary x).get
  invFun (y : ℕ → Bool) :=
    ⟨ofDigits (fun i ↦ cond (y i) 2 0), ofDigits_bool_to_fin_three_mem_cantorSet y⟩
  left_inv := by
    intro ⟨x, hx⟩
    simp only [Fin.isValue, Subtype.mk.injEq]
    exact ofDigits_cantorToTernary hx
  right_inv := by
    intro y
    simp only [Fin.isValue]
    set x := @ofDigits 3 (fun i ↦ cond (y i) 2 0)
    have := ofDigits_cantorToTernary (ofDigits_bool_to_fin_three_mem_cantorSet y)
    apply ofDigits_zero_two_sequence_unique at this
    rotate_left
    · exact fun n ↦ cantorToTernary_ne_one
    · grind
    ext n
    apply congrFun (a := n) at this
    grind [cantorToTernary, Stream'.get_map]

/-- Canonical homeomorphism between the Cantor set and `ℕ → Bool`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CantorSet/Variant2674d089a27078995e20aba22476a17b0d79fd64c0ce79d3061acdec35b8bc53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CantorSet/Variant2674d089a27078995e20aba22476a17b0d79fd64c0ce79d3061acdec35b8bc53.lean#L326).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eaf1e9662b278b4e584feeccfce2be3132dede68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
