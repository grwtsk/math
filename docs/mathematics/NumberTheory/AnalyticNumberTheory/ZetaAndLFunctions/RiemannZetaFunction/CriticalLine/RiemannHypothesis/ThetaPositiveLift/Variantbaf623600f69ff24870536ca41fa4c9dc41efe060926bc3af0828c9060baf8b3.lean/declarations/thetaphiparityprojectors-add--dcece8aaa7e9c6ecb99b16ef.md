# thetaPhiParityProjectors_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "27b60b3036398bca9c52507e2ac31dbcee301f74",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 77,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/baf623600f69ff24870536ca41fa4c9dc41efe060926bc3af0828c9060baf8b3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e56a2587-9f10-453c-b0d8-cc3f35d577fc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ed68c391-f863-edaf-1280-9c0f7b43cc0b",
  "kind": "theorem",
  "lexical_name": "thetaPhiParityProjectors_add",
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
  "slug": "thetaphiparityprojectors-add--dcece8aaa7e9c6ecb99b16ef",
  "source": {
    "blob": "27b60b3036398bca9c52507e2ac31dbcee301f74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 77,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantbaf623600f69ff24870536ca41fa4c9dc41efe060926bc3af0828c9060baf8b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dcece8aaa7e9c6ecb99b16eff5e6759e09c133c72627cb4bb78b72da0698e1e8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantbaf623600f69ff24870536ca41fa4c9dc41efe060926bc3af0828c9060baf8b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed68c391-f863-edaf-1280-9c0f7b43cc0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiParityProjectors_add
    (L : ℕ) :
    thetaPhiPositiveParityProjector L +
        thetaPhiNegativeParityProjector L =
      (1 : Matrix (Fin L) (Fin L) ℝ) := by
  ext i j
  by_cases hij : i = j
  · subst j
    rcases Nat.even_or_odd i.val with hi | hi
    · simp [thetaPhiPositiveParityProjector,
        thetaPhiNegativeParityProjector,
        hi, Nat.not_odd_iff_even.mpr hi]
    · have hneven : ¬ Even i.val :=
        Nat.not_even_iff_odd.mpr hi
      simp [thetaPhiPositiveParityProjector,
        thetaPhiNegativeParityProjector,
        hi, hneven]
  · simp [thetaPhiPositiveParityProjector,
      thetaPhiNegativeParityProjector, hij]

/-- Positive compression of the even-support projector to the whitened theta
Krylov frame. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantbaf623600f69ff24870536ca41fa4c9dc41efe060926bc3af0828c9060baf8b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantbaf623600f69ff24870536ca41fa4c9dc41efe060926bc3af0828c9060baf8b3.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27b60b3036398bca9c52507e2ac31dbcee301f74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
