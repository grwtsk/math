# productOfMemOpens_isInducing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:11b9db8d-1948-b88f-8e3a-82c9c3f40df9",
  "kind": "theorem",
  "lexical_name": "productOfMemOpens_isInducing",
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
  "slug": "productofmemopens-isinducing--828e7aaac8592aebc5265680",
  "source": {
    "blob": "934e042e828b20144e48396b69d0617a9fa35516",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 55,
    "path": "GRWTSK/Topology/GeneralTopology/T0Sierpinski/Variant688d0a7d8ccc56e56a4c05bdcef43b41519bb6a600eccae0ffc2e2a65fcda4f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:828e7aaac8592aebc5265680ae7b86cfe2e9f5304e646ffd03451281d28710a6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/T0Sierpinski/Variant688d0a7d8ccc56e56a4c05bdcef43b41519bb6a600eccae0ffc2e2a65fcda4f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11b9db8d-1948-b88f-8e3a-82c9c3f40df9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem productOfMemOpens_isInducing : IsInducing (productOfMemOpens X) := by
  convert inducing_iInf_to_pi fun (u : Opens X) (x : X) => x ∈ u
  apply eq_induced_by_maps_to_sierpinski

@[deprecated (since := "2024-10-28")]
alias productOfMemOpens_inducing := productOfMemOpens_isInducing

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/T0Sierpinski/Variant688d0a7d8ccc56e56a4c05bdcef43b41519bb6a600eccae0ffc2e2a65fcda4f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/T0Sierpinski/Variant688d0a7d8ccc56e56a4c05bdcef43b41519bb6a600eccae0ffc2e2a65fcda4f1.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `934e042e828b20144e48396b69d0617a9fa35516` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
