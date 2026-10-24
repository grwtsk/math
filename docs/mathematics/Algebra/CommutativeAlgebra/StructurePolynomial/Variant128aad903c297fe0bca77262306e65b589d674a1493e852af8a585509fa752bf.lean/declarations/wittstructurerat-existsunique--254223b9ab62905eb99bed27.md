# wittStructureRat_existsUnique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "df8891ad4c26fc524f2688dc17def1a10806896d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 148,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/128aad903c297fe0bca77262306e65b589d674a1493e852af8a585509fa752bf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:896863d1-679c-011c-7e99-72ae1a144dcd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b2b9f65e-cd58-f903-f0ba-f4afe86a967f",
  "kind": "theorem",
  "lexical_name": "wittStructureRat_existsUnique",
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
  "slug": "wittstructurerat-existsunique--254223b9ab62905eb99bed27",
  "source": {
    "blob": "df8891ad4c26fc524f2688dc17def1a10806896d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 148,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/StructurePolynomial/Variant128aad903c297fe0bca77262306e65b589d674a1493e852af8a585509fa752bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:254223b9ab62905eb99bed27f4e1aeccec43aa8409ec8d84352748399c54d499",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/StructurePolynomial/Variant128aad903c297fe0bca77262306e65b589d674a1493e852af8a585509fa752bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2b9f65e-cd58-f903-f0ba-f4afe86a967f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wittStructureRat_existsUnique (Φ : MvPolynomial idx ℚ) :
    ∃! φ : ℕ → MvPolynomial (idx × ℕ) ℚ,
      ∀ n : ℕ, bind₁ φ (W_ ℚ n) = bind₁ (fun i => rename (Prod.mk i) (W_ ℚ n)) Φ := by
  refine ⟨wittStructureRat p Φ, ?_, ?_⟩
  · intro n; apply wittStructureRat_prop
  · intro φ H
    funext n
    rw [show φ n = bind₁ φ (bind₁ (W_ ℚ) (xInTermsOfW p ℚ n)) by
        rw [bind₁_wittPolynomial_xInTermsOfW p, bind₁_X_right]]
    rw [bind₁_bind₁]
    exact eval₂Hom_congr (RingHom.ext_rat _ _) (funext H) rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/StructurePolynomial/Variant128aad903c297fe0bca77262306e65b589d674a1493e852af8a585509fa752bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/StructurePolynomial/Variant128aad903c297fe0bca77262306e65b589d674a1493e852af8a585509fa752bf.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df8891ad4c26fc524f2688dc17def1a10806896d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
