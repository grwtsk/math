# perm_insertIdx_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:204f96f6-cec6-aa39-7f1f-a31193b358c2",
  "kind": "theorem",
  "lexical_name": "perm_insertIdx_iff",
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
  "slug": "perm-insertidx-iff--fc61dc8a0b2f0210463f2c0b",
  "source": {
    "blob": "5f93e1a8c02c798d7bd42a3dd03f777ccde9c9b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 82,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante6b64d23867f5d17e14b609a6b49b1c8df540ebb6ec68ad9f7633baa5a77335b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc61dc8a0b2f0210463f2c0b1831fdfa4c42d084b63dd17b77492c15e33ea7ff",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante6b64d23867f5d17e14b609a6b49b1c8df540ebb6ec68ad9f7633baa5a77335b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:204f96f6-cec6-aa39-7f1f-a31193b358c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem perm_insertIdx_iff {l₁ l₂ : List α} {n : ℕ} {a : α} :
    l₁.insertIdx n a ~ l₂.insertIdx n a ↔ l₁ ~ l₂ := by
  wlog hle : length l₁ ≤ length l₂ generalizing l₁ l₂
  · rw [perm_comm, this (Nat.le_of_not_ge hle), perm_comm]
  cases Nat.lt_or_ge (length l₁) n with
  | inl hn₁ =>
    rw [insertIdx_of_length_lt hn₁]
    cases Nat.lt_or_ge (length l₂) n with
    | inl hn₂ => rw [insertIdx_of_length_lt hn₂]
    | inr hn₂ =>
      apply iff_of_false
      · intro h
        rw [h.length_eq] at hn₁
        grind
      · grind [Perm.length_eq]
  | inr hn₁ =>
    exact perm_insertIdx_iff_of_le hn₁ (Nat.le_trans hn₁ hle) _

@[gcongr]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante6b64d23867f5d17e14b609a6b49b1c8df540ebb6ec68ad9f7633baa5a77335b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante6b64d23867f5d17e14b609a6b49b1c8df540ebb6ec68ad9f7633baa5a77335b.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f93e1a8c02c798d7bd42a3dd03f777ccde9c9b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
