# ContDiffWithinAt.fderivWithin_right_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9601a5ed-47e2-157a-1b28-0e65e2b3cf80",
  "kind": "theorem",
  "lexical_name": "ContDiffWithinAt.fderivWithin_right_apply",
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
  "slug": "contdiffwithinat-fderivwithin-right-apply--62e8ad718bad49dcb0963da6",
  "source": {
    "blob": "a9fc6815627d5c5ed3b37b5d7934a39587383857",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1222,
    "line": 1213,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantb31a6efd24c1add2e913804039b30c28e155dbe56c15b3b6d3ec3d1925826e55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62e8ad718bad49dcb0963da66c25fac1196f3371623a23f3eb56e5abaf0dd8a6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantb31a6efd24c1add2e913804039b30c28e155dbe56c15b3b6d3ec3d1925826e55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9601a5ed-47e2-157a-1b28-0e65e2b3cf80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1213–1222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContDiffWithinAt.fderivWithin_right_apply
    {f : F → G} {k : F → F} {s : Set F} {x₀ : F}
    (hf : ContDiffWithinAt 𝕜 n f s x₀) (hk : ContDiffWithinAt 𝕜 m k s x₀)
    (hs : UniqueDiffOn 𝕜 s) (hmn : m + 1 ≤ n) (hx₀s : x₀ ∈ s) :
    ContDiffWithinAt 𝕜 m (fun x => fderivWithin 𝕜 f s x (k x)) s x₀ :=
  ContDiffWithinAt.fderivWithin_apply
    (ContDiffWithinAt.comp (x₀, x₀) hf contDiffWithinAt_snd <| prod_subset_preimage_snd s s)
    contDiffWithinAt_id hk hs hmn hx₀s (by rw [preimage_id'])

-- TODO: can we make a version of `ContDiffWithinAt.fderivWithin` for iterated derivatives?
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantb31a6efd24c1add2e913804039b30c28e155dbe56c15b3b6d3ec3d1925826e55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantb31a6efd24c1add2e913804039b30c28e155dbe56c15b3b6d3ec3d1925826e55.lean#L1213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9fc6815627d5c5ed3b37b5d7934a39587383857` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
