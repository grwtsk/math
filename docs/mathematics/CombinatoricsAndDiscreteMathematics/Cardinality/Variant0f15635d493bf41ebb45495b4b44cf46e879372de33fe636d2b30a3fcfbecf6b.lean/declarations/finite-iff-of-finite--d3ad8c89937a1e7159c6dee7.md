# finite_iff_of_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a15ee6c8-3090-186e-13cb-e0a906e0c949",
  "kind": "lemma",
  "lexical_name": "finite_iff_of_finite",
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
  "slug": "finite-iff-of-finite--d3ad8c89937a1e7159c6dee7",
  "source": {
    "blob": "aac6adaa6328cb20f828981b8e0bcc76a9a9ffaa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 55,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Cardinality/Variant0f15635d493bf41ebb45495b4b44cf46e879372de33fe636d2b30a3fcfbecf6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3ad8c89937a1e7159c6dee7149e48763203d1080811e1560e01d646f8dee6f0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Cardinality/Variant0f15635d493bf41ebb45495b4b44cf46e879372de33fe636d2b30a3fcfbecf6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a15ee6c8-3090-186e-13cb-e0a906e0c949`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma finite_iff_of_finite [Finite k] : Finite (ℙ k V) ↔ Finite V := by
  classical
  refine ⟨fun h ↦ ?_, fun h ↦ inferInstance⟩
  let e := nonZeroEquivProjectivizationProdUnits k V
  have : Finite { v : V // v ≠ 0 } := Finite.of_equiv _ e.symm
  let eq : { v : V // v ≠ 0 } ⊕ Unit ≃ V :=
    ⟨(Sum.elim Subtype.val (fun _ ↦ 0)), fun v ↦ if h : v = 0 then Sum.inr () else Sum.inl ⟨v, h⟩,
      by intro x; aesop, by intro x; aesop⟩
  exact Finite.of_equiv _ eq

/-- Fraction free cardinality formula for the points of `ℙ k V` if `k` and `V` are finite
(for silly reasons the formula also holds when `k` and `V` are infinite).
See `Projectivization.card'` and `Projectivization.card''` for other spellings of the formula. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Cardinality/Variant0f15635d493bf41ebb45495b4b44cf46e879372de33fe636d2b30a3fcfbecf6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Cardinality/Variant0f15635d493bf41ebb45495b4b44cf46e879372de33fe636d2b30a3fcfbecf6b.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aac6adaa6328cb20f828981b8e0bcc76a9a9ffaa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
