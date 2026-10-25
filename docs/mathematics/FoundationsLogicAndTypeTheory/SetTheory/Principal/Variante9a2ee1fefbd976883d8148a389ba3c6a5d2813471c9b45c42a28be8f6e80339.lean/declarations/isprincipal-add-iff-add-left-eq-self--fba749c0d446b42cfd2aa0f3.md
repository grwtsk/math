# isPrincipal_add_iff_add_left_eq_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "381c49ba5d1fc9201783573147a9fba2c7790c26",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 226,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e9/e9a2ee1fefbd976883d8148a389ba3c6a5d2813471c9b45c42a28be8f6e80339.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d7845492-8cdf-1224-6199-cd0015fa5958",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:825f9fbb-342d-8188-67df-6aad643c751e",
  "kind": "theorem",
  "lexical_name": "isPrincipal_add_iff_add_left_eq_self",
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
  "slug": "isprincipal-add-iff-add-left-eq-self--fba749c0d446b42cfd2aa0f3",
  "source": {
    "blob": "381c49ba5d1fc9201783573147a9fba2c7790c26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 226,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variante9a2ee1fefbd976883d8148a389ba3c6a5d2813471c9b45c42a28be8f6e80339.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fba749c0d446b42cfd2aa0f3ddb519a183c5ef0f1997f9c3e9a1e96b3f5053af",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variante9a2ee1fefbd976883d8148a389ba3c6a5d2813471c9b45c42a28be8f6e80339.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:825f9fbb-342d-8188-67df-6aad643c751e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isPrincipal_add_iff_add_left_eq_self : IsPrincipal (· + ·) o ↔ ∀ a < o, a + o = o := by
  refine ⟨fun ho a hao => ?_, fun h a b hao hbo => ?_⟩
  · rcases lt_or_ge 1 o with ho₁ | ho₁
    · exact op_eq_self_of_isPrincipal hao (isNormal_add_right a) ho
        (isSuccLimit_of_isPrincipal_add ho₁ ho)
    · cases le_one_iff.1 ho₁ <;> simp_all
  · rw [← h a hao]
    exact (isNormal_add_right a).strictMono hbo

@[deprecated (since := "2026-03-17")]
alias principal_add_iff_add_left_eq_self := isPrincipal_add_iff_add_left_eq_self

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variante9a2ee1fefbd976883d8148a389ba3c6a5d2813471c9b45c42a28be8f6e80339.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variante9a2ee1fefbd976883d8148a389ba3c6a5d2813471c9b45c42a28be8f6e80339.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `381c49ba5d1fc9201783573147a9fba2c7790c26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
