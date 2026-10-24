# subsingleton_of_finrank_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "97ed2db615a8505566275f8fa1f9a83e91e9cee5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ec/ec3eae2e78deb3a7b589f8a9f7bd757c27826b56385c50d23994e5d56526fa3e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:166a5e8b-c12f-b1fa-4d81-570ebe0cfda7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:482f0a3b-21e0-4ee7-75e3-7b5b340709b5",
  "kind": "theorem",
  "lexical_name": "subsingleton_of_finrank_eq_one",
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
  "slug": "subsingleton-of-finrank-eq-one--604ea2b95595532f4ac9dcea",
  "source": {
    "blob": "97ed2db615a8505566275f8fa1f9a83e91e9cee5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 74,
    "path": "GRWTSK/Algebra/LinearAlgebra/SpecialLinearGroup/Variantec3eae2e78deb3a7b589f8a9f7bd757c27826b56385c50d23994e5d56526fa3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:604ea2b95595532f4ac9dcea54f87f90a38ea6eaed01ffc01b1b81f8bcfd572b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SpecialLinearGroup/Variantec3eae2e78deb3a7b589f8a9f7bd757c27826b56385c50d23994e5d56526fa3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:482f0a3b-21e0-4ee7-75e3-7b5b340709b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subsingleton_of_finrank_eq_one [Module.Free R V] (d1 : Module.finrank R V = 1) :
    Subsingleton (SpecialLinearGroup R V) where
  allEq u v := by
    nontriviality R
    ext x
    by_cases hx : x = 0
    · simp [hx]
    suffices ∀ (u : SpecialLinearGroup R V), (u : V →ₗ[R] V) = LinearMap.id by
      simp only [LinearMap.ext_iff, LinearEquiv.coe_coe, LinearMap.id_coe, id_eq] at this
      simp [this u, this v]
    intro u
    ext x
    set c := (LinearEquiv.smul_id_of_finrank_eq_one d1).symm u with hc
    rw [LinearEquiv.eq_symm_apply] at hc
    suffices c = 1 by
      simp [← hc, LinearEquiv.smul_id_of_finrank_eq_one, this]
    have hu := u.prop
    simpa [← Units.val_inj, LinearEquiv.coe_det, ← hc,
      LinearEquiv.smul_id_of_finrank_eq_one, d1] using hu

end rankOne

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SpecialLinearGroup/Variantec3eae2e78deb3a7b589f8a9f7bd757c27826b56385c50d23994e5d56526fa3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SpecialLinearGroup/Variantec3eae2e78deb3a7b589f8a9f7bd757c27826b56385c50d23994e5d56526fa3e.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97ed2db615a8505566275f8fa1f9a83e91e9cee5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
