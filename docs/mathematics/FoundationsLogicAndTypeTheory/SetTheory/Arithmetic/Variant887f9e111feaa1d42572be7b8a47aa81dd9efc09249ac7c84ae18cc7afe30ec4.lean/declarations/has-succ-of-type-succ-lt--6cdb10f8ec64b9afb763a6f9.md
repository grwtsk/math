# has_succ_of_type_succ_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b13a39a3-19b7-2c4d-df20-1d133b44c73d",
  "kind": "theorem",
  "lexical_name": "has_succ_of_type_succ_lt",
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
  "slug": "has-succ-of-type-succ-lt--6cdb10f8ec64b9afb763a6f9",
  "source": {
    "blob": "4a5558d9fa659945cdc175327a47cec3f9177d7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 196,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant887f9e111feaa1d42572be7b8a47aa81dd9efc09249ac7c84ae18cc7afe30ec4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6cdb10f8ec64b9afb763a6f9c049907226bd4612f1e13cc5da02badaec7a1ec2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant887f9e111feaa1d42572be7b8a47aa81dd9efc09249ac7c84ae18cc7afe30ec4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b13a39a3-19b7-2c4d-df20-1d133b44c73d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem has_succ_of_type_succ_lt {α} {r : α → α → Prop} [wo : IsWellOrder α r]
    (h : ∀ a < type r, succ a < type r) (x : α) : ∃ y, r x y := by
  use enum r ⟨succ (typein r x), h _ (typein_lt_type r x)⟩
  convert! enum_lt_enum.mpr _
  · rw [enum_typein]
  · rw [Subtype.mk_lt_mk, lt_succ_iff]

@[deprecated isSuccPrelimit_type_lt_iff (since := "2026-04-12")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant887f9e111feaa1d42572be7b8a47aa81dd9efc09249ac7c84ae18cc7afe30ec4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant887f9e111feaa1d42572be7b8a47aa81dd9efc09249ac7c84ae18cc7afe30ec4.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a5558d9fa659945cdc175327a47cec3f9177d7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
