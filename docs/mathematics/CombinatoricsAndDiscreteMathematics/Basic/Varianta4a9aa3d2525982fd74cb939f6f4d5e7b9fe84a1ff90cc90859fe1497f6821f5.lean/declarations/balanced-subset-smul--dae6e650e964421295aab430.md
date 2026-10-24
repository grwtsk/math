# Balanced.subset_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9c8015cc7cb07119f74084423b1c82708db5b43c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 284,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a4/a4a9aa3d2525982fd74cb939f6f4d5e7b9fe84a1ff90cc90859fe1497f6821f5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d559f5a1-d06d-73e2-391f-d483ae11a4dc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3a071cfe-f18d-1e4a-19be-22816821033f",
  "kind": "theorem",
  "lexical_name": "Balanced.subset_smul",
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
  "slug": "balanced-subset-smul--dae6e650e964421295aab430",
  "source": {
    "blob": "9c8015cc7cb07119f74084423b1c82708db5b43c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 284,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Varianta4a9aa3d2525982fd74cb939f6f4d5e7b9fe84a1ff90cc90859fe1497f6821f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dae6e650e964421295aab4307e68f6ff1956add731343ff33e3998c3653b6e95",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Varianta4a9aa3d2525982fd74cb939f6f4d5e7b9fe84a1ff90cc90859fe1497f6821f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a071cfe-f18d-1e4a-19be-22816821033f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Balanced.subset_smul (hA : Balanced 𝕜 A) (ha : 1 ≤ ‖a‖) : A ⊆ a • A := by
  refine' (subset_set_smul_iff₀ _).2 (hA a⁻¹ _)
  · rintro rfl
    rw [norm_zero] at ha
    exact zero_lt_one.not_le ha
  · rw [norm_inv]
    exact inv_le_one ha
#align balanced.subset_smul Balanced.subset_smul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Varianta4a9aa3d2525982fd74cb939f6f4d5e7b9fe84a1ff90cc90859fe1497f6821f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Varianta4a9aa3d2525982fd74cb939f6f4d5e7b9fe84a1ff90cc90859fe1497f6821f5.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c8015cc7cb07119f74084423b1c82708db5b43c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
