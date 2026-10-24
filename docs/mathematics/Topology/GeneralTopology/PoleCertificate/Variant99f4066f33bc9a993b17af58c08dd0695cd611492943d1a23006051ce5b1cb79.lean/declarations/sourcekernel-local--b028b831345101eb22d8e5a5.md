# sourceKernel_local

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0bcd8554-994d-2226-341b-af4ec44967f5",
  "kind": "theorem",
  "lexical_name": "sourceKernel_local",
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
  "slug": "sourcekernel-local--b028b831345101eb22d8e5a5",
  "source": {
    "blob": "7ab27680bded49f54d9fba2b94939d442257a19e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 127,
    "path": "GRWTSK/Topology/GeneralTopology/PoleCertificate/Variant99f4066f33bc9a993b17af58c08dd0695cd611492943d1a23006051ce5b1cb79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b028b831345101eb22d8e5a5323424bb326428823d251f1a611285e05dbffbfd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PoleCertificate/Variant99f4066f33bc9a993b17af58c08dd0695cd611492943d1a23006051ce5b1cb79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0bcd8554-994d-2226-341b-af4ec44967f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceKernel_local (z w : ℂ) :
    sourceKernel z (2 * z + w) =
      modeCoefficient z *
        (polynomialKernel (positivePolynomial z) w +
          (polynomialKernel (positivePolynomial (-z)) (w + 4 * z) -
            2 * polynomialKernel (mixedPolynomial z) (w + 2 * z))) := by
  unfold sourceKernel
  rw [show 2 * z + w - 2 * z = w by ring,
    show 2 * z + w + 2 * z = w + 4 * z by ring,
    show 2 * z + w = w + 2 * z by ring]
  ring

/-- The other two finite terms are analytic at the local origin. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PoleCertificate/Variant99f4066f33bc9a993b17af58c08dd0695cd611492943d1a23006051ce5b1cb79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PoleCertificate/Variant99f4066f33bc9a993b17af58c08dd0695cd611492943d1a23006051ce5b1cb79.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ab27680bded49f54d9fba2b94939d442257a19e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
