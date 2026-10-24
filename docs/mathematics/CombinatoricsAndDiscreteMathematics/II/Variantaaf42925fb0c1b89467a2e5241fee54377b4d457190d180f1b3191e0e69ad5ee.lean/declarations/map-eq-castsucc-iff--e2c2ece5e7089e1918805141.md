# map'_eq_castSucc_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:126a3b56-837f-02c1-2194-dc65835c0dd9",
  "kind": "lemma",
  "lexical_name": "map'_eq_castSucc_iff",
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
  "slug": "map-eq-castsucc-iff--e2c2ece5e7089e1918805141",
  "source": {
    "blob": "4a0209da87e3a2fa37f742e13be0e4ed5fee5198",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 97,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/II/Variantaaf42925fb0c1b89467a2e5241fee54377b4d457190d180f1b3191e0e69ad5ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2c2ece5e7089e1918805141e19642474e0ca4a41510433a0a4c977fa395f381",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/II/Variantaaf42925fb0c1b89467a2e5241fee54377b4d457190d180f1b3191e0e69ad5ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:126a3b56-837f-02c1-2194-dc65835c0dd9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map'_eq_castSucc_iff (f : Fin (n + 1) →o Fin (m + 1)) (x : Fin (m + 2)) (y : Fin (n + 1)) :
    map' f x = y.castSucc ↔ x ≤ (f y).castSucc ∧
      ∀ (i : Fin (n + 1)) (_ : i < y), (f i).castSucc < x := by
  simp only [map', Finset.min'_eq_iff, castSucc_mem_finset_iff, and_congr_right_iff]
  intro h
  constructor
  · intro h' i hi
    by_contra!
    exact hi.not_ge (by simpa using h' i.castSucc (by simpa))
  · intro h' i hi
    obtain ⟨i, rfl⟩ | rfl := i.eq_castSucc_or_eq_last
    · simp only [Fin.castSucc_le_castSucc_iff]
      by_contra!
      exact (h' i this).not_ge (by simpa using hi)
    · apply Fin.le_last

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/II/Variantaaf42925fb0c1b89467a2e5241fee54377b4d457190d180f1b3191e0e69ad5ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/II/Variantaaf42925fb0c1b89467a2e5241fee54377b4d457190d180f1b3191e0e69ad5ee.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a0209da87e3a2fa37f742e13be0e4ed5fee5198` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
