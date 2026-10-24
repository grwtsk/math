# adjacent_normalized_count_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:761f1634-d1ac-aaf8-11ab-a71da4787a0c",
  "kind": "theorem",
  "lexical_name": "adjacent_normalized_count_error",
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
  "slug": "adjacent-normalized-count-error--ddc5fa0c9608856c732c81b2",
  "source": {
    "blob": "34190c193433b7b9fa7cd8c46beade45352fcd18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 185,
    "path": "GRWTSK/Spectral/DirichletCut.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ddc5fa0c9608856c732c81b2ede3ce1b942d84c2b936d8102394a82bf8e5f292",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/SpectralTheory/DirichletCut__SourceOccurrence8498a42b8c0488b69906dcd2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:761f1634-d1ac-aaf8-11ab-a71da4787a0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adjacent_normalized_count_error (N M : ℕ) (hN : 0 < N)
    (α V ξ : ℝ) (origin : ℤ) (E : ℝ) :
    |((sturmianCount N α V ξ origin E : ℝ) +
        (sturmianCount M α V ξ (origin+(N:ℤ)) E : ℝ)) / (N+M:ℕ) -
      sturmianNormalizedCount (N+M) α V ξ origin E| ≤ 2/(N+M:ℕ) := by
  rw [sturmianNormalizedCount, ← sub_div, abs_div]
  have hd : (0:ℝ) ≤ (N+M:ℕ) := Nat.cast_nonneg (N+M)
  rw [abs_of_nonneg hd]
  exact div_le_div_of_nonneg_right (adjacent_count_error N M hN α V ξ origin E)
    (Nat.cast_nonneg (N+M))

end GRWTSK.Spectral.DirichletCut
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/OperatorTheory/SpectralTheory/DirichletCut__SourceOccurrence8498a42b8c0488b69906dcd2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Spectral/DirichletCut.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34190c193433b7b9fa7cd8c46beade45352fcd18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
