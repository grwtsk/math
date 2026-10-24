# finite_shells_not_quartic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "028dd54af909ffecc2272f7ee1c949e8e3e91096",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 17,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7ef82cc9bebcf6f9feec156bd34733bab913864add6e1b68b8035646043802e4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1d547ace-2720-4f2e-7190-2b56218236b3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:60abbfb2-c11d-d58e-0d30-dc6b47a241c3",
  "kind": "theorem",
  "lexical_name": "finite_shells_not_quartic",
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
  "slug": "finite-shells-not-quartic--0ffc7cc06300e083b81f2130",
  "source": {
    "blob": "028dd54af909ffecc2272f7ee1c949e8e3e91096",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 17,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ZeroShellCountFixtures/Variant7ef82cc9bebcf6f9feec156bd34733bab913864add6e1b68b8035646043802e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ffc7cc06300e083b81f2130fa03fde32c68a47c73f9675b8728d530f9d140a9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ZeroShellCountFixtures/Variant7ef82cc9bebcf6f9feec156bd34733bab913864add6e1b68b8035646043802e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60abbfb2-c11d-d58e-0d30-dc6b47a241c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_shells_not_quartic :
    ¬ ∃ C : ℝ, 0 < C ∧ ∀ n : ℕ,
      (Nat.card (Fin ((n + 1) ^ 5)) : ℝ) ≤ C * (n + 1 : ℝ) ^ 4 := by
  rintro ⟨C, _hC, hbound⟩
  obtain ⟨n, hn⟩ := exists_nat_gt C
  have hb := hbound n
  simp only [Nat.card_eq_fintype_card, Fintype.card_fin, Nat.cast_pow,
    Nat.cast_add, Nat.cast_one] at hb
  have hp : 0 < (n + 1 : ℝ) ^ 4 := by positivity
  have he : (n + 1 : ℝ) ^ 5 = (n + 1 : ℝ) * (n + 1 : ℝ) ^ 4 := by ring
  rw [he] at hb
  have hc : (n + 1 : ℝ) ≤ C := (mul_le_mul_iff_left₀ hp).mp (by
    simpa only [mul_comm] using hb)
  linarith

/-- Two points can carry three multiplicity slots. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ZeroShellCountFixtures/Variant7ef82cc9bebcf6f9feec156bd34733bab913864add6e1b68b8035646043802e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ZeroShellCountFixtures/Variant7ef82cc9bebcf6f9feec156bd34733bab913864add6e1b68b8035646043802e4.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `028dd54af909ffecc2272f7ee1c949e8e3e91096` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
