# forall_dual_apply_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "43c8ac3a5381b0ca3a8867b8d24c407d5a34a379",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 205,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/45f6851df21387799575c2844b7c7b50ffad353a938a4bcfcb6f032f78443902.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c1679976-f226-275a-a5ef-f45cb2ca2f73",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1b1570b2-be98-d159-e32b-b989fb954c17",
  "kind": "theorem",
  "lexical_name": "forall_dual_apply_eq_zero_iff",
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
  "slug": "forall-dual-apply-eq-zero-iff--344cac116d6ff4aefc4f8a50",
  "source": {
    "blob": "43c8ac3a5381b0ca3a8867b8d24c407d5a34a379",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 205,
    "path": "GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant45f6851df21387799575c2844b7c7b50ffad353a938a4bcfcb6f032f78443902.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:344cac116d6ff4aefc4f8a50a1e5c245a1422352c4da5ed1536ae309c86e3e66",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Lemmas/Variant45f6851df21387799575c2844b7c7b50ffad353a938a4bcfcb6f032f78443902.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b1570b2-be98-d159-e32b-b989fb954c17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem forall_dual_apply_eq_zero_iff
    (R : Type*) [Semiring R] [Module R V] [Projective R V] (v : V) :
    (∀ φ : Module.Dual R V, φ v = 0) ↔ v = 0 := by
  refine ⟨fun h ↦ ?_, fun hv ↦ by simp [hv]⟩
  contrapose! h
  exact Projective.exists_dual_ne_zero R h

/-- This is a linear map version of `SeparatingDual.exists_eq_one` in a projective module. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Lemmas/Variant45f6851df21387799575c2844b7c7b50ffad353a938a4bcfcb6f032f78443902.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant45f6851df21387799575c2844b7c7b50ffad353a938a4bcfcb6f032f78443902.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43c8ac3a5381b0ca3a8867b8d24c407d5a34a379` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
