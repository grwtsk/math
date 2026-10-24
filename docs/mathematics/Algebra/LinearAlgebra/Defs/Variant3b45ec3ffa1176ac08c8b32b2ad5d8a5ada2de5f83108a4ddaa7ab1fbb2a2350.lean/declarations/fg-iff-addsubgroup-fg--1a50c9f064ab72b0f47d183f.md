# fg_iff_addSubgroup_fg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d9b184cf-1327-a592-9148-d5b16fc52b13",
  "kind": "theorem",
  "lexical_name": "fg_iff_addSubgroup_fg",
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
  "slug": "fg-iff-addsubgroup-fg--1a50c9f064ab72b0f47d183f",
  "source": {
    "blob": "fd5063a179fdcef2d1ca92de8e55978fba36cbb2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 63,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant3b45ec3ffa1176ac08c8b32b2ad5d8a5ada2de5f83108a4ddaa7ab1fbb2a2350.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a50c9f064ab72b0f47d183fbbc5ec29e0b1a67279113ddf148b8006bebecbf4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variant3b45ec3ffa1176ac08c8b32b2ad5d8a5ada2de5f83108a4ddaa7ab1fbb2a2350.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9b184cf-1327-a592-9148-d5b16fc52b13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fg_iff_addSubgroup_fg {G : Type*} [AddCommGroup G] (P : Submodule ℤ G) :
    P.FG ↔ P.toAddSubgroup.FG :=
  ⟨fun ⟨S, hS⟩ => ⟨S, by simpa [← span_int_eq_addSubgroupClosure]⟩,
    fun ⟨S, hS⟩ => ⟨S, by simpa [← span_int_eq_addSubgroupClosure] using hS⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variant3b45ec3ffa1176ac08c8b32b2ad5d8a5ada2de5f83108a4ddaa7ab1fbb2a2350.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variant3b45ec3ffa1176ac08c8b32b2ad5d8a5ada2de5f83108a4ddaa7ab1fbb2a2350.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd5063a179fdcef2d1ca92de8e55978fba36cbb2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
