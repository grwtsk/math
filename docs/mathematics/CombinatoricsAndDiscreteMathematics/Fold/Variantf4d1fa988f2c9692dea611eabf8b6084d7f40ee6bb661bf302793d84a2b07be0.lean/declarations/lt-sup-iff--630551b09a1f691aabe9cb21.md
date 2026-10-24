# lt_sup_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf9201a1-eb2e-5c6a-6e16-053e5452720a",
  "kind": "theorem",
  "lexical_name": "lt_sup_iff",
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
  "slug": "lt-sup-iff--630551b09a1f691aabe9cb21",
  "source": {
    "blob": "8f80d574b0c736d498711bed6b3cbc271036ae5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 611,
    "line": 600,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Fold/Variantf4d1fa988f2c9692dea611eabf8b6084d7f40ee6bb661bf302793d84a2b07be0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:630551b09a1f691aabe9cb215efe26e8edf84d67c5d4d91ca8c0145052eb0d4f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Fold/Variantf4d1fa988f2c9692dea611eabf8b6084d7f40ee6bb661bf302793d84a2b07be0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf9201a1-eb2e-5c6a-6e16-053e5452720a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 600–611.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem lt_sup_iff : a < s.sup f ↔ ∃ b ∈ s, a < f b := by
  apply Iff.intro
  · induction s using cons_induction with
    | empty => exact (absurd · not_lt_bot)
    | cons c t hc ih =>
      rw [sup_cons, lt_sup_iff]
      exact fun
      | Or.inl h => ⟨c, mem_cons.2 (Or.inl rfl), h⟩
      | Or.inr h => let ⟨b, hb, hlt⟩ := ih h; ⟨b, mem_cons.2 (Or.inr hb), hlt⟩
  · exact fun ⟨b, hb, hlt⟩ => lt_of_lt_of_le hlt (le_sup hb)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Fold/Variantf4d1fa988f2c9692dea611eabf8b6084d7f40ee6bb661bf302793d84a2b07be0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Fold/Variantf4d1fa988f2c9692dea611eabf8b6084d7f40ee6bb661bf302793d84a2b07be0.lean#L600).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f80d574b0c736d498711bed6b3cbc271036ae5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
