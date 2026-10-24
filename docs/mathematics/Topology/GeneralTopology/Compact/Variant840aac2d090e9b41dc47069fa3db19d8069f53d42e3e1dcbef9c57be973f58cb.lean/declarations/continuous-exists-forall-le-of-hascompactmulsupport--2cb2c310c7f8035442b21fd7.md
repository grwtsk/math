# Continuous.exists_forall_le_of_hasCompactMulSupport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "facd63f204b3a08f563d87b4d0689c212f8a4433",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 340,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/84/840aac2d090e9b41dc47069fa3db19d8069f53d42e3e1dcbef9c57be973f58cb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1ae7bb0c-0a02-4ce9-7793-c88c5e993773",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:be8684f4-e672-819f-ebc2-f05fd0004a1d",
  "kind": "theorem",
  "lexical_name": "Continuous.exists_forall_le_of_hasCompactMulSupport",
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
  "slug": "continuous-exists-forall-le-of-hascompactmulsupport--2cb2c310c7f8035442b21fd7",
  "source": {
    "blob": "facd63f204b3a08f563d87b4d0689c212f8a4433",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 340,
    "path": "GRWTSK/Topology/GeneralTopology/Compact/Variant840aac2d090e9b41dc47069fa3db19d8069f53d42e3e1dcbef9c57be973f58cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2cb2c310c7f8035442b21fd7fe4894573973f6494c6697f726be9e17a1a84d83",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Compact/Variant840aac2d090e9b41dc47069fa3db19d8069f53d42e3e1dcbef9c57be973f58cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be8684f4-e672-819f-ebc2-f05fd0004a1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 340–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Continuous.exists_forall_le_of_hasCompactMulSupport [ClosedIicTopology α] [Nonempty β]
    [One α] {f : β → α} (hf : Continuous f) (h : HasCompactMulSupport f) :
    ∃ x : β, ∀ y : β, f x ≤ f y := by
  obtain ⟨_, ⟨x, rfl⟩, hx⟩ := (h.isCompact_range hf).exists_isLeast (range_nonempty _)
  rw [mem_lowerBounds, forall_mem_range] at hx
  exact ⟨x, hx⟩

/-- A continuous function with compact support has a global maximum. -/
@[to_additive "A continuous function with compact support has a global maximum."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Compact/Variant840aac2d090e9b41dc47069fa3db19d8069f53d42e3e1dcbef9c57be973f58cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Compact/Variant840aac2d090e9b41dc47069fa3db19d8069f53d42e3e1dcbef9c57be973f58cb.lean#L340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `facd63f204b3a08f563d87b4d0689c212f8a4433` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
