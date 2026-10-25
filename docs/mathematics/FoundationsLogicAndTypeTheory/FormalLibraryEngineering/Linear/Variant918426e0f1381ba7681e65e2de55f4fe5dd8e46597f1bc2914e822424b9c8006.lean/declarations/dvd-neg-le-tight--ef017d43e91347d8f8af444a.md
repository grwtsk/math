# dvd_neg_le_tight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f18635d-8e91-4692-6af5-02954394715b",
  "kind": "theorem",
  "lexical_name": "dvd_neg_le_tight",
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
  "slug": "dvd-neg-le-tight--ef017d43e91347d8f8af444a",
  "source": {
    "blob": "1e5d731a50a7d946997aeff81d9c755aabd23e7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1989,
    "line": 1969,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Variant918426e0f1381ba7681e65e2de55f4fe5dd8e46597f1bc2914e822424b9c8006.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef017d43e91347d8f8af444a3b2731cb3e0564a59a5991593297869ee5235125",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Variant918426e0f1381ba7681e65e2de55f4fe5dd8e46597f1bc2914e822424b9c8006.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f18635d-8e91-4692-6af5-02954394715b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1969–1989.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dvd_neg_le_tight (ctx : Context) (d : Int) (p₁ p₂ p₃ : Poly)
    : dvd_neg_le_tight_cert d p₁ p₂ p₃ → d ∣ p₁.denote' ctx → p₂.denote' ctx ≤ 0 → p₃.denote' ctx ≤ 0 := by
  simp only [dvd_neg_le_tight_cert, Poly.beq'_eq, Bool.and'_eq_and, Bool.and_eq_true,
             Int.blt'_eq_true, and_imp]
  generalize p₂.getConst = b₂
  intro hd _ _; subst p₂ p₃
  simp only [Poly.denote'_eq_denote, Int.reduceNeg, Poly.addConst_k_eq_addConst, Poly.denote_addConst, Poly.denote_mul, Poly.mul_k_eq_mul,
    Int.mul_add, Int.neg_mul, Int.one_mul, Int.mul_neg, Int.neg_neg, Int.add_comm, Int.add_assoc]
  intro h₁ h₂
  replace h₁ := Int.dvd_neg.mpr h₁
  have := eq_neg_addConst_add ctx (p₁.mul (-1))
  simp [Poly.mul_minus_one_getConst_eq] at this
  rw [← Int.add_assoc] at this
  rw [this] at h₁; clear this
  rw [← Int.add_assoc]
  revert h₁ h₂
  generalize -Poly.denote ctx p₁ + p₁.getConst = p
  generalize -p₁.getConst = b₁
  intro h₁ h₂; rw [Int.add_comm] at h₁
  exact dvd_le_tight' hd h₂ h₁

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Variant918426e0f1381ba7681e65e2de55f4fe5dd8e46597f1bc2914e822424b9c8006.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Variant918426e0f1381ba7681e65e2de55f4fe5dd8e46597f1bc2914e822424b9c8006.lean#L1969).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e5d731a50a7d946997aeff81d9c755aabd23e7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
