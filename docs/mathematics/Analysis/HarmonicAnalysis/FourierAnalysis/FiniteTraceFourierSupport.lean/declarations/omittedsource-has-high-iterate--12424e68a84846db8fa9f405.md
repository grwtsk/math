# omittedSource_has_high_iterate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e61f88e5-131d-7d0f-a6df-bfb2891c2e38",
  "kind": "theorem",
  "lexical_name": "omittedSource_has_high_iterate",
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
  "slug": "omittedsource-has-high-iterate--12424e68a84846db8fa9f405",
  "source": {
    "blob": "d5c485b8369274c85e67038702f0542fcaff6be3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 123,
    "path": "GRWTSK/Analysis/Fourier/FiniteTraceFourierSupport.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12424e68a84846db8fa9f405aee0f3961e8738d0fbdbc76d2a1a82c361e8f022",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTraceFourierSupport.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e61f88e5-131d-7d0f-a6df-bfb2891c2e38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem omittedSource_has_high_iterate
    (t : TraceShapedInput γ m) (K M : ℕ)
    (a : γ × ℕ) (ha : a ∈ omittedSources t K M) :
    a.1 ∈ t.primitiveCandidates ∧ K < a.2 ∧ a.2 ≤ M := by
  classical
  have hbig : a ∈ iterateSources t M := (Finset.mem_sdiff.mp ha).1
  have hnot : a ∉ iterateSources t K := (Finset.mem_sdiff.mp ha).2
  rcases (mem_iterateSources_iff t M a).mp hbig with
    ⟨hsource, hlow, hhigh⟩
  have hstrict : K < a.2 := by
    by_contra hn
    have hsmall : a.2 ≤ K := Nat.le_of_not_gt hn
    have hmem : a ∈ iterateSources t K :=
      (mem_iterateSources_iff t K a).mpr ⟨hsource, hlow, hsmall⟩
    exact hnot hmem
  exact ⟨hsource, hstrict, hhigh⟩

/-- Uniform radius + length-floor hypotheses discharge the explicit
per-omitted-source Fourier zero premise required by the parent theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTraceFourierSupport.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/FiniteTraceFourierSupport.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5c485b8369274c85e67038702f0542fcaff6be3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
