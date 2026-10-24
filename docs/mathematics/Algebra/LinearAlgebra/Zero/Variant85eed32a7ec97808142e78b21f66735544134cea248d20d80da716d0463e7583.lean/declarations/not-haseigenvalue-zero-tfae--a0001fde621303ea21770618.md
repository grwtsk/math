# not_hasEigenvalue_zero_tfae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0251e0e0-3751-8c05-1045-b61da9659665",
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
  "slug": "not-haseigenvalue-zero-tfae--a0001fde621303ea21770618",
  "source": {
    "blob": "f1bf3d4ea13e2b706437d23157898ba4665dcfeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 129,
    "path": "GRWTSK/Algebra/LinearAlgebra/Zero/Variant85eed32a7ec97808142e78b21f66735544134cea248d20d80da716d0463e7583.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0001fde621303ea217706186ce4f07cc9ea56442ae3ec494407eabd75fb4b2d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Zero/Variant85eed32a7ec97808142e78b21f66735544134cea248d20d80da716d0463e7583.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0251e0e0-3751-8c05-1045-b61da9659665`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–144.

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
  push_neg at this
  have aux₁ : ∀ m, (m ≠ 0 → φ m ≠ 0) ↔ (φ m = 0 → m = 0) := by intro m; apply not_imp_not
  have aux₂ : ker φ = ⊥ ↔ ¬ ⊥ < ker φ := by rw [bot_lt_iff_ne_bot, not_not]
  simpa only [aux₁, aux₂] using this

open Module.Free in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Zero/Variant85eed32a7ec97808142e78b21f66735544134cea248d20d80da716d0463e7583.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Zero/Variant85eed32a7ec97808142e78b21f66735544134cea248d20d80da716d0463e7583.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1bf3d4ea13e2b706437d23157898ba4665dcfeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
