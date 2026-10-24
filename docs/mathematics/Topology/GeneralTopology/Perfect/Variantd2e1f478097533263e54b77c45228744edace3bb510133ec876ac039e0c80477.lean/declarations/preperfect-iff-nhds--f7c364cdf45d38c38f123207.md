# preperfect_iff_nhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32912a57-c82a-a865-6599-6392fc9a4fd2",
  "kind": "theorem",
  "lexical_name": "preperfect_iff_nhds",
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
  "slug": "preperfect-iff-nhds--f7c364cdf45d38c38f123207",
  "source": {
    "blob": "cf2191ec8dcca4ee9d086d594ffbbc28bc578870",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 97,
    "path": "GRWTSK/Topology/GeneralTopology/Perfect/Variantd2e1f478097533263e54b77c45228744edace3bb510133ec876ac039e0c80477.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7c364cdf45d38c38f1232077e98a07f6b08c22945d3e14e72df85b08d2be41f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Perfect/Variantd2e1f478097533263e54b77c45228744edace3bb510133ec876ac039e0c80477.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32912a57-c82a-a865-6599-6392fc9a4fd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem preperfect_iff_nhds : Preperfect C ↔ ∀ x ∈ C, ∀ U ∈ 𝓝 x, ∃ y ∈ U ∩ C, y ≠ x := by
  simp only [Preperfect, accPt_iff_nhds]

section PerfectSpace

variable (α)

/--
A topological space `X` is said to be perfect if its universe is a perfect set.
Equivalently, this means that `𝓝[≠] x ≠ ⊥` for every point `x : X`.
-/
@[mk_iff perfectSpace_def]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Perfect/Variantd2e1f478097533263e54b77c45228744edace3bb510133ec876ac039e0c80477.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Perfect/Variantd2e1f478097533263e54b77c45228744edace3bb510133ec876ac039e0c80477.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf2191ec8dcca4ee9d086d594ffbbc28bc578870` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
