# eventuallyEq_nhdsWithin_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a52c080-dd4c-757d-efd9-06e281ce9452",
  "kind": "theorem",
  "lexical_name": "eventuallyEq_nhdsWithin_iff",
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
  "slug": "eventuallyeq-nhdswithin-iff--d000759ff43c7a5fbeb203c6",
  "source": {
    "blob": "b562cfb3898fd3638a705f73eccde11a69ca0783",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 455,
    "line": 450,
    "path": "GRWTSK/Topology/GeneralTopology/NhdsWithin/Variant95b616bfa166bf1d7860d38c06e3185520ca4c94185961581b95995cc0947e33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d000759ff43c7a5fbeb203c6f6ee09bf6a9b8fb8387b98bd320bf0d764ebacf4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NhdsWithin/Variant95b616bfa166bf1d7860d38c06e3185520ca4c94185961581b95995cc0947e33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a52c080-dd4c-757d-efd9-06e281ce9452`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 450–455.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventuallyEq_nhdsWithin_iff {f g : α → β} {s : Set α} {a : α} :
    f =ᶠ[𝓝[s] a] g ↔ ∀ᶠ x in 𝓝 a, x ∈ s → f x = g x :=
  mem_inf_principal

/-- Two functions agree on a neighborhood of `x` if they agree at `x` and in a punctured
neighborhood. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NhdsWithin/Variant95b616bfa166bf1d7860d38c06e3185520ca4c94185961581b95995cc0947e33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NhdsWithin/Variant95b616bfa166bf1d7860d38c06e3185520ca4c94185961581b95995cc0947e33.lean#L450).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b562cfb3898fd3638a705f73eccde11a69ca0783` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
