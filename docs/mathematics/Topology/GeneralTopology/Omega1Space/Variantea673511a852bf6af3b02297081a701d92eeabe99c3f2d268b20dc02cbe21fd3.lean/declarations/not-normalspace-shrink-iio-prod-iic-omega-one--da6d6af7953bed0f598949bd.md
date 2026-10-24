# not_normalSpace_shrink_Iio_prod_Iic_omega_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc784318-2bf5-5dd3-34b6-0ea353a9a5e6",
  "kind": "theorem",
  "lexical_name": "not_normalSpace_shrink_Iio_prod_Iic_omega_one",
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
  "slug": "not-normalspace-shrink-iio-prod-iic-omega-one--da6d6af7953bed0f598949bd",
  "source": {
    "blob": "e09e42b8e4f01df35a9d53c895415564146069a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 111,
    "path": "GRWTSK/Topology/GeneralTopology/Omega1Space/Variantea673511a852bf6af3b02297081a701d92eeabe99c3f2d268b20dc02cbe21fd3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da6d6af7953bed0f598949bdae978b51c81b6a919d5aee900388d5243c0f7d28",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Omega1Space/Variantea673511a852bf6af3b02297081a701d92eeabe99c3f2d268b20dc02cbe21fd3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc784318-2bf5-5dd3-34b6-0ea353a9a5e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_normalSpace_shrink_Iio_prod_Iic_omega_one :
    ¬ NormalSpace (Shrink.{u} (Iio ω₁ × Iic ω₁)) :=
  fun _ ↦ not_normalSpace_Iio_prod_Iic_omega_one (Shrink.homeomorph _).symm.normalSpace

/-- `Iio ω₁ × Iic ω₁` embeds into the compact Hausdorff space `Iic ω₁ × Iic ω₁`, shrunk. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Omega1Space/Variantea673511a852bf6af3b02297081a701d92eeabe99c3f2d268b20dc02cbe21fd3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Omega1Space/Variantea673511a852bf6af3b02297081a701d92eeabe99c3f2d268b20dc02cbe21fd3.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e09e42b8e4f01df35a9d53c895415564146069a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
