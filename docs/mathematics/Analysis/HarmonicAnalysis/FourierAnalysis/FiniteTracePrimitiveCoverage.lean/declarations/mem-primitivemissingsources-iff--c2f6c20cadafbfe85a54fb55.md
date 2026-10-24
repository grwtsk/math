# mem_primitiveMissingSources_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:80feadee-c9c1-9d29-5540-fda5f079388f",
  "kind": "theorem",
  "lexical_name": "mem_primitiveMissingSources_iff",
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
  "slug": "mem-primitivemissingsources-iff--c2f6c20cadafbfe85a54fb55",
  "source": {
    "blob": "f5a4c670beb8dce56684d1af6473e2b68a71c495",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 103,
    "path": "GRWTSK/Analysis/Fourier/FiniteTracePrimitiveCoverage.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2f6c20cadafbfe85a54fb55288b2b0c8b71e2dcc910ba99fab0761f5d1c728a",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTracePrimitiveCoverage.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80feadee-c9c1-9d29-5540-fda5f079388f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_primitiveMissingSources_iff
    (t : TraceShapedInput γ m) (u : FinitePrimitiveUniverse t)
    (M : ℕ) (a : γ × ℕ) :
    a ∈ primitiveMissingSources t u M ↔
      a.1 ∈ u.allCandidates ∧ a.1 ∉ t.primitiveCandidates ∧
        1 ≤ a.2 ∧ a.2 ≤ M := by
  classical
  unfold primitiveMissingSources
  constructor
  · intro ha
    have hfull : a ∈ iterateSources (fullInput t u) M :=
      (Finset.mem_sdiff.mp ha).1
    have hnot : a ∉ iterateSources t M :=
      (Finset.mem_sdiff.mp ha).2
    rcases (mem_iterateSources_iff (fullInput t u) M a).mp hfull with
      ⟨hU, hn, hM⟩
    have hmiss : a.1 ∉ t.primitiveCandidates := by
      intro hs
      exact hnot ((mem_iterateSources_iff t M a).mpr ⟨hs, hn, hM⟩)
    exact ⟨hU, hmiss, hn, hM⟩
  · rintro ⟨hU, hmiss, hn, hM⟩
    apply Finset.mem_sdiff.mpr
    constructor
    · exact (mem_iterateSources_iff (fullInput t u) M a).mpr
        ⟨hU, hn, hM⟩
    · intro hsel
      exact hmiss ((mem_iterateSources_iff t M a).mp hsel).1

/-- The integer-homology-selected complex amplitude of omitted primitive
candidates, still at a FINITE positive iteration horizon. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTracePrimitiveCoverage.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/FiniteTracePrimitiveCoverage.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5a4c670beb8dce56684d1af6473e2b68a71c495` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
