# distinct_judge_pairs_card_lower_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc84a17f-fc63-69f7-2186-df91ad437d9e",
  "kind": "theorem",
  "lexical_name": "distinct_judge_pairs_card_lower_bound",
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
  "slug": "distinct-judge-pairs-card-lower-bound--166ee9df24663a4a3c92d1c1",
  "source": {
    "blob": "412bda2c6033ec9cdb3e9e3a51690b8053a6a6cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 194,
    "path": "GRWTSK/Algebra/Imo1998Q2/Variant9f3bba1627a9d75c40d898fc69fd724ffb032897caa0bcf44fd13a62fde99e9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:166ee9df24663a4a3c92d1c1419e5127aa11f0efea6b29f8fbbe64a541fbcab6",
  "verification": {
    "reference": "docs/verification/Algebra/Imo1998Q2/Variant9f3bba1627a9d75c40d898fc69fd724ffb032897caa0bcf44fd13a62fde99e9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc84a17f-fc63-69f7-2186-df91ad437d9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem distinct_judge_pairs_card_lower_bound {z : ℕ} (hJ : Fintype.card J = 2 * z + 1) (c : C) :
    2 * z * z ≤ (Finset.univ.filter fun p : JudgePair J => p.Agree r c ∧ p.Distinct).card := by
  let s := Finset.univ.filter fun p : JudgePair J => p.Agree r c
  let t := Finset.univ.filter fun p : JudgePair J => p.Distinct
  have hs : 2 * z * z + 2 * z + 1 ≤ s.card := judge_pairs_card_lower_bound r hJ c
  have hst : s \ t = Finset.univ.diag := by
    ext p; constructor <;> intro hp
    · unfold s t at hp
      aesop
    · unfold s t
      suffices p.judge₁ = p.judge₂ by simp [this]
      aesop
  have hst' : (s \ t).card = 2 * z + 1 := by rw [hst, Finset.diag_card, ← hJ, Finset.card_univ]
  rw [Finset.filter_and, ← Finset.sdiff_sdiff_self_left s t, Finset.card_sdiff_of_subset]
  · rw [hst']; rw [add_assoc] at hs; apply le_tsub_of_add_le_right hs
  · apply Finset.sdiff_subset

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Imo1998Q2/Variant9f3bba1627a9d75c40d898fc69fd724ffb032897caa0bcf44fd13a62fde99e9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Imo1998Q2/Variant9f3bba1627a9d75c40d898fc69fd724ffb032897caa0bcf44fd13a62fde99e9a.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `412bda2c6033ec9cdb3e9e3a51690b8053a6a6cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
