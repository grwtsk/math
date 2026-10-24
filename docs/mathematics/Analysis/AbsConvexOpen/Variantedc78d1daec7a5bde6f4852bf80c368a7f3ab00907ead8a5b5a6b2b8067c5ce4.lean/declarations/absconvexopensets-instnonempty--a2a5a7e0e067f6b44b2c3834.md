# AbsConvexOpenSets.instNonempty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:268961c338eaddd82a8267b9cefd5a95d170d9344940d99f49f86890e6a87e73",
  "kind": "instance",
  "lexical_name": "AbsConvexOpenSets.instNonempty",
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
  "slug": "absconvexopensets-instnonempty--a2a5a7e0e067f6b44b2c3834",
  "source": {
    "blob": "f7be3f55ba9e565f20042953e5f54acfaccd7e94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 71,
    "path": "GRWTSK/Analysis/AbsConvexOpen/Variantedc78d1daec7a5bde6f4852bf80c368a7f3ab00907ead8a5b5a6b2b8067c5ce4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a2a5a7e0e067f6b44b2c38346a4dec6cf70ea345b5f5a9f8633cab0245079865",
  "verification": {
    "reference": "docs/verification/Analysis/AbsConvexOpen/Variantedc78d1daec7a5bde6f4852bf80c368a7f3ab00907ead8a5b5a6b2b8067c5ce4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:268961c338eaddd82a8267b9cefd5a95d170d9344940d99f49f86890e6a87e73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance AbsConvexOpenSets.instNonempty : Nonempty (AbsConvexOpenSets 𝕜 E) := by
  rw [← exists_true_iff_nonempty]
  dsimp only [AbsConvexOpenSets]
  rw [Subtype.exists]
  exact ⟨Set.univ, ⟨mem_univ 0, isOpen_univ, balanced_univ, convex_univ⟩, trivial⟩

end AbsolutelyConvexSets

variable [RCLike 𝕜]
variable [AddCommGroup E] [TopologicalSpace E]
variable [Module 𝕜 E] [Module ℝ E] [IsScalarTower ℝ 𝕜 E]
variable [ContinuousSMul ℝ E]
variable (𝕜 E)

/-- The family of seminorms defined by the gauges of absolute convex open sets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AbsConvexOpen/Variantedc78d1daec7a5bde6f4852bf80c368a7f3ab00907ead8a5b5a6b2b8067c5ce4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AbsConvexOpen/Variantedc78d1daec7a5bde6f4852bf80c368a7f3ab00907ead8a5b5a6b2b8067c5ce4.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7be3f55ba9e565f20042953e5f54acfaccd7e94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
