# isClosed_setOfPred_concaveOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2ab679b1-a7b9-6f43-46ef-ff4b55232fa1",
  "kind": "theorem",
  "lexical_name": "isClosed_setOfPred_concaveOn",
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
  "slug": "isclosed-setofpred-concaveon--cf64fa5b9ec11e98c8461566",
  "source": {
    "blob": "52d6e02cd430a1c1ee35e3c18995f77171cbc26b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 45,
    "path": "GRWTSK/Topology/GeneralTopology/FunctionTopology/Variant7fa411a02844abaaa0cbc8df08b1b6f749449b4ce05b88d0f2690dda1e6301da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf64fa5b9ec11e98c84615667de37b8f0d8f138c0f398a0d9f2e5c13a2d40ddd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FunctionTopology/Variant7fa411a02844abaaa0cbc8df08b1b6f749449b4ce05b88d0f2690dda1e6301da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ab679b1-a7b9-6f43-46ef-ff4b55232fa1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem isClosed_setOfPred_concaveOn {s : Set α} :
    IsClosed {f : α → β | ConcaveOn 𝕜 s f} :=
  isClosed_setOfPred_convexOn (α := α) (β := βᵒᵈ)

@[deprecated (since := "2026-07-09")]
public alias isClosed_setOf_concaveOn := isClosed_setOfPred_concaveOn
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FunctionTopology/Variant7fa411a02844abaaa0cbc8df08b1b6f749449b4ce05b88d0f2690dda1e6301da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FunctionTopology/Variant7fa411a02844abaaa0cbc8df08b1b6f749449b4ce05b88d0f2690dda1e6301da.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52d6e02cd430a1c1ee35e3c18995f77171cbc26b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
