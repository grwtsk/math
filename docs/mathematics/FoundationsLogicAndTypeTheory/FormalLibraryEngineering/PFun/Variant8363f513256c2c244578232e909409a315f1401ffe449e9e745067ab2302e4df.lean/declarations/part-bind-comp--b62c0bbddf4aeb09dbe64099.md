# Part.bind_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe57c75c-6d85-9ee1-56ae-60a641f5264b",
  "kind": "theorem",
  "lexical_name": "Part.bind_comp",
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
  "slug": "part-bind-comp--b62c0bbddf4aeb09dbe64099",
  "source": {
    "blob": "c45c5bbe2548b32d92ed119fc05397273cf7ee73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 526,
    "line": 519,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PFun/Variant8363f513256c2c244578232e909409a315f1401ffe449e9e745067ab2302e4df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b62c0bbddf4aeb09dbe6409967b3dce323b30f82a4dd846d8729b96d14d43684",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PFun/Variant8363f513256c2c244578232e909409a315f1401ffe449e9e745067ab2302e4df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe57c75c-6d85-9ee1-56ae-60a641f5264b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 519–526.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Part.bind_comp (f : β →. γ) (g : α →. β) (a : Part α) :
    a.bind (f.comp g) = (a.bind g).bind f := by
  ext c
  simp_rw [Part.mem_bind_iff, comp_apply, Part.mem_bind_iff, ← exists_and_right, ← exists_and_left]
  rw [exists_comm]
  simp_rw [and_assoc]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PFun/Variant8363f513256c2c244578232e909409a315f1401ffe449e9e745067ab2302e4df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PFun/Variant8363f513256c2c244578232e909409a315f1401ffe449e9e745067ab2302e4df.lean#L519).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c45c5bbe2548b32d92ed119fc05397273cf7ee73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
