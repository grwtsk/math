# root_link

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "459efbff491a1dc89c12fa5691647c14d588d531",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 68,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/71b86b492ed27ce4ce62d7b739d15f2c202e9a96135152edc2e403848e5cb15c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3d72d5fa-6869-70b0-d05a-f6251986f31c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f8d26318-c7b3-b4e6-ef55-366243888cb9",
  "kind": "theorem",
  "lexical_name": "root_link",
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
  "slug": "root-link--42afb41589e088d4fb0e09d5",
  "source": {
    "blob": "459efbff491a1dc89c12fa5691647c14d588d531",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 68,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant71b86b492ed27ce4ce62d7b739d15f2c202e9a96135152edc2e403848e5cb15c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42afb41589e088d4fb0e09d560c7a806f6a922c5190dde1d918c52f8b9ea09bf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant71b86b492ed27ce4ce62d7b739d15f2c202e9a96135152edc2e403848e5cb15c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8d26318-c7b3-b4e6-ef55-366243888cb9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem root_link {self : UnionFind} {x y : Fin self.size}
    (xroot : self.parent x = x) (yroot : self.parent y = y) :
    ∃ r, (r = x ∨ r = y) ∧ ∀ i,
      (link self x y yroot).rootD i =
      if self.rootD i = x ∨ self.rootD i = y then r.1 else self.rootD i := by
  if h : x.1 = y then
    refine ⟨x, .inl rfl, fun i => ?_⟩
    rw [rootD_ext (m2 := self) (fun _ => by rw [parent_link, if_pos h])]
    split <;> [obtain _ | _ := ‹_› <;> simp [*]; rfl]
  else
  have {x y : Fin self.size}
      (xroot : self.parent x = x) (yroot : self.parent y = y) {m : UnionFind}
      (hm : ∀ i, m.parent i = if y = i then x.1 else self.parent i) :
      ∃ r, (r = x ∨ r = y) ∧ ∀ i,
        m.rootD i = if self.rootD i = x ∨ self.rootD i = y then r.1 else self.rootD i := by
    let rec go (i) :
        m.rootD i = if self.rootD i = x ∨ self.rootD i = y then x.1 else self.rootD i := by
      if h : m.parent i = i then
        rw [rootD_eq_self.2 h]; rw [hm i] at h; split at h
        · rw [if_pos, h]; simp [← h, rootD_eq_self, xroot]
        · rw [rootD_eq_self.2 ‹_›]; split <;> [skip; rfl]
          next h' => exact h'.resolve_right (Ne.symm ‹_›)
      else
        have _ := Nat.sub_lt_sub_left (m.lt_rankMax i) (m.rank_lt h)
        rw [← rootD_parent, go (m.parent i)]
        rw [hm i]; split <;> [subst i; rw [rootD_parent]]
        simp [rootD_eq_self.2 xroot, rootD_eq_self.2 yroot]
    termination_by m.rankMax - m.rank i
    exact ⟨x, .inl rfl, go⟩
  if hr : self.rank y < self.rank x then
    exact this xroot yroot fun i => by simp [parent_link, h, hr]
  else
    simpa (config := {singlePass := true}) [or_comm] using
      this yroot xroot fun i => by simp [parent_link, h, hr]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant71b86b492ed27ce4ce62d7b739d15f2c202e9a96135152edc2e403848e5cb15c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant71b86b492ed27ce4ce62d7b739d15f2c202e9a96135152edc2e403848e5cb15c.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `459efbff491a1dc89c12fa5691647c14d588d531` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
