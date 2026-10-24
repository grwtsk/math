# one_lt_order

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c5259344d91591aadefbb16e34fc3bed00027a85",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 407,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/17/17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e61c0a4f-828e-b559-9d4d-d6a30c086251",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5dd34862-dcc5-71a5-ec9e-e10f3058e24a",
  "kind": "theorem",
  "lexical_name": "one_lt_order",
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
  "slug": "one-lt-order--11e1205c898b0a1b1965b5dc",
  "source": {
    "blob": "c5259344d91591aadefbb16e34fc3bed00027a85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 419,
    "line": 407,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11e1205c898b0a1b1965b5dcbc070b4c8f432d8ec13db192a6c45347fe9b006d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5dd34862-dcc5-71a5-ec9e-e10f3058e24a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 407–419.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem one_lt_order [Finite P] [Finite L] : 1 < order P L := by
  obtain ⟨p₁, p₂, p₃, l₁, l₂, l₃, -, -, h₂₁, h₂₂, h₂₃, h₃₁, h₃₂, h₃₃⟩ := @exists_config P L _ _
  cases nonempty_fintype { p : P // p ∈ l₂ }
  rw [← add_lt_add_iff_right 1, ← pointCount_eq _ l₂, pointCount, Nat.card_eq_fintype_card,
    Fintype.two_lt_card_iff]
  simp_rw [Ne, Subtype.ext_iff]
  have h := mkPoint_ax (P := P) (L := L) fun h => h₂₁ ((congr_arg (p₂ ∈ ·) h).mpr h₂₂)
  exact
    ⟨⟨mkPoint _, h.2⟩, ⟨p₂, h₂₂⟩, ⟨p₃, h₃₂⟩, ne_of_mem_of_not_mem h.1 h₂₁,
      ne_of_mem_of_not_mem h.1 h₃₁, ne_of_mem_of_not_mem h₂₃ h₃₃⟩

variable {P}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean#L407).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5259344d91591aadefbb16e34fc3bed00027a85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
