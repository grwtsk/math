# zero_ambient_eq_south

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:366289a3-5134-bb37-bbad-a6f2c2a8406d",
  "kind": "theorem",
  "lexical_name": "zero_ambient_eq_south",
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
  "slug": "zero-ambient-eq-south--7d4fc577d40f4f45aa239dfc",
  "source": {
    "blob": "92d6a65100735bf586b04a2fbde0f0adde2b6f8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 201,
    "path": "GRWTSK/Topology/MetricTopology/SpheroidBanach/Variantddade09c787fcfb75ab99ab027b0dabf0b952ad911d41d8214631379093696f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d4fc577d40f4f45aa239dfcdac528ec0b9c610126781eb7c44bae161ebd46fa",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/SpheroidBanach/Variantddade09c787fcfb75ab99ab027b0dabf0b952ad911d41d8214631379093696f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:366289a3-5134-bb37-bbad-a6f2c2a8406d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zero_ambient_eq_south :
    (0 : FiniteSpheroidChart ι a c ha hc).point.1 =
      (0, -c) := by
  rw [zero_eq_ofCoordinates]
  exact inverse_zero ha hc

/-- Addition is inverse projection after Euclidean coordinate addition. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/SpheroidBanach/Variantddade09c787fcfb75ab99ab027b0dabf0b952ad911d41d8214631379093696f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/SpheroidBanach/Variantddade09c787fcfb75ab99ab027b0dabf0b952ad911d41d8214631379093696f3.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92d6a65100735bf586b04a2fbde0f0adde2b6f8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
