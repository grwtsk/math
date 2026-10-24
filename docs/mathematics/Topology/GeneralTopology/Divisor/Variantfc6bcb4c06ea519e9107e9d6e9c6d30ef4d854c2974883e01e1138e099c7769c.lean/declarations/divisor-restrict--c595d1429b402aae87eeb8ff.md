# divisor_restrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0f54275-65a3-ec55-86d3-e5eb0a9216f6",
  "kind": "theorem",
  "lexical_name": "divisor_restrict",
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
  "slug": "divisor-restrict--c595d1429b402aae87eeb8ff",
  "source": {
    "blob": "824ea46504d35fd685ad0d1248465079629a4041",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 447,
    "line": 439,
    "path": "GRWTSK/Topology/GeneralTopology/Divisor/Variantfc6bcb4c06ea519e9107e9d6e9c6d30ef4d854c2974883e01e1138e099c7769c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c595d1429b402aae87eeb8ff8cc4b9c67b1e9af9cb17811a8e88e47acf3c415d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Divisor/Variantfc6bcb4c06ea519e9107e9d6e9c6d30ef4d854c2974883e01e1138e099c7769c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0f54275-65a3-ec55-86d3-e5eb0a9216f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 439–447.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem divisor_restrict {f : 𝕜 → E} {V : Set 𝕜} (hf : MeromorphicOn f U) (hV : V ⊆ U) :
    (divisor f U).restrict hV = divisor f V := by
  ext x
  by_cases hx : x ∈ V
  · rw [Function.locallyFinsuppWithin.restrict_apply]
    simp [hf, hx, hf.mono_set hV, hV hx]
  · simp [hx]

/-- Adding an analytic function to a meromorphic one does not change the pole divisor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Divisor/Variantfc6bcb4c06ea519e9107e9d6e9c6d30ef4d854c2974883e01e1138e099c7769c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Divisor/Variantfc6bcb4c06ea519e9107e9d6e9c6d30ef4d854c2974883e01e1138e099c7769c.lean#L439).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `824ea46504d35fd685ad0d1248465079629a4041` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
