# zariskiPrecoverage_le_propQCPrecoverage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dab026ee-d4f0-1a8f-0d4c-5eb85f33b077",
  "kind": "lemma",
  "lexical_name": "zariskiPrecoverage_le_propQCPrecoverage",
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
  "slug": "zariskiprecoverage-le-propqcprecoverage--fe955212095ad580c5787bf2",
  "source": {
    "blob": "aa71222fc54dd579398a04fd027505d40186d781",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 133,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/QuasiCompact/Variantd20dc4191be1eddea7175058c2e0659c8713b58c59c1cb1254fc27874bc5f89e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe955212095ad580c5787bf2678c494b49ed9a21a5733b2cd10a30474ebfb704",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/QuasiCompact/Variantd20dc4191be1eddea7175058c2e0659c8713b58c59c1cb1254fc27874bc5f89e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dab026ee-d4f0-1a8f-0d4c-5eb85f33b077`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma zariskiPrecoverage_le_propQCPrecoverage [P.ContainsIdentities] [IsZariskiLocalAtSource P] :
    zariskiPrecoverage ≤ propQCPrecoverage P := by
  rw [propQCPrecoverage, le_inf_iff]
  refine ⟨zariskiPrecoverage_le_qcPrecoverage, precoverage_mono fun X Y f hf ↦ ?_⟩
  apply IsZariskiLocalAtSource.of_isOpenImmersion

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/QuasiCompact/Variantd20dc4191be1eddea7175058c2e0659c8713b58c59c1cb1254fc27874bc5f89e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/QuasiCompact/Variantd20dc4191be1eddea7175058c2e0659c8713b58c59c1cb1254fc27874bc5f89e.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa71222fc54dd579398a04fd027505d40186d781` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
