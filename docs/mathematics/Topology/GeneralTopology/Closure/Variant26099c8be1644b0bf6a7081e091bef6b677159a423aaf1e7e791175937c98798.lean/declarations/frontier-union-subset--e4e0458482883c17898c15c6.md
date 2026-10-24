# frontier_union_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bc52f70d-4e65-4ac3-35fa-5e3086c87ae6",
  "kind": "theorem",
  "lexical_name": "frontier_union_subset",
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
  "slug": "frontier-union-subset--e4e0458482883c17898c15c6",
  "source": {
    "blob": "57e1d26b7e1be608090849561d7ca1ca683f2e76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 555,
    "line": 552,
    "path": "GRWTSK/Topology/GeneralTopology/Closure/Variant26099c8be1644b0bf6a7081e091bef6b677159a423aaf1e7e791175937c98798.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4e0458482883c17898c15c6118e025f622923c47fcb2dfd058dddd3c8ddba17",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Closure/Variant26099c8be1644b0bf6a7081e091bef6b677159a423aaf1e7e791175937c98798.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc52f70d-4e65-4ac3-35fa-5e3086c87ae6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 552–555.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem frontier_union_subset (s t : Set X) :
    frontier (s ∪ t) ⊆ frontier s ∩ closure tᶜ ∪ closure sᶜ ∩ frontier t := by
  simpa only [frontier_compl, ← compl_union] using frontier_inter_subset sᶜ tᶜ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Closure/Variant26099c8be1644b0bf6a7081e091bef6b677159a423aaf1e7e791175937c98798.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Closure/Variant26099c8be1644b0bf6a7081e091bef6b677159a423aaf1e7e791175937c98798.lean#L552).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57e1d26b7e1be608090849561d7ca1ca683f2e76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
