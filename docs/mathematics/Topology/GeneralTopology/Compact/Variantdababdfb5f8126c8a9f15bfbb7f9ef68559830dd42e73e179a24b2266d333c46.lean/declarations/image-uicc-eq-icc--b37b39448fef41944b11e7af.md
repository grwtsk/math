# image_uIcc_eq_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6880c9aa-eb53-9000-c22d-52c112ffc02b",
  "kind": "theorem",
  "lexical_name": "image_uIcc_eq_Icc",
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
  "slug": "image-uicc-eq-icc--b37b39448fef41944b11e7af",
  "source": {
    "blob": "454da57d03f8316a1946bd94d6665572a776dcd6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 565,
    "line": 561,
    "path": "GRWTSK/Topology/GeneralTopology/Compact/Variantdababdfb5f8126c8a9f15bfbb7f9ef68559830dd42e73e179a24b2266d333c46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b37b39448fef41944b11e7af6740670038e4084508764bc3e8d171d580e5d068",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Compact/Variantdababdfb5f8126c8a9f15bfbb7f9ef68559830dd42e73e179a24b2266d333c46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6880c9aa-eb53-9000-c22d-52c112ffc02b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 561–565.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem image_uIcc_eq_Icc (h : ContinuousOn f [[a, b]]) :
    f '' [[a, b]] = Icc (sInf (f '' [[a, b]])) (sSup (f '' [[a, b]])) :=
  image_Icc min_le_max h
#align continuous_on.image_uIcc_eq_Icc ContinuousOn.image_uIcc_eq_Icc

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Compact/Variantdababdfb5f8126c8a9f15bfbb7f9ef68559830dd42e73e179a24b2266d333c46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Compact/Variantdababdfb5f8126c8a9f15bfbb7f9ef68559830dd42e73e179a24b2266d333c46.lean#L561).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `454da57d03f8316a1946bd94d6665572a776dcd6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
