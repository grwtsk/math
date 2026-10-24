# inhabitedLocalPredicate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d8ffef82e09ac30bf03a9c1fc67fa15e70ccdccf2985be1e22acd66a6725383d",
  "kind": "instance",
  "lexical_name": "inhabitedLocalPredicate",
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
  "slug": "inhabitedlocalpredicate--47cce93e62e9e698eed0f9c9",
  "source": {
    "blob": "97e256f8fa2cefc84ef7388743e9e8c7a712fba6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 122,
    "path": "GRWTSK/Topology/GeneralTopology/LocalPredicate/Variant61720cdf8f5b2df37106da0ec105c398203f5a4453ff3e5f9850e2e94cda6f97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:47cce93e62e9e698eed0f9c9829c1dc6d58e9e54d70b1b1b5bbc8cdd902d7973",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocalPredicate/Variant61720cdf8f5b2df37106da0ec105c398203f5a4453ff3e5f9850e2e94cda6f97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d8ffef82e09ac30bf03a9c1fc67fa15e70ccdccf2985be1e22acd66a6725383d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance inhabitedLocalPredicate (T) [TopologicalSpace T] :
    Inhabited (LocalPredicate fun _ : X ↦ T) :=
  ⟨continuousLocal X T⟩

variable {X T}

/-- The conjunction of two prelocal predicates is prelocal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocalPredicate/Variant61720cdf8f5b2df37106da0ec105c398203f5a4453ff3e5f9850e2e94cda6f97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocalPredicate/Variant61720cdf8f5b2df37106da0ec105c398203f5a4453ff3e5f9850e2e94cda6f97.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97e256f8fa2cefc84ef7388743e9e8c7a712fba6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
