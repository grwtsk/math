# Nat.add_choose_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d8af2d7-98a3-9f5e-170f-7a9c2308945f",
  "kind": "theorem",
  "lexical_name": "Nat.add_choose_eq",
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
  "slug": "nat-add-choose-eq--6d361aab9d7067adadb1d1f9",
  "source": {
    "blob": "56fb77c01f63c9641fea128ddf2d7cfd8e89e0bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 33,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Vandermonde/Variant423c304aac6b2272979be89fe9ff69778b82de16d165ccf979b0e63a5e59d813.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d361aab9d7067adadb1d1f9606f42e4b0a7e49379c2d9c388229c532625795f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Vandermonde/Variant423c304aac6b2272979be89fe9ff69778b82de16d165ccf979b0e63a5e59d813.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d8af2d7-98a3-9f5e-170f-7a9c2308945f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Nat.add_choose_eq (m n k : ℕ) :
    (m + n).choose k = ∑ ij ∈ antidiagonal k, m.choose ij.1 * n.choose ij.2 := by
  calc
    (m + n).choose k = ((X + 1) ^ (m + n)).coeff k := by rw [coeff_X_add_one_pow, Nat.cast_id]
    _ = ((X + 1) ^ m * (X + 1) ^ n).coeff k := by rw [pow_add]
    _ = ∑ ij ∈ antidiagonal k, m.choose ij.1 * n.choose ij.2 := by
      rw [coeff_mul, Finset.sum_congr rfl]
      simp only [coeff_X_add_one_pow, Nat.cast_id, eq_self_iff_true, imp_true_iff]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Vandermonde/Variant423c304aac6b2272979be89fe9ff69778b82de16d165ccf979b0e63a5e59d813.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Vandermonde/Variant423c304aac6b2272979be89fe9ff69778b82de16d165ccf979b0e63a5e59d813.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56fb77c01f63c9641fea128ddf2d7cfd8e89e0bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
