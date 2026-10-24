# oscillationWithin_univ_eq_oscillation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e2bba5a-a391-0fb1-8610-00c5794a7714",
  "kind": "theorem",
  "lexical_name": "oscillationWithin_univ_eq_oscillation",
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
  "slug": "oscillationwithin-univ-eq-oscillation--4590a6271e10a9b958e6b651",
  "source": {
    "blob": "8742b162cd95ea64975d01991e225082f4786617",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 62,
    "path": "GRWTSK/Topology/GeneralTopology/Oscillation/Variantd8a6edb34e3b50c49061ed41fc202aaffbe3ed454b04bd9aa9aa3a599ca8c0b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4590a6271e10a9b958e6b651eb2c5c8b34f43ba068b2e571332b03b4c01c4a51",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Oscillation/Variantd8a6edb34e3b50c49061ed41fc202aaffbe3ed454b04bd9aa9aa3a599ca8c0b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e2bba5a-a391-0fb1-8610-00c5794a7714`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem oscillationWithin_univ_eq_oscillation [TopologicalSpace E] (f : E → F) (x : E) :
    oscillationWithin f univ x = oscillation f x :=
  oscillationWithin_nhds_eq_oscillation f univ x Filter.univ_mem

namespace ContinuousWithinAt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Oscillation/Variantd8a6edb34e3b50c49061ed41fc202aaffbe3ed454b04bd9aa9aa3a599ca8c0b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Oscillation/Variantd8a6edb34e3b50c49061ed41fc202aaffbe3ed454b04bd9aa9aa3a599ca8c0b6.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8742b162cd95ea64975d01991e225082f4786617` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
