# StructureGroupoid.le_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9c983f69-988e-da2a-4f07-95464e1ba0e8",
  "kind": "theorem",
  "lexical_name": "StructureGroupoid.le_iff",
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
  "slug": "structuregroupoid-le-iff--425e850b108be7b8d026fc14",
  "source": {
    "blob": "aa88b98ac85accab9df7b4be012ac92bd37c4ca7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 203,
    "path": "GRWTSK/Topology/GeneralTopology/StructureGroupoid/Variant60ad9535b2692ebd530607e8075f7f0f5f2093e22de82314859a23c7cac54e97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:425e850b108be7b8d026fc1488f91b1f07a974f4d59cf09d25614414472ceb19",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/StructureGroupoid/Variant60ad9535b2692ebd530607e8075f7f0f5f2093e22de82314859a23c7cac54e97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c983f69-988e-da2a-4f07-95464e1ba0e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem StructureGroupoid.le_iff {G₁ G₂ : StructureGroupoid H} : G₁ ≤ G₂ ↔ ∀ e, e ∈ G₁ → e ∈ G₂ :=
  Iff.rfl

/-- The trivial groupoid, containing only the identity (and maps with empty source, as this is
necessary from the definition). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/StructureGroupoid/Variant60ad9535b2692ebd530607e8075f7f0f5f2093e22de82314859a23c7cac54e97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/StructureGroupoid/Variant60ad9535b2692ebd530607e8075f7f0f5f2093e22de82314859a23c7cac54e97.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa88b98ac85accab9df7b4be012ac92bd37c4ca7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
