# isClopen_ball

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5074b419-fb0d-2e15-9452-049c97d0e786",
  "kind": "theorem",
  "lexical_name": "isClopen_ball",
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
  "slug": "isclopen-ball--580bcb22f35fe6f1fc42c4a5",
  "source": {
    "blob": "ee5cb3374d52aa7bd6382a24270bcde5a8136ea2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 185,
    "path": "GRWTSK/Topology/GeneralTopology/ValuationTopology/Variant1b8ce74f91de5f2db669b0f8ce209bfe84e1bb4581ffe4f351bdd08477ba94f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:580bcb22f35fe6f1fc42c4a53f365f5846e7592e19d66119ac49e1c629e9edfa",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ValuationTopology/Variant1b8ce74f91de5f2db669b0f8ce209bfe84e1bb4581ffe4f351bdd08477ba94f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5074b419-fb0d-2e15-9452-049c97d0e786`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isClopen_ball (r : Γ₀) : IsClopen (X := R) {x | v x < r} :=
  ⟨isClosed_ball _ _, isOpen_ball _ _⟩

/-- A closed ball centred at the origin in a valued ring is open. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ValuationTopology/Variant1b8ce74f91de5f2db669b0f8ce209bfe84e1bb4581ffe4f351bdd08477ba94f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ValuationTopology/Variant1b8ce74f91de5f2db669b0f8ce209bfe84e1bb4581ffe4f351bdd08477ba94f1.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee5cb3374d52aa7bd6382a24270bcde5a8136ea2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
