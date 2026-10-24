# padicValNat_eq_maxPowDiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ac21fbab0aa34b0a51d52debfe38991c2ab95683",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 95,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b9d7234d345045a6ffc18e5b2140421069f67f263b87c5c79bd61cef68806e01.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9096525f-5f23-1beb-062d-7ffe726ba312",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5f727104-9e85-4c1c-1e81-741cb6461d5f",
  "kind": "theorem",
  "lexical_name": "padicValNat_eq_maxPowDiv",
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
  "slug": "padicvalnat-eq-maxpowdiv--067082a66cb21bab5b656b0e",
  "source": {
    "blob": "ac21fbab0aa34b0a51d52debfe38991c2ab95683",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 95,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Basic/Variantb9d7234d345045a6ffc18e5b2140421069f67f263b87c5c79bd61cef68806e01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:067082a66cb21bab5b656b0e0b943d90fd66a7213c0d561b470c1ccb1b594554",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Basic/Variantb9d7234d345045a6ffc18e5b2140421069f67f263b87c5c79bd61cef68806e01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f727104-9e85-4c1c-1e81-741cb6461d5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem padicValNat_eq_maxPowDiv : @padicValNat = @maxPowDiv := by
  ext p n
  by_cases h : 1 < p ∧ 0 < n
  · rw [padicValNat_def' h.1.ne' h.2, maxPowDiv_eq_multiplicity h.1 h.2]
    exact Nat.finiteMultiplicity_iff.2 ⟨h.1.ne', h.2⟩
  · simp only [not_and_or,not_gt_eq,Nat.le_zero] at h
    apply h.elim
    · intro h
      interval_cases p
      · simp [Classical.em]
      · dsimp [padicValNat, maxPowDiv]
        rw [go, if_neg]; simp
    · intro h
      simp [h]

end padicValNat

/-- For `p ≠ 1`, the `p`-adic valuation of an integer `z ≠ 0` is the largest natural number `k` such
that `p^k` divides `z`. If `x = 0` or `p = 1`, then `padicValInt p q` defaults to `0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Basic/Variantb9d7234d345045a6ffc18e5b2140421069f67f263b87c5c79bd61cef68806e01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Basic/Variantb9d7234d345045a6ffc18e5b2140421069f67f263b87c5c79bd61cef68806e01.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac21fbab0aa34b0a51d52debfe38991c2ab95683` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
