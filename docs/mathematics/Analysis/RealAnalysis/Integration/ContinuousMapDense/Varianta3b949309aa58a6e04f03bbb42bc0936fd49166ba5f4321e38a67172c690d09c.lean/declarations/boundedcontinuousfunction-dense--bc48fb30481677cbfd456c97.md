# boundedContinuousFunction_dense

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d45c37af-8585-c1a2-dd63-9cf78c3863be",
  "kind": "theorem",
  "lexical_name": "boundedContinuousFunction_dense",
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
  "slug": "boundedcontinuousfunction-dense--bc48fb30481677cbfd456c97",
  "source": {
    "blob": "6f9314d96a4772d2d1c73d905b258e0224bbe81a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 353,
    "line": 342,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ContinuousMapDense/Varianta3b949309aa58a6e04f03bbb42bc0936fd49166ba5f4321e38a67172c690d09c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc48fb30481677cbfd456c97262605dda8767bc2cf1f482bb1669b116e0ae832",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ContinuousMapDense/Varianta3b949309aa58a6e04f03bbb42bc0936fd49166ba5f4321e38a67172c690d09c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d45c37af-8585-c1a2-dd63-9cf78c3863be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 342–353.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundedContinuousFunction_dense [SecondCountableTopologyEither α E] [Fact (1 ≤ p)]
    (hp : p ≠ ∞) [μ.WeaklyRegular] :
    Dense (boundedContinuousFunction E p μ : Set (Lp E p μ)) := by
  intro f
  refine (mem_closure_iff_nhds_basis EMetric.nhds_basis_closed_eball).2 fun ε hε ↦ ?_
  obtain ⟨g, hg, g_mem⟩ :
      ∃ g : α →ᵇ E, eLpNorm ((f : α → E) - (g : α → E)) p μ ≤ ε ∧ MemLp g p μ :=
    (Lp.memLp f).exists_boundedContinuous_eLpNorm_sub_le hp hε.ne'
  refine ⟨g_mem.toLp _, ⟨g, rfl⟩, ?_⟩
  rwa [EMetric.mem_closedBall', ← Lp.toLp_coeFn f (Lp.memLp f), Lp.edist_toLp_toLp]

/-- A function in `Lp` can be approximated in `Lp` by continuous functions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ContinuousMapDense/Varianta3b949309aa58a6e04f03bbb42bc0936fd49166ba5f4321e38a67172c690d09c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ContinuousMapDense/Varianta3b949309aa58a6e04f03bbb42bc0936fd49166ba5f4321e38a67172c690d09c.lean#L342).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f9314d96a4772d2d1c73d905b258e0224bbe81a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
