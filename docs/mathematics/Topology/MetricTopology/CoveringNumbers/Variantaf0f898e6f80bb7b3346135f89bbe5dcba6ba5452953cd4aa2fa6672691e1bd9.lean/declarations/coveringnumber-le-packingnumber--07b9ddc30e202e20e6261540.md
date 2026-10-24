# coveringNumber_le_packingNumber

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:869acd45-0cfa-0c34-bfff-220b7a2facc5",
  "kind": "theorem",
  "lexical_name": "coveringNumber_le_packingNumber",
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
  "slug": "coveringnumber-le-packingnumber--07b9ddc30e202e20e6261540",
  "source": {
    "blob": "75163648232b773ef5f67fb1669306b0ae191812",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 368,
    "line": 362,
    "path": "GRWTSK/Topology/MetricTopology/CoveringNumbers/Variantaf0f898e6f80bb7b3346135f89bbe5dcba6ba5452953cd4aa2fa6672691e1bd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07b9ddc30e202e20e6261540e1085f65f2fbb6e97db5ee94198dba6e382e2689",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/CoveringNumbers/Variantaf0f898e6f80bb7b3346135f89bbe5dcba6ba5452953cd4aa2fa6672691e1bd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:869acd45-0cfa-0c34-bfff-220b7a2facc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 362–368.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coveringNumber_le_packingNumber (ε : ℝ≥0) (A : Set X) :
    coveringNumber ε A ≤ packingNumber ε A := by
  by_cases! h_top : packingNumber ε A ≠ ⊤
  · rw [← encard_maximalSeparatedSet h_top]
    exact isCover_maximalSeparatedSet h_top |>.coveringNumber_le_encard maximalSeparatedSet_subset
  · simp [h_top]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/CoveringNumbers/Variantaf0f898e6f80bb7b3346135f89bbe5dcba6ba5452953cd4aa2fa6672691e1bd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/CoveringNumbers/Variantaf0f898e6f80bb7b3346135f89bbe5dcba6ba5452953cd4aa2fa6672691e1bd9.lean#L362).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75163648232b773ef5f67fb1669306b0ae191812` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
