# right_inverse_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d3b2e0b5a52a14b14e858e0ad0b8d42ed4a6ed37",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 268,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/712e42ba772e9b3b53965cfc71f9b522886eab5e14617916b7a29ee0e1333175.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9f80bcc1-45b2-778a-0da2-0d459f11f560",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:db382f0b-6029-6f32-21b6-facc7868617d",
  "kind": "theorem",
  "lexical_name": "right_inverse_aux",
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
  "slug": "right-inverse-aux--f639e27b8f620a54990c753f",
  "source": {
    "blob": "d3b2e0b5a52a14b14e858e0ad0b8d42ed4a6ed37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 268,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variant712e42ba772e9b3b53965cfc71f9b522886eab5e14617916b7a29ee0e1333175.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f639e27b8f620a54990c753f77b5714f00b2907894e4f4f0dbeecf344e0ffd34",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variant712e42ba772e9b3b53965cfc71f9b522886eab5e14617916b7a29ee0e1333175.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db382f0b-6029-6f32-21b6-facc7868617d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem right_inverse_aux : ∀ n, toFunAux (ofNat s n) = n
  | 0 => by
    rw [toFunAux_eq, card_eq_zero, eq_empty_iff_forall_notMem]
    rintro n hn
    rw [mem_filter, ofNat, mem_range] at hn
    exact bot_le.not_lt (show (⟨n, hn.2⟩ : s) < ⊥ from hn.1)
  | n + 1 => by
    have ih : toFunAux (ofNat s n) = n := right_inverse_aux n
    have h₁ : (ofNat s n : ℕ) ∉ {x ∈ range (ofNat s n) | x ∈ s} := by simp
    have h₂ : {x ∈ range (succ (ofNat s n)) | x ∈ s} =
        insert ↑(ofNat s n) {x ∈ range (ofNat s n) | x ∈ s} := by
      simp only [Finset.ext_iff, mem_insert, mem_range, mem_filter]
      exact fun m =>
        ⟨fun h => by
          simp only [h.2, and_true]
          exact Or.symm (lt_or_eq_of_le ((@lt_succ_iff_le _ _ _ ⟨m, h.2⟩ _).1 h.1)),
         fun h =>
          h.elim (fun h => h.symm ▸ ⟨lt_succ_self _, (ofNat s n).prop⟩) fun h =>
            ⟨h.1.trans (lt_succ_self _), h.2⟩⟩
    simp only [toFunAux_eq, ofNat, range_succ] at ih ⊢
    conv =>
      rhs
      rw [← ih, ← card_insert_of_notMem h₁, ← h₂]

/-- Any infinite set of naturals is denumerable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variant712e42ba772e9b3b53965cfc71f9b522886eab5e14617916b7a29ee0e1333175.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variant712e42ba772e9b3b53965cfc71f9b522886eab5e14617916b7a29ee0e1333175.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3b2e0b5a52a14b14e858e0ad0b8d42ed4a6ed37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
