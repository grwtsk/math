# permanent_diagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a5a28280-3657-6be6-e9bd-beffe3724a59",
  "kind": "theorem",
  "lexical_name": "permanent_diagonal",
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
  "slug": "permanent-diagonal--99cebf8b0d12445ace2e05fe",
  "source": {
    "blob": "14084f0346a906fc6a9b4720ad236f9374d1ad10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 43,
    "path": "GRWTSK/Algebra/LinearAlgebra/Permanent/Variant990cf7719a0448942df3eed79a88a692f9dfa440c965900d98b1785a0a9e2906.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99cebf8b0d12445ace2e05fe7677478760586b8e1805fec828b0b8bc72a843eb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Permanent/Variant990cf7719a0448942df3eed79a88a692f9dfa440c965900d98b1785a0a9e2906.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5a28280-3657-6be6-e9bd-beffe3724a59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem permanent_diagonal {d : n → R} : permanent (diagonal d) = ∏ i, d i := by
  refine (sum_eq_single 1 (fun σ _ hσ ↦ ?_) (fun h ↦ (h <| mem_univ _).elim)).trans ?_
  · match not_forall.mp (mt Equiv.ext hσ) with
    | ⟨x, hx⟩ => exact Finset.prod_eq_zero (mem_univ x) (ite_eq_right hx)
  · simp only [Perm.one_apply, diagonal_apply_eq]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Permanent/Variant990cf7719a0448942df3eed79a88a692f9dfa440c965900d98b1785a0a9e2906.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Permanent/Variant990cf7719a0448942df3eed79a88a692f9dfa440c965900d98b1785a0a9e2906.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14084f0346a906fc6a9b4720ad236f9374d1ad10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
