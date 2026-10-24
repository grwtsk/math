# isLittleO_iff_exists_eq_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e19025e2919c8cc17a7b6dfca656e4bf7a015b1d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 507,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4c3a384229557b00e5ccb25ca62faf12ee80b1900699383f7c70cc398b04ea4d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0e5f9782-e0fd-374c-2c21-61aa4b8d3978",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:23c5e726-b8f5-57f8-f970-eeae52a5b0c5",
  "kind": "theorem",
  "lexical_name": "isLittleO_iff_exists_eq_mul",
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
  "slug": "islittleo-iff-exists-eq-mul--e9f254f20536cb6af139f928",
  "source": {
    "blob": "e19025e2919c8cc17a7b6dfca656e4bf7a015b1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 521,
    "line": 507,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Lemmas/Variant4c3a384229557b00e5ccb25ca62faf12ee80b1900699383f7c70cc398b04ea4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9f254f20536cb6af139f9283d9c9c35912a51d2179ee7ae53de137050c0b5e3",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Lemmas/Variant4c3a384229557b00e5ccb25ca62faf12ee80b1900699383f7c70cc398b04ea4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23c5e726-b8f5-57f8-f970-eeae52a5b0c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 507–521.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLittleO_iff_exists_eq_mul :
    u =o[l] v ↔ ∃ φ : α → 𝕜, Tendsto φ l (𝓝 0) ∧ u =ᶠ[l] φ * v := by
  constructor
  · exact fun h => ⟨fun x => u x / v x, h.tendsto_div_nhds_zero, h.eventually_mul_div_cancel.symm⟩
  · simp only [IsLittleO_def]
    rintro ⟨φ, hφ, huvφ⟩ c hpos
    rw [NormedAddGroup.tendsto_nhds_zero] at hφ
    exact isBigOWith_of_eq_mul _ ((hφ c hpos).mono fun x => le_of_lt) huvφ

alias ⟨IsLittleO.exists_eq_mul, _⟩ := isLittleO_iff_exists_eq_mul

end ExistsMulEq

/-! ### Miscellaneous lemmas -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Lemmas/Variant4c3a384229557b00e5ccb25ca62faf12ee80b1900699383f7c70cc398b04ea4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Lemmas/Variant4c3a384229557b00e5ccb25ca62faf12ee80b1900699383f7c70cc398b04ea4d.lean#L507).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e19025e2919c8cc17a7b6dfca656e4bf7a015b1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
