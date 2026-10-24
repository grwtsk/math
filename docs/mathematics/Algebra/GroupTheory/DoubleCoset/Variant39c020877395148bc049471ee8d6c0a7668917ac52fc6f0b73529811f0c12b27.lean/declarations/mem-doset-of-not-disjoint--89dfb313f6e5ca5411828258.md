# mem_doset_of_not_disjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1b64b7034f64624fa09974b59dc783ec457d2a3e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 52,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/39c020877395148bc049471ee8d6c0a7668917ac52fc6f0b73529811f0c12b27.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:11a17a8b-336d-6e8b-f898-9e21296ba52e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:990b1c91-0447-bc9c-e9a7-fa6fc9cae5d9",
  "kind": "theorem",
  "lexical_name": "mem_doset_of_not_disjoint",
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
  "slug": "mem-doset-of-not-disjoint--89dfb313f6e5ca5411828258",
  "source": {
    "blob": "1b64b7034f64624fa09974b59dc783ec457d2a3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 52,
    "path": "GRWTSK/Algebra/GroupTheory/DoubleCoset/Variant39c020877395148bc049471ee8d6c0a7668917ac52fc6f0b73529811f0c12b27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89dfb313f6e5ca541182825802a391a998aca4cf8bfdbbca1ef9fe68ff4c6f03",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/DoubleCoset/Variant39c020877395148bc049471ee8d6c0a7668917ac52fc6f0b73529811f0c12b27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:990b1c91-0447-bc9c-e9a7-fa6fc9cae5d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_doset_of_not_disjoint {H K : Subgroup G} {a b : G}
    (h : ¬Disjoint (doset a H K) (doset b H K)) : b ∈ doset a H K := by
  rw [Set.not_disjoint_iff] at h
  simp only [mem_doset] at *
  obtain ⟨x, ⟨l, hl, r, hr, hrx⟩, y, hy, ⟨r', hr', rfl⟩⟩ := h
  refine ⟨y⁻¹ * l, H.mul_mem (H.inv_mem hy) hl, r * r'⁻¹, K.mul_mem hr (K.inv_mem hr'), ?_⟩
  rwa [mul_assoc, mul_assoc, eq_inv_mul_iff_mul_eq, ← mul_assoc, ← mul_assoc, eq_mul_inv_iff_mul_eq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/DoubleCoset/Variant39c020877395148bc049471ee8d6c0a7668917ac52fc6f0b73529811f0c12b27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/DoubleCoset/Variant39c020877395148bc049471ee8d6c0a7668917ac52fc6f0b73529811f0c12b27.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b64b7034f64624fa09974b59dc783ec457d2a3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
