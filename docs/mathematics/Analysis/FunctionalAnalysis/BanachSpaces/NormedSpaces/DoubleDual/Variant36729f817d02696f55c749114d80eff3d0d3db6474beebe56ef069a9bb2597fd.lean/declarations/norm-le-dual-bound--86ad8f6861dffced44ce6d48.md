# norm_le_dual_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:26afbd33-4c38-4b1a-0d54-8bd0ca30bef4",
  "kind": "theorem",
  "lexical_name": "norm_le_dual_bound",
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
  "slug": "norm-le-dual-bound--86ad8f6861dffced44ce6d48",
  "source": {
    "blob": "954f1c4a54d2874dd1e485e71607fdc13b59a6a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 105,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DoubleDual/Variant36729f817d02696f55c749114d80eff3d0d3db6474beebe56ef069a9bb2597fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86ad8f6861dffced44ce6d48491853aadc107ee57220b166fe4f11b65c3fd399",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DoubleDual/Variant36729f817d02696f55c749114d80eff3d0d3db6474beebe56ef069a9bb2597fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26afbd33-4c38-4b1a-0d54-8bd0ca30bef4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_le_dual_bound (x : E) {M : ℝ} (hMp : 0 ≤ M)
    (hM : ∀ f : StrongDual 𝕜 E, ‖f x‖ ≤ M * ‖f‖) : ‖x‖ ≤ M := by
  rw [← (inclusionInDoubleDualLi (E := E) 𝕜).norm_map x]
  exact ContinuousLinearMap.opNorm_le_bound _ hMp hM

end Seminormed

end BidualIsometry

section Embedding

variable (𝕜 : Type*) [NontriviallyNormedField 𝕜]
variable (X : Type*) [SeminormedAddCommGroup X] [NormedSpace 𝕜 X]

/-- The map from a normed space with the weak topology into the weak-star bidual, as a continuous
linear map. Built using `LinearEquiv.arrowCongr` to properly bundle the topology changes via
`toWeakSpace` and `StrongDual.toWeakDual`. -/
@[simps! -isSimp apply apply_apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DoubleDual/Variant36729f817d02696f55c749114d80eff3d0d3db6474beebe56ef069a9bb2597fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DoubleDual/Variant36729f817d02696f55c749114d80eff3d0d3db6474beebe56ef069a9bb2597fd.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `954f1c4a54d2874dd1e485e71607fdc13b59a6a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
