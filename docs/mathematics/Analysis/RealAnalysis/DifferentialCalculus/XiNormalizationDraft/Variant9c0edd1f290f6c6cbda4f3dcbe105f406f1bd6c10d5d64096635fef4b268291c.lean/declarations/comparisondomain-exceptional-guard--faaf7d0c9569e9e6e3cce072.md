# comparisonDomain_exceptional_guard

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ae2c8eba-4523-419d-e81c-4f7df295954b",
  "kind": "theorem",
  "lexical_name": "comparisonDomain_exceptional_guard",
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
  "slug": "comparisondomain-exceptional-guard--faaf7d0c9569e9e6e3cce072",
  "source": {
    "blob": "1b3b1cdda7f876cdbc4da80c28df249949af5b70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 42,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variant9c0edd1f290f6c6cbda4f3dcbe105f406f1bd6c10d5d64096635fef4b268291c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:faaf7d0c9569e9e6e3cce072a603c83b776106693c779f8c9561d6b11a3bb129",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variant9c0edd1f290f6c6cbda4f3dcbe105f406f1bd6c10d5d64096635fef4b268291c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae2c8eba-4523-419d-e81c-4f7df295954b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comparisonDomain_exceptional_guard {s : ℂ} :
    s ∈ comparisonDomain ↔ s ≠ 1 ∧ ∀ n : ℕ, s ≠ -(2 * (n : ℂ)) := by
  constructor
  · intro hs
    refine ⟨hs.2.1, ?_⟩
    intro n hn
    exact hs.2.2 (Gammaℝ_eq_zero_iff.mpr ⟨n, hn⟩)
  · rintro ⟨h1, hg⟩
    refine ⟨?_, h1, ?_⟩
    · simpa using hg 0
    · rw [Ne, Gammaℝ_eq_zero_iff]
      rintro ⟨n, hn⟩
      exact hg n hn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variant9c0edd1f290f6c6cbda4f3dcbe105f406f1bd6c10d5d64096635fef4b268291c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variant9c0edd1f290f6c6cbda4f3dcbe105f406f1bd6c10d5d64096635fef4b268291c.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b3b1cdda7f876cdbc4da80c28df249949af5b70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
