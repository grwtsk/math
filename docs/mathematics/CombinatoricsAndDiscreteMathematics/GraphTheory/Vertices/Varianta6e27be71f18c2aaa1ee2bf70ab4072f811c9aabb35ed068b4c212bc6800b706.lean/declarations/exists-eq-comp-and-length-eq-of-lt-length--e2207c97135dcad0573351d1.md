# exists_eq_comp_and_length_eq_of_lt_length

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a138385a-3c59-7853-3a0d-556ba30f8042",
  "kind": "theorem",
  "lexical_name": "exists_eq_comp_and_length_eq_of_lt_length",
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
  "slug": "exists-eq-comp-and-length-eq-of-lt-length--e2207c97135dcad0573351d1",
  "source": {
    "blob": "015fce1be0e0cbd8303ad4a73330b33eda579435",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 203,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Vertices/Varianta6e27be71f18c2aaa1ee2bf70ab4072f811c9aabb35ed068b4c212bc6800b706.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2207c97135dcad0573351d12f662caa125c31402b15de6846e86f69d0463162",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Vertices/Varianta6e27be71f18c2aaa1ee2bf70ab4072f811c9aabb35ed068b4c212bc6800b706.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a138385a-3c59-7853-3a0d-556ba30f8042`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_eq_comp_and_length_eq_of_lt_length (n : ℕ) (hn : n < p.vertices.length) :
    ∃ (v : V) (p₁ : Path a v) (p₂ : Path v b),
      p = p₁.comp p₂ ∧ p₁.length = n ∧ v = p.vertices[n] := by
  have hn_le_len : n ≤ p.length := by
    rw [vertices_length] at hn
    exact Nat.le_of_lt_succ hn
  obtain ⟨v, p₁, p₂, rfl, rfl⟩ := p.exists_eq_comp_of_le_length hn_le_len
  exact ⟨v, p₁, p₂, rfl, rfl, by simp⟩

/-- If a vertex `v` occurs in the list of vertices of a path `p : Path a b`, then `p` can be
decomposed as a concatenation of a subpath from `a` to `v` and a subpath from `v` to `b`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Vertices/Varianta6e27be71f18c2aaa1ee2bf70ab4072f811c9aabb35ed068b4c212bc6800b706.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Vertices/Varianta6e27be71f18c2aaa1ee2bf70ab4072f811c9aabb35ed068b4c212bc6800b706.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `015fce1be0e0cbd8303ad4a73330b33eda579435` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
