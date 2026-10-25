# Nontrivial.preimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "03a65490ab0c7ccf385460ba1a266e0e89d6283a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1031,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c400536ec548f823a7b981531afb4c693b94a4f74b49584eb9aa3a9fc737329f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ae9979f0-32b6-bf11-aff6-09aad6d6f806",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0e7d95a8-3a73-cef8-53e0-f61863dba3c2",
  "kind": "theorem",
  "lexical_name": "Nontrivial.preimage",
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
  "slug": "nontrivial-preimage--fcd7c304e57ea60d9723a535",
  "source": {
    "blob": "03a65490ab0c7ccf385460ba1a266e0e89d6283a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1037,
    "line": 1031,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Image/Variantc400536ec548f823a7b981531afb4c693b94a4f74b49584eb9aa3a9fc737329f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fcd7c304e57ea60d9723a53516e10429a6f4f2b9971b3e8eae31c0ed47ab4f0c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Image/Variantc400536ec548f823a7b981531afb4c693b94a4f74b49584eb9aa3a9fc737329f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e7d95a8-3a73-cef8-53e0-f61863dba3c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1031–1037.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Nontrivial.preimage {s : Set β} (hs : s.Nontrivial)
    (hf : Function.Surjective f) : (f ⁻¹' s).Nontrivial := by
  rcases hs with ⟨fx, hx, fy, hy, hxy⟩
  rcases hf fx, hf fy with ⟨⟨x, rfl⟩, ⟨y, rfl⟩⟩
  exact ⟨x, hx, y, hy, mt (congr_arg f) hxy⟩

/-- The image of a nontrivial set under an injective map is nontrivial. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Image/Variantc400536ec548f823a7b981531afb4c693b94a4f74b49584eb9aa3a9fc737329f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Image/Variantc400536ec548f823a7b981531afb4c693b94a4f74b49584eb9aa3a9fc737329f.lean#L1031).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03a65490ab0c7ccf385460ba1a266e0e89d6283a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
