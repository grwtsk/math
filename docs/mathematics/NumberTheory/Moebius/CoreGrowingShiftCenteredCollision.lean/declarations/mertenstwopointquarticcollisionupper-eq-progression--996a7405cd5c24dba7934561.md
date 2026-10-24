# mertensTwoPointQuarticCollisionUpper_eq_progression

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c1693940-187a-6ab7-747f-aab784db3fea",
  "kind": "theorem",
  "lexical_name": "mertensTwoPointQuarticCollisionUpper_eq_progression",
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
  "slug": "mertenstwopointquarticcollisionupper-eq-progression--996a7405cd5c24dba7934561",
  "source": {
    "blob": "5fa2a73c532eac6b64535506b833fbf1234f4398",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 30,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftCenteredCollision.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:996a7405cd5c24dba7934561c672022ccb83092f0b79c78c799584fefaf4b26d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftCenteredCollision.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1693940-187a-6ab7-747f-aab784db3fea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertensTwoPointQuarticCollisionUpper_eq_progression
    {h N : ℕ}
    (hh : 0 < h) :
    mertensTwoPointQuarticCollisionUpper h N =
      mertensTwoPointQuarticCollisionProgression h N := by
  classical
  unfold mertensTwoPointQuarticCollisionUpper
    mertensTwoPointQuarticCollisionProgression
  rw [Finset.sum_sigma']
  apply Finset.sum_bij (fun p _hp => p.2)
  · intro p hp
    rcases p with ⟨b, a⟩
    simp only [Finset.mem_sigma, Finset.mem_range,
      Finset.mem_filter] at hp ⊢
    rcases hp with ⟨hbN, hab, hba⟩
    omega
  · intro p₁ hp₁ p₂ hp₂ heq
    rcases p₁ with ⟨b₁, a₁⟩
    rcases p₂ with ⟨b₂, a₂⟩
    simp only [Finset.mem_sigma, Finset.mem_range,
      Finset.mem_filter] at hp₁ hp₂
    simp only at heq
    rcases hp₁ with ⟨_hb₁N, _ha₁b₁, hb₁⟩
    rcases hp₂ with ⟨_hb₂N, _ha₂b₂, hb₂⟩
    have ha : a₁ = a₂ := heq
    subst a₂
    have hb : b₁ = b₂ := by omega
    subst b₂
    rfl
  · intro a ha
    simp only [Finset.mem_range] at ha
    refine ⟨⟨a + h, a⟩, ?_, rfl⟩
    simp only [Finset.mem_sigma, Finset.mem_range,
      Finset.mem_filter]
    constructor
    · omega
    constructor
    · omega
    · rfl
  · intro p hp
    rcases p with ⟨b, a⟩
    simp only [Finset.mem_sigma, Finset.mem_range,
      Finset.mem_filter] at hp
    rcases hp with ⟨_hbN, _hab, hba⟩
    change mertensTwoPointQuarticCell h a b =
      mertensTwoPointQuarticCollisionCell h a
    rw [hba]
    exact mertensTwoPointQuarticCell_eq_collisionCell h a

/-- The same collision cell written around its midpoint `m=a+1+h`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftCenteredCollision.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftCenteredCollision.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fa2a73c532eac6b64535506b833fbf1234f4398` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
