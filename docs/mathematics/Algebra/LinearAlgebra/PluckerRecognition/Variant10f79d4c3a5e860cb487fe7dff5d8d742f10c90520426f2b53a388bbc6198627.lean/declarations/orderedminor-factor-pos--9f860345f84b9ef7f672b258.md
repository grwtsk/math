# orderedMinor_factor_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b1cfeb2-80f6-4e49-96f6-ea554c2a5f8b",
  "kind": "theorem",
  "lexical_name": "orderedMinor_factor_pos",
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
  "slug": "orderedminor-factor-pos--9f860345f84b9ef7f672b258",
  "source": {
    "blob": "37a1b34085d659e2813b33f42480249da509c856",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 179,
    "path": "GRWTSK/Algebra/LinearAlgebra/PluckerRecognition/Variant10f79d4c3a5e860cb487fe7dff5d8d742f10c90520426f2b53a388bbc6198627.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f860345f84b9ef7f672b2583e52f45d143167a16a9bfc6e1901715fd4e90a15",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PluckerRecognition/Variant10f79d4c3a5e860cb487fe7dff5d8d742f10c90520426f2b53a388bbc6198627.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b1cfeb2-80f6-4e49-96f6-ea554c2a5f8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orderedMinor_factor_pos (A B : Matrix (Fin k) (Fin n) ℝ)
    (hA : A.rank = k) (hAn : AllOrderedMinorsNonneg A) (hBn : AllOrderedMinorsNonneg B)
    (t : ℝ) (ht : t ≠ 0)
    (hp : ∀ I : Fin k ↪o Fin n, orderedMinor B I = t * orderedMinor A I) : 0 < t := by
  obtain ⟨I, hI⟩ := exists_orderedMinor_pos_of_rank_nonneg A hA hAn
  have hB0 : orderedMinor B I ≠ 0 := by
    rw [hp I]
    exact mul_ne_zero ht (ne_of_gt hI)
  have hBpos : 0 < orderedMinor B I := lt_of_le_of_ne (hBn I) (Ne.symm hB0)
  rw [hp I] at hBpos
  exact (mul_pos_iff_of_pos_right hI).mp hBpos

/-- Nonnegative representatives admit recognition with a positive projective factor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PluckerRecognition/Variant10f79d4c3a5e860cb487fe7dff5d8d742f10c90520426f2b53a388bbc6198627.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PluckerRecognition/Variant10f79d4c3a5e860cb487fe7dff5d8d742f10c90520426f2b53a388bbc6198627.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37a1b34085d659e2813b33f42480249da509c856` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
