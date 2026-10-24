# sectorPM_after_MP

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "368973a25800db0515c2cb4ebb95878dff894345",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 307,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ce/ce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b8e172c3-6826-865c-9822-37c63918c389",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7121ac27-6375-d144-ee7a-c222bbe6c30b",
  "kind": "theorem",
  "lexical_name": "sectorPM_after_MP",
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
  "slug": "sectorpm-after-mp--c96de9e035727d74da7f29cd",
  "source": {
    "blob": "368973a25800db0515c2cb4ebb95878dff894345",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 307,
    "path": "GRWTSK/Algebra/LinearAlgebra/CommutingInvolutions/Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c96de9e035727d74da7f29cdc68003b9b4e6ddf3fc0ff781cefbd282c379c0e9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CommutingInvolutions/Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7121ac27-6375-d144-ee7a-c222bbe6c30b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 307–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sectorPM_after_MP (x : V) :
    C.sectorPM (C.sectorMP x) = 0 := by
  change involutionPlus C.first
      (involutionMinus C.second
        (involutionMinus C.first (involutionPlus C.second x))) = 0
  rw [← C.minusMinus_commute (involutionPlus C.second x)]
  rw [involutionPlus_after_minus C.first C.first_sq]
  simp

/-- -+ annihilates +-. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CommutingInvolutions/Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CommutingInvolutions/Variantce26daecb5033e18ed8d8ad82543390fd90f5c69856f11d10f9edecdf75e6613.lean#L307).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `368973a25800db0515c2cb4ebb95878dff894345` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
