# nsmul_pos_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43ebc1b3-f709-c816-d68d-d42a95fe9fb0",
  "kind": "theorem",
  "lexical_name": "nsmul_pos_iff",
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
  "slug": "nsmul-pos-iff--99451ceacd1e7a0f80237af3",
  "source": {
    "blob": "9dab58c9a22e1194534dda3a0b3314cb1eb42a9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 134,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variantf3cd7014e5884c5da7a5be128a7859c2ca6cf2b411969ffedffb14c68e2c8369.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99451ceacd1e7a0f80237af3959a1feb4b206eb3f8bb82acc3813061ec51e397",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variantf3cd7014e5884c5da7a5be128a7859c2ca6cf2b411969ffedffb14c68e2c8369.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43ebc1b3-f709-c816-d68d-d42a95fe9fb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nsmul_pos_iff {k : Nat} {a : M} (h : 0 < a) : 0 < k • a ↔ 0 < k:= by
  rw [← nsmul_lt_nsmul_iff k h, nsmul_zero]

end

section

open AddCommGroup
variable {M : Type u} [LE M] [IsPreorder M] [AddCommGroup M] [OrderedAdd M]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variantf3cd7014e5884c5da7a5be128a7859c2ca6cf2b411969ffedffb14c68e2c8369.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variantf3cd7014e5884c5da7a5be128a7859c2ca6cf2b411969ffedffb14c68e2c8369.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9dab58c9a22e1194534dda3a0b3314cb1eb42a9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
