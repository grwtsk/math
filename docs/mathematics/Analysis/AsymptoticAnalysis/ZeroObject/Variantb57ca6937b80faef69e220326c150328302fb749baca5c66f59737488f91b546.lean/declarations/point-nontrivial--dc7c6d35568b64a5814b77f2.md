# point_nontrivial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:16b2aacd-7459-8d97-1109-c5e98bbc8cab",
  "kind": "theorem",
  "lexical_name": "point_nontrivial",
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
  "slug": "point-nontrivial--dc7c6d35568b64a5814b77f2",
  "source": {
    "blob": "3bb6eb323e9eb5aaf484441e81250e2e4cffad7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 128,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc7c6d35568b64a5814b77f24ebf3b4026070afdeea76c1f4e1673f1f1f51467",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16b2aacd-7459-8d97-1109-c5e98bbc8cab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem point_nontrivial (ρ : ZeroPoint) :
    FormalResearch.RiemannHypothesis.NontrivialZetaZero ρ.val := by
  refine ⟨ρ.property.1, ?_, ?_⟩
  · rintro ⟨n, hn⟩
    have hr := congrArg Complex.re hn
    have hn0 : (0 : ℝ) ≤ n := Nat.cast_nonneg n
    simp at hr
    linarith [ρ.property.2.1]
  · intro h
    have hlt := ρ.property.2.2
    rw [h] at hlt
    norm_num at hlt

/-- The natural analytic zero order. Finiteness and positivity are proved separately below. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3bb6eb323e9eb5aaf484441e81250e2e4cffad7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
