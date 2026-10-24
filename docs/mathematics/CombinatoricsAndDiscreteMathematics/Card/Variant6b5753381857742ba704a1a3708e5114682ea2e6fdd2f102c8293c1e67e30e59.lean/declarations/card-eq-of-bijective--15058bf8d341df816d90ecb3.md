# card_eq_of_bijective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a3bbb8e4-2f77-c983-406d-a022d954832e",
  "kind": "theorem",
  "lexical_name": "card_eq_of_bijective",
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
  "slug": "card-eq-of-bijective--15058bf8d341df816d90ecb3",
  "source": {
    "blob": "57681603e1333aca631464bbf2985eda8adfae38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 297,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variant6b5753381857742ba704a1a3708e5114682ea2e6fdd2f102c8293c1e67e30e59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15058bf8d341df816d90ecb36f28db41c0fd8252d0eb14e0120210568a7232e2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Card/Variant6b5753381857742ba704a1a3708e5114682ea2e6fdd2f102c8293c1e67e30e59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3bbb8e4-2f77-c983-406d-a022d954832e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 297–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_eq_of_bijective (f : ∀ i, i < n → α) (hf : ∀ a ∈ s, ∃ i, ∃ h : i < n, f i h = a)
    (hf' : ∀ (i) (h : i < n), f i h ∈ s)
    (f_inj : ∀ (i j) (hi : i < n) (hj : j < n), f i hi = f j hj → i = j) : s.card = n := by
  classical
    have : ∀ a : α, a ∈ s ↔ ∃ (i : _) (hi : i ∈ range n), f i (mem_range.1 hi) = a := fun a =>
      ⟨fun ha =>
        let ⟨i, hi, eq⟩ := hf a ha
        ⟨i, mem_range.2 hi, eq⟩,
        fun ⟨i, hi, eq⟩ => eq ▸ hf' i (mem_range.1 hi)⟩
    have : s = (range n).attach.image fun i => f i.1 (mem_range.1 i.2) := by
      simpa only [ext_iff, mem_image, exists_prop, Subtype.exists, mem_attach, true_and_iff]
    calc
      s.card = card ((range n).attach.image fun i => f i.1 (mem_range.1 i.2)) := by rw [this]
      _ = card (range n).attach :=
        (card_image_of_injective _) fun ⟨i, hi⟩ ⟨j, hj⟩ eq =>
          Subtype.eq <| f_inj i j (mem_range.1 hi) (mem_range.1 hj) eq
      _ = card (range n) := card_attach
      _ = n := card_range n
#align finset.card_eq_of_bijective Finset.card_eq_of_bijective

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Card/Variant6b5753381857742ba704a1a3708e5114682ea2e6fdd2f102c8293c1e67e30e59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variant6b5753381857742ba704a1a3708e5114682ea2e6fdd2f102c8293c1e67e30e59.lean#L297).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57681603e1333aca631464bbf2985eda8adfae38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
