# coe_lcs_eq

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
      "line": 729,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ef/efd7b64dad7b050dbfce9b56fb74c3cc40fdfcd693270f681b92c987a2496f0a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:540c0014-990d-2031-ee7c-d055672d2f43",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b276319d-990d-ccc1-852d-3a5c8096c4d9",
  "kind": "theorem",
  "lexical_name": "coe_lcs_eq",
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
  "slug": "coe-lcs-eq--5bc995f104aace1fcfb680b1",
  "source": {
    "blob": "d7498cdd0181d4e734048c6d60efe479b61da9ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 749,
    "line": 729,
    "path": "GRWTSK/Algebra/Nilpotent/Variantefd7b64dad7b050dbfce9b56fb74c3cc40fdfcd693270f681b92c987a2496f0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5bc995f104aace1fcfb680b1c377477971550434131e5af6412c27204bd32640",
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

Occurrence: `result:b276319d-990d-ccc1-852d-3a5c8096c4d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 729–749.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_lcs_eq : LieSubmodule.toSubmodule (I.lcs M k) = lowerCentralSeries R I M k := by
  induction' k with k ih
  · simp
  · simp_rw [lowerCentralSeries_succ, lcs_succ, LieSubmodule.lieIdeal_oper_eq_linear_span', ←
      (I.lcs M k).mem_coeSubmodule, ih, LieSubmodule.mem_coeSubmodule, LieSubmodule.mem_top,
      true_and, (I : LieSubalgebra R L).coe_bracket_of_module]
    congr
    ext m
    constructor
    · rintro ⟨x, hx, m, hm, rfl⟩
      exact ⟨⟨x, hx⟩, m, hm, rfl⟩
    · rintro ⟨⟨x, hx⟩, m, hm, rfl⟩
      exact ⟨x, hx, m, hm, rfl⟩
#align lie_ideal.coe_lcs_eq LieIdeal.coe_lcs_eq

end LieIdeal

section OfAssociative

variable (R : Type u) {A : Type v} [CommRing R] [Ring A] [Algebra R A]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Nilpotent/Variantefd7b64dad7b050dbfce9b56fb74c3cc40fdfcd693270f681b92c987a2496f0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Nilpotent/Variantefd7b64dad7b050dbfce9b56fb74c3cc40fdfcd693270f681b92c987a2496f0a.lean#L729).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7498cdd0181d4e734048c6d60efe479b61da9ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
