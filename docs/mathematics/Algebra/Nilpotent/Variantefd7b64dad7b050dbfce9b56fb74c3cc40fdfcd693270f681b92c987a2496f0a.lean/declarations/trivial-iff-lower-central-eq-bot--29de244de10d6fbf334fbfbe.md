# trivial_iff_lower_central_eq_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d7498cdd0181d4e734048c6d60efe479b61da9ef",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 137,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ef/efd7b64dad7b050dbfce9b56fb74c3cc40fdfcd693270f681b92c987a2496f0a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:edad70c7-99ec-9fa9-7cad-4044136b91e1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c0632517-d3c6-cffb-90dc-4fc81c069e95",
  "kind": "theorem",
  "lexical_name": "trivial_iff_lower_central_eq_bot",
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
  "slug": "trivial-iff-lower-central-eq-bot--29de244de10d6fbf334fbfbe",
  "source": {
    "blob": "d7498cdd0181d4e734048c6d60efe479b61da9ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 137,
    "path": "GRWTSK/Algebra/Nilpotent/Variantefd7b64dad7b050dbfce9b56fb74c3cc40fdfcd693270f681b92c987a2496f0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29de244de10d6fbf334fbfbe534766f7593e306b3ee45a7255f13f5f7823da2b",
  "verification": {
    "reference": "docs/verification/Algebra/Nilpotent/Variantefd7b64dad7b050dbfce9b56fb74c3cc40fdfcd693270f681b92c987a2496f0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0632517-d3c6-cffb-90dc-4fc81c069e95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem trivial_iff_lower_central_eq_bot : IsTrivial L M ↔ lowerCentralSeries R L M 1 = ⊥ := by
  constructor <;> intro h
  · erw [eq_bot_iff, LieSubmodule.lieSpan_le]; rintro m ⟨x, n, hn⟩; rw [← hn, h.trivial]; simp
  · rw [LieSubmodule.eq_bot_iff] at h; apply IsTrivial.mk; intro x m; apply h
    apply LieSubmodule.subset_lieSpan
    -- Porting note: was `use x, m; rfl`
    simp only [LieSubmodule.top_coe, Subtype.exists, LieSubmodule.mem_top, exists_prop, true_and,
      Set.mem_setOf]
    exact ⟨x, m, rfl⟩
#align lie_module.trivial_iff_lower_central_eq_bot LieModule.trivial_iff_lower_central_eq_bot

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Nilpotent/Variantefd7b64dad7b050dbfce9b56fb74c3cc40fdfcd693270f681b92c987a2496f0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Nilpotent/Variantefd7b64dad7b050dbfce9b56fb74c3cc40fdfcd693270f681b92c987a2496f0a.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7498cdd0181d4e734048c6d60efe479b61da9ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
