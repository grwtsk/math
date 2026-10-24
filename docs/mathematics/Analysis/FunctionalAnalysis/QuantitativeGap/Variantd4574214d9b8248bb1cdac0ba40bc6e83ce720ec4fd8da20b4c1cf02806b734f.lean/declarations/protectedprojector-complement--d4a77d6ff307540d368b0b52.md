# ProtectedProjector.complement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b90a8c5aab5f58c06b692880bf14ef411a780ee26c3594b35861f6e98293cf3b",
  "kind": "def",
  "lexical_name": "ProtectedProjector.complement",
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
  "slug": "protectedprojector-complement--d4a77d6ff307540d368b0b52",
  "source": {
    "blob": "97867e58b4153ead19a3f1daf3b3f724ba87f6b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 42,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/QuantitativeGap/Variantd4574214d9b8248bb1cdac0ba40bc6e83ce720ec4fd8da20b4c1cf02806b734f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d4a77d6ff307540d368b0b527098ad1d67db50ad748ca9d8d446291156fe0b64",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/QuantitativeGap/Variantd4574214d9b8248bb1cdac0ba40bc6e83ce720ec4fd8da20b4c1cf02806b734f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b90a8c5aab5f58c06b692880bf14ef411a780ee26c3594b35861f6e98293cf3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ProtectedProjector.complement (P : ProtectedProjector (𝕜 := 𝕜) V) : V →L[𝕜] V :=
  ContinuousLinearMap.id 𝕜 V - P.projection

/-- Quadratic coercivity on the explicitly supported domain, with its actual norm. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/QuantitativeGap/Variantd4574214d9b8248bb1cdac0ba40bc6e83ce720ec4fd8da20b4c1cf02806b734f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/QuantitativeGap/Variantd4574214d9b8248bb1cdac0ba40bc6e83ce720ec4fd8da20b4c1cf02806b734f.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97867e58b4153ead19a3f1daf3b3f724ba87f6b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
