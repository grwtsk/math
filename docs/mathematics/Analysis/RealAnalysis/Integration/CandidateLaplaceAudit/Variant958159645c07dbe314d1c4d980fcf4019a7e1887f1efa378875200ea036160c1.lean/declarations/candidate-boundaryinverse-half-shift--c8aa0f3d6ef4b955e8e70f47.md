# candidate_boundaryInverse_half_shift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "54d273abe964b991f54fb1f7b66b85e49d82f1ca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 263,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/95/958159645c07dbe314d1c4d980fcf4019a7e1887f1efa378875200ea036160c1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:963bab0b-9c8c-087b-19c6-f886e986efa2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8bde6dec-92cb-989f-1d57-5d2911f33352",
  "kind": "theorem",
  "lexical_name": "candidate_boundaryInverse_half_shift",
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
  "slug": "candidate-boundaryinverse-half-shift--c8aa0f3d6ef4b955e8e70f47",
  "source": {
    "blob": "54d273abe964b991f54fb1f7b66b85e49d82f1ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 263,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CandidateLaplaceAudit/Variant958159645c07dbe314d1c4d980fcf4019a7e1887f1efa378875200ea036160c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8aa0f3d6ef4b955e8e70f47f34b38949158eae170044467125f8758e1b49972",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CandidateLaplaceAudit/Variant958159645c07dbe314d1c4d980fcf4019a7e1887f1efa378875200ea036160c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8bde6dec-92cb-989f-1d57-5d2911f33352`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem candidate_boundaryInverse_half_shift (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) (x : ℝ) :
    boundaryInverse (candidate X ε h) x = (Real.exp (-(ε / 2) * x) : ℂ) *
      boundaryInverse (candidate X (ε / 2) h) x := by
  have he := candidate_boundaryInverse_shift X hX (ε / 2) h (by positivity) hh hh1
    (ε / 2) (by positivity) x
  have hεid : ε / 2 + ε / 2 = ε := by ring
  rw [hεid] at he
  rw [he]
  have hmul : (Real.exp (-(ε / 2) * x) : ℂ) * (Real.exp (x * (ε / 2)) : ℂ) = 1 := by
    rw [← Complex.ofReal_mul, ← Real.exp_add]
    ring_nf
    simp
  rw [← mul_assoc, hmul, one_mul]

/-- Every actual inverse has a genuine exponential bound, uniformly over the whole time axis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CandidateLaplaceAudit/Variant958159645c07dbe314d1c4d980fcf4019a7e1887f1efa378875200ea036160c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CandidateLaplaceAudit/Variant958159645c07dbe314d1c4d980fcf4019a7e1887f1efa378875200ea036160c1.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54d273abe964b991f54fb1f7b66b85e49d82f1ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
