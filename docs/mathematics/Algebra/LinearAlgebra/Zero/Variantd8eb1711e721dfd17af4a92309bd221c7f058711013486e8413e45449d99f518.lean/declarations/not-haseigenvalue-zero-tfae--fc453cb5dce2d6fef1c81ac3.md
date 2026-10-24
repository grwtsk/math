# not_hasEigenvalue_zero_tfae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:754ce1f2-5445-8a32-0980-7b9e73558bc8",
  "kind": "lemma",
  "lexical_name": "not_hasEigenvalue_zero_tfae",
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
  "slug": "not-haseigenvalue-zero-tfae--fc453cb5dce2d6fef1c81ac3",
  "source": {
    "blob": "4940665ab696f06f1926d25fc5e1b59b556fad89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 133,
    "path": "GRWTSK/Algebra/LinearAlgebra/Zero/Variantd8eb1711e721dfd17af4a92309bd221c7f058711013486e8413e45449d99f518.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc453cb5dce2d6fef1c81ac304d8333b42c95e958ef97cd7a18d845a49a8ae14",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Zero/Variantd8eb1711e721dfd17af4a92309bd221c7f058711013486e8413e45449d99f518.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:754ce1f2-5445-8a32-0980-7b9e73558bc8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma not_hasEigenvalue_zero_tfae (φ : Module.End K M) :
    List.TFAE [
      ¬ Module.End.HasEigenvalue φ 0,
      ¬ IsRoot (minpoly K φ) 0,
      constantCoeff φ.charpoly ≠ 0,
      LinearMap.det φ ≠ 0,
      ker φ = ⊥,
      ∀ (m : M), φ m = 0 → m = 0 ] := by
  have := (hasEigenvalue_zero_tfae φ).not
  dsimp only [List.map] at this
  push Not at this
  have aux₁ : ∀ m, (m ≠ 0 → φ m ≠ 0) ↔ (φ m = 0 → m = 0) := by intro m; apply not_imp_not
  have aux₂ : ker φ = ⊥ ↔ ¬ ⊥ < ker φ := by rw [bot_lt_iff_ne_bot, not_not]
  simpa only [aux₁, aux₂] using this

open Module.Free in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Zero/Variantd8eb1711e721dfd17af4a92309bd221c7f058711013486e8413e45449d99f518.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Zero/Variantd8eb1711e721dfd17af4a92309bd221c7f058711013486e8413e45449d99f518.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4940665ab696f06f1926d25fc5e1b59b556fad89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
