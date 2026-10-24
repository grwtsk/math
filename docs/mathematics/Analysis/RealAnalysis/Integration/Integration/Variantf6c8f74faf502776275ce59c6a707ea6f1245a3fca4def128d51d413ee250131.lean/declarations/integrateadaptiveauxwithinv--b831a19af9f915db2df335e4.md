# integrateAdaptiveAuxWithInv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9a31f2ac482d10544ef6814c451ccc9992ac7d328311e60fc5eae49fb85f1363",
  "kind": "def",
  "lexical_name": "integrateAdaptiveAuxWithInv",
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
  "slug": "integrateadaptiveauxwithinv--b831a19af9f915db2df335e4",
  "source": {
    "blob": "3b7d4c1861f6e1e2bb0a88ec270b0b892d196bec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 531,
    "line": 502,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b831a19af9f915db2df335e4bc3829cc418f4c827248f7e9565935669b36a0e7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9a31f2ac482d10544ef6814c451ccc9992ac7d328311e60fc5eae49fb85f1363`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 502–531.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def integrateAdaptiveAuxWithInv (e : Expr) (I : IntervalRat) (tol : ℚ)
    (maxDepth : ℕ) : Option AdaptiveResultWithInv :=
  match maxDepth with
  | 0 =>
    -- Base case: return the best bound we can compute
    match integrateRefinedWithInv e I with
    | some refined => some { bound := refined, partitions := 2 }
    | none => none
  | n + 1 =>
    match integrateRefinedWithInv e I with
    | none => none
    | some refined =>
      if adaptiveErrorEstimate refined ≤ tol then
        -- Error is acceptable, return
        some { bound := refined, partitions := 2 }
      else
        -- Subdivide and recurse
        let (I₁, I₂) := splitMid I
        let localTol := tol / 2  -- Split tolerance between halves
        match integrateAdaptiveAuxWithInv e I₁ localTol n,
              integrateAdaptiveAuxWithInv e I₂ localTol n with
        | some r₁, some r₂ =>
          some {
            bound := IntervalRat.add r₁.bound r₂.bound
            partitions := r₁.partitions + r₂.partitions
          }
        | _, _ => none

/-- Adaptive integration with inverse support and error tolerance.
    Keeps subdividing until the uncertainty is below `tol`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integration/Variantf6c8f74faf502776275ce59c6a707ea6f1245a3fca4def128d51d413ee250131.lean#L502).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b7d4c1861f6e1e2bb0a88ec270b0b892d196bec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
