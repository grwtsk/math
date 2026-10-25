# ncard_eq_of_bijective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6cec26bceeac41d9d40ae1e03384926c2529d3cd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 751,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/688004e73b2bec39602bd6ec67c0487f6d0d0b39c11630398bef4e571654dff4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1050739f-7c46-e6a2-037e-93b98778f358",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:39ebe058-af95-d629-6af3-2578b71f608f",
  "kind": "theorem",
  "lexical_name": "ncard_eq_of_bijective",
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
  "slug": "ncard-eq-of-bijective--6f201824162cf21917bd0324",
  "source": {
    "blob": "6cec26bceeac41d9d40ae1e03384926c2529d3cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 763,
    "line": 751,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant688004e73b2bec39602bd6ec67c0487f6d0d0b39c11630398bef4e571654dff4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f201824162cf21917bd032443fcd50fbdb03c77567bc9a646a5aa4f752e4385",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant688004e73b2bec39602bd6ec67c0487f6d0d0b39c11630398bef4e571654dff4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39ebe058-af95-d629-6af3-2578b71f608f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 751–763.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ncard_eq_of_bijective {n : ℕ} (f : ∀ i, i < n → α)
    (hf : ∀ a ∈ s, ∃ i, ∃ h : i < n, f i h = a) (hf' : ∀ (i) (h : i < n), f i h ∈ s)
    (f_inj : ∀ (i j) (hi : i < n) (hj : j < n), f i hi = f j hj → i = j) : s.ncard = n := by
  let f' : Fin n → α := fun i ↦ f i.val i.is_lt
  suffices himage : s = f' '' Set.univ by
    rw [← Fintype.card_fin n, ← Nat.card_eq_fintype_card, ← Set.ncard_univ, himage]
    exact ncard_image_of_injOn <| fun i _hi j _hj h ↦ Fin.ext <| f_inj i.val j.val i.is_lt j.is_lt h
  ext x
  simp only [image_univ, mem_range]
  refine ⟨fun hx ↦ ?_, fun ⟨⟨i, hi⟩, hx⟩ ↦ hx ▸ hf' i hi⟩
  obtain ⟨i, hi, rfl⟩ := hf x hx
  use ⟨i, hi⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant688004e73b2bec39602bd6ec67c0487f6d0d0b39c11630398bef4e571654dff4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant688004e73b2bec39602bd6ec67c0487f6d0d0b39c11630398bef4e571654dff4.lean#L751).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cec26bceeac41d9d40ae1e03384926c2529d3cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
