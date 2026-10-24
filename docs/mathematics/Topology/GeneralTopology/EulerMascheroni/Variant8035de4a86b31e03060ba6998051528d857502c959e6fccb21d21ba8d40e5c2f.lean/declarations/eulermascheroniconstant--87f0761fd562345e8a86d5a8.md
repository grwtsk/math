# eulerMascheroniConstant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fcd34f89c862e6e86cd3689fe8fc2be3855a55b66033be21acba14d0c956626d",
  "kind": "def",
  "lexical_name": "eulerMascheroniConstant",
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
  "slug": "eulermascheroniconstant--87f0761fd562345e8a86d5a8",
  "source": {
    "blob": "70239be26bd5307a6e8fca5c5c45496014960f41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 125,
    "path": "GRWTSK/Topology/GeneralTopology/EulerMascheroni/Variant8035de4a86b31e03060ba6998051528d857502c959e6fccb21d21ba8d40e5c2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:87f0761fd562345e8a86d5a8ba4b1cbc151d87cf4a107f76c13048409d50d0bf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/EulerMascheroni/Variant8035de4a86b31e03060ba6998051528d857502c959e6fccb21d21ba8d40e5c2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fcd34f89c862e6e86cd3689fe8fc2be3855a55b66033be21acba14d0c956626d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def eulerMascheroniConstant : ℝ := limUnder atTop eulerMascheroniSeq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/EulerMascheroni/Variant8035de4a86b31e03060ba6998051528d857502c959e6fccb21d21ba8d40e5c2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/EulerMascheroni/Variant8035de4a86b31e03060ba6998051528d857502c959e6fccb21d21ba8d40e5c2f.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70239be26bd5307a6e8fca5c5c45496014960f41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
