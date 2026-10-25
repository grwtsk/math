# mem_toSubtype_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:10fc2962-1978-aa14-4a92-85fc83c9c5d9",
  "kind": "theorem",
  "lexical_name": "mem_toSubtype_iff",
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
  "slug": "mem-tosubtype-iff--7ffbd9af97761dc6acc7434d",
  "source": {
    "blob": "c45c5bbe2548b32d92ed119fc05397273cf7ee73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 476,
    "line": 472,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PFun/Variant8363f513256c2c244578232e909409a315f1401ffe449e9e745067ab2302e4df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ffbd9af97761dc6acc7434dcbfb8e3cb297c984da7f38f69ca1ddb5f1225093",
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

Occurrence: `result:10fc2962-1978-aa14-4a92-85fc83c9c5d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 472–476.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_toSubtype_iff {p : β → Prop} {f : α → β} {a : α} {b : Subtype p} :
    b ∈ toSubtype p f a ↔ ↑b = f a := by
  rw [toSubtype_apply, Part.mem_mk_iff, exists_subtype_mk_eq_iff, eq_comm]

/-- The identity as a partial function -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PFun/Variant8363f513256c2c244578232e909409a315f1401ffe449e9e745067ab2302e4df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PFun/Variant8363f513256c2c244578232e909409a315f1401ffe449e9e745067ab2302e4df.lean#L472).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c45c5bbe2548b32d92ed119fc05397273cf7ee73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
