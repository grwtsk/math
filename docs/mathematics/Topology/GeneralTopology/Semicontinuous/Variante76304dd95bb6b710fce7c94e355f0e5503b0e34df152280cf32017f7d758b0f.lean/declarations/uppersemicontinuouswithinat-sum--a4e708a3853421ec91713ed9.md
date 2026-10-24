# upperSemicontinuousWithinAt_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f8a1938f867d22ceac0c4eee6a95b759f91b45b4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 977,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e76304dd95bb6b710fce7c94e355f0e5503b0e34df152280cf32017f7d758b0f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b0e3e755-4424-144e-69f9-cae67e00939b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7a8c1afa-4d39-b3ba-7d6c-e724256b2f84",
  "kind": "theorem",
  "lexical_name": "upperSemicontinuousWithinAt_sum",
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
  "slug": "uppersemicontinuouswithinat-sum--a4e708a3853421ec91713ed9",
  "source": {
    "blob": "f8a1938f867d22ceac0c4eee6a95b759f91b45b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 981,
    "line": 977,
    "path": "GRWTSK/Topology/GeneralTopology/Semicontinuous/Variante76304dd95bb6b710fce7c94e355f0e5503b0e34df152280cf32017f7d758b0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4e708a3853421ec91713ed99433ed49c0b860436460e844e74d4d845923324e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Semicontinuous/Variante76304dd95bb6b710fce7c94e355f0e5503b0e34df152280cf32017f7d758b0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a8c1afa-4d39-b3ba-7d6c-e724256b2f84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 977–981.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem upperSemicontinuousWithinAt_sum {f : ι → α → γ} {a : Finset ι}
    (ha : ∀ i ∈ a, UpperSemicontinuousWithinAt (f i) s x) :
    UpperSemicontinuousWithinAt (fun z => ∑ i ∈ a, f i z) s x :=
  lowerSemicontinuousWithinAt_sum (γ := γᵒᵈ) ha

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Semicontinuous/Variante76304dd95bb6b710fce7c94e355f0e5503b0e34df152280cf32017f7d758b0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Semicontinuous/Variante76304dd95bb6b710fce7c94e355f0e5503b0e34df152280cf32017f7d758b0f.lean#L977).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8a1938f867d22ceac0c4eee6a95b759f91b45b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
