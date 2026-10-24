# divisor_canonicalFactor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:94ff760a-11cb-5bc8-b29f-065dd16a5268",
  "kind": "theorem",
  "lexical_name": "divisor_canonicalFactor",
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
  "slug": "divisor-canonicalfactor--ed092316eb8f228d69cd1221",
  "source": {
    "blob": "363bc7fdb88c837c745e0b26a1cdb8c8bec3923d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 203,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant9219caa697757ef70a613721eb771e9d3cba39dab5b8f3cb29f3c42fdeae5239.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed092316eb8f228d69cd122173009663ecb3105a8765e8a4c96e36ee8a7deffc",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant9219caa697757ef70a613721eb771e9d3cba39dab5b8f3cb29f3c42fdeae5239.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94ff760a-11cb-5bc8-b29f-065dd16a5268`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem divisor_canonicalFactor (hw : w ∈ ball 0 R) :
    MeromorphicOn.divisor (canonicalFactor R w) (ball 0 R)
      = -(Function.locallyFinsuppWithin.single w 1).restrict (Set.subset_univ (ball 0 R)) := by
  ext z
  by_cases hz : z ∈ ball 0 R
  · rw [MeromorphicOn.divisor_apply
      (fun z hz ↦ meromorphic_canonicalFactor R w z) hz]
    obtain (rfl | h₂z) := eq_or_ne z w
    · rw [meromorphicOrderAt_canonicalFactor hz]
      simp_all [Function.locallyFinsuppWithin.restrict_apply]
    · have : meromorphicOrderAt (canonicalFactor R w) z = 0 := by
        rw [(meromorphicNFOn_canonicalFactor hw (Set.mem_univ z)).meromorphicOrderAt_eq_zero_iff]
        exact canonicalFactor_ne_zero hw (ball_subset_closedBall hz) h₂z
      simp [this, h₂z, Function.locallyFinsuppWithin.restrict_apply, hz]
  · simp_all

/-!
## Canonical Decomposition

The canonical decomposition theorem shows that a meromorphic function `f` on a disk is equal, up to
modification over a discrete set, to a product of canonical factors and a meromorphic function `g`
without zeros or poles in the interior of the disk.

To simplify notation and avoid repetition, we introduce a structure, `CanonicalDecomp`, that bundles
the conclusions of the decomposition theorem.
-/

variable
  {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
  {R : ℝ} {c w : ℂ}
  {f g : ℂ → E}

/--
Given functions `f`, `g` and a real number `R`, the following convenience structure packs the
information relevant in the canonical decomposition.  The condition "`g` is without zeros or poles"
is formulated by saying that `g` is meromorphic in normal form and `g ≠ 0`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant9219caa697757ef70a613721eb771e9d3cba39dab5b8f3cb29f3c42fdeae5239.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant9219caa697757ef70a613721eb771e9d3cba39dab5b8f3cb29f3c42fdeae5239.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `363bc7fdb88c837c745e0b26a1cdb8c8bec3923d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
