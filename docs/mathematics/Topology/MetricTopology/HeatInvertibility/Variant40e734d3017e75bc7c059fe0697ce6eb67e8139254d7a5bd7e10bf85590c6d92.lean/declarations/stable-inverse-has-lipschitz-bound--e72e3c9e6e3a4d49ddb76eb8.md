# stable_inverse_has_lipschitz_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:45dceda3-95e3-fa4a-215e-1d6581ab49d7",
  "kind": "theorem",
  "lexical_name": "stable_inverse_has_lipschitz_bound",
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
  "slug": "stable-inverse-has-lipschitz-bound--e72e3c9e6e3a4d49ddb76eb8",
  "source": {
    "blob": "cdef392d3f7f978c7c0641d8d55cfe5f4d8a6ac6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 91,
    "path": "GRWTSK/Topology/MetricTopology/HeatInvertibility/Variant40e734d3017e75bc7c059fe0697ce6eb67e8139254d7a5bd7e10bf85590c6d92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e72e3c9e6e3a4d49ddb76eb8811255afd8d4e1a56dbf11b1a8c3f7e8db7ac228",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/HeatInvertibility/Variant40e734d3017e75bc7c059fe0697ce6eb67e8139254d7a5bd7e10bf85590c6d92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45dceda3-95e3-fa4a-215e-1d6581ab49d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stable_inverse_has_lipschitz_bound
    {α : Type _}
    {dist : α → α → ℝ}
    {H : α → α}
    (S : StableInverse α dist H) :
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ x y, dist (S.inverse.inv x) (S.inverse.inv y) ≤ C * dist x y :=
  S.lipschitz

end HeatInvertibility
end Research
end Folder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/HeatInvertibility/Variant40e734d3017e75bc7c059fe0697ce6eb67e8139254d7a5bd7e10bf85590c6d92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/HeatInvertibility/Variant40e734d3017e75bc7c059fe0697ce6eb67e8139254d7a5bd7e10bf85590c6d92.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdef392d3f7f978c7c0641d8d55cfe5f4d8a6ac6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
