# actualJet_covariant_eq_next

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:810b9175-47bd-0425-defe-bb703f9a52b8",
  "kind": "theorem",
  "lexical_name": "actualJet_covariant_eq_next",
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
  "slug": "actualjet-covariant-eq-next--2f1c58d23f6b4c78ee0febaa",
  "source": {
    "blob": "89ae989985424bde57c0b64a1898f0ea74dfee7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 72,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/A8ea7ce9952b9eecb34aSourceActualCovariantKernel/Variantf23b44b3ae4ea94c4863882e0d4bb9a89f919d250c42d3f344d208ae2e286208.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f1c58d23f6b4c78ee0febaa093f9769260ae03b990966885e14c9b04d9bf7e3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/A8ea7ce9952b9eecb34aSourceActualCovariantKernel/Variantf23b44b3ae4ea94c4863882e0d4bb9a89f919d250c42d3f344d208ae2e286208.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:810b9175-47bd-0425-defe-bb703f9a52b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem actualJet_covariant_eq_next (A : ℝ) (hA : 0 < A) (n : ℕ)
    (hn : n ≤ 2) (t s : ℝ) :
    covariantMixedDerivative (actualCovariantJet A n) t s =
      actualCovariantJet A (n + 2) t s := by
  have he : (fun y => deriv (fun x => actualCovariantJet A n x y) t -
      actualCovariantJet A n t y / 2) = actualCovariantJet A (n + 1) t := by
    funext y
    exact actualJet_twisted_time A hA n (by omega) t y
  unfold covariantMixedDerivative
  rw [he, actualJet_twisted_time A hA n (by omega) t s,
    (actualJet_log_hasDerivAt A hA (n + 1) (by omega) t s).deriv]
  simp only [actualCovariantJet, show n + 1 + 1 = n + 2 by omega]
  ring

/-- The zeroth independent jet is precisely the original actual logarithmic column. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/A8ea7ce9952b9eecb34aSourceActualCovariantKernel/Variantf23b44b3ae4ea94c4863882e0d4bb9a89f919d250c42d3f344d208ae2e286208.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/A8ea7ce9952b9eecb34aSourceActualCovariantKernel/Variantf23b44b3ae4ea94c4863882e0d4bb9a89f919d250c42d3f344d208ae2e286208.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89ae989985424bde57c0b64a1898f0ea74dfee7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
