# lipschitzWith_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac99a1ff-93e3-51c2-6215-fa8325120d9e",
  "kind": "theorem",
  "lexical_name": "lipschitzWith_smul",
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
  "slug": "lipschitzwith-smul--e4a23851120279c39d47a610",
  "source": {
    "blob": "360afa753c042e8ce488880dc80f9bb5873dbfdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 55,
    "path": "GRWTSK/Topology/MetricTopology/MulAction/Variant533cdf96a4d93f08afd2280e859d6abbd9da02a9898f9b3532753336b20cd0c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4a23851120279c39d47a610ef30fc4ce44613900c761bbaf6e42ae1ddd47041",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/MulAction/Variant533cdf96a4d93f08afd2280e859d6abbd9da02a9898f9b3532753336b20cd0c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac99a1ff-93e3-51c2-6215-fa8325120d9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lipschitzWith_smul (s : α) : LipschitzWith ‖s‖₊ (s • · : β → β) :=
  lipschitzWith_iff_dist_le_mul.2 <| dist_smul_le _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/MulAction/Variant533cdf96a4d93f08afd2280e859d6abbd9da02a9898f9b3532753336b20cd0c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/MulAction/Variant533cdf96a4d93f08afd2280e859d6abbd9da02a9898f9b3532753336b20cd0c7.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `360afa753c042e8ce488880dc80f9bb5873dbfdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
