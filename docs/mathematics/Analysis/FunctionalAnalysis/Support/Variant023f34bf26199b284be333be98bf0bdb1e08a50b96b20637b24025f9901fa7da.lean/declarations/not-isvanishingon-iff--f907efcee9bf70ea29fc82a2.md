# not_isVanishingOn_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e0ff014b-e12c-2bf7-dbb1-a37f9bd117a7",
  "kind": "theorem",
  "lexical_name": "not_isVanishingOn_iff",
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
  "slug": "not-isvanishingon-iff--f907efcee9bf70ea29fc82a2",
  "source": {
    "blob": "15761e3d4cc1afb05b0a6b6704fcd6c1ffdf52d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 79,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Support/Variant023f34bf26199b284be333be98bf0bdb1e08a50b96b20637b24025f9901fa7da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f907efcee9bf70ea29fc82a259f489801e9e7c594e7d27b4a0b79dbadbc55f85",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Support/Variant023f34bf26199b284be333be98bf0bdb1e08a50b96b20637b24025f9901fa7da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0ff014b-e12c-2bf7-dbb1-a37f9bd117a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_isVanishingOn_iff :
    ¬ IsVanishingOn f s ↔ ∃ u : F, tsupport u ⊆ s ∧ f u ≠ 0 := by
  simp [IsVanishingOn]

end Zero

end IsVanishingOn

section dsupport

/-! ### Support -/

section Zero

variable [FunLike F α β] [TopologicalSpace α] [Zero β] [Zero V]

variable {f g : F → V} {s : Set α}

/-- The distributional support of `f` is the intersection of all closed sets `s` such that `f`
vanishes on the complement of `s`.

To make this definition work for all types of distributions, we define it for any function from
a `FunLike` type to a type with zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Support/Variant023f34bf26199b284be333be98bf0bdb1e08a50b96b20637b24025f9901fa7da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Support/Variant023f34bf26199b284be333be98bf0bdb1e08a50b96b20637b24025f9901fa7da.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15761e3d4cc1afb05b0a6b6704fcd6c1ffdf52d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
