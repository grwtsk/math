# RingEquiv.isIntegral_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6dd1aee28512de1c6b336c8aac0dbe529d990bbd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 166,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/16/168b0e9c32bebbca24efd87eb10ba31c9c7395597c2abea70f043929beddcbbd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b0934382-ecc9-8307-441e-73e67c9fa6da",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:86db34f0-54fc-e3b4-4189-a94641416828",
  "kind": "theorem",
  "lexical_name": "RingEquiv.isIntegral_iff",
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
  "slug": "ringequiv-isintegral-iff--f02a3c2d4b513016fbd1ac36",
  "source": {
    "blob": "6dd1aee28512de1c6b336c8aac0dbe529d990bbd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 166,
    "path": "GRWTSK/Algebra/Basic/Variant168b0e9c32bebbca24efd87eb10ba31c9c7395597c2abea70f043929beddcbbd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f02a3c2d4b513016fbd1ac3640d239e0ec676747cb148680f971519b467dcbf4",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant168b0e9c32bebbca24efd87eb10ba31c9c7395597c2abea70f043929beddcbbd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86db34f0-54fc-e3b4-4189-a94641416828`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem RingEquiv.isIntegral_iff {R S T : Type*} [CommRing R] [Ring S] [CommRing T]
    [Algebra R S] [Algebra T S] (φ : R ≃+* T)
    (h : (algebraMap T S).comp φ.toRingHom = algebraMap R S) (a : S) :
    IsIntegral R a ↔ IsIntegral T a := by
  constructor <;> intro ha
  · let : Algebra R T := φ.toRingHom.toAlgebra
    let : IsScalarTower R T S :=
      ⟨fun r t s ↦ by simp only [Algebra.smul_def, map_mul, ← h, mul_assoc]; rfl⟩
    exact IsIntegral.tower_top ha
  · have h' : (algebraMap T S) = (algebraMap R S).comp φ.symm.toRingHom := by
      have : RingHomInvPair (φ : R →+* T) φ.symm := RingHomInvPair.of_ringEquiv _
      simp only [← h, RingHom.comp_assoc, RingEquiv.toRingHom_eq_coe, RingHomCompTriple.comp_eq]
    let : Algebra T R := φ.symm.toRingHom.toAlgebra
    let : IsScalarTower T R S :=
      ⟨fun r t s ↦ by simp only [Algebra.smul_def, map_mul, h', mul_assoc]; rfl⟩
    exact IsIntegral.tower_top ha

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant168b0e9c32bebbca24efd87eb10ba31c9c7395597c2abea70f043929beddcbbd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant168b0e9c32bebbca24efd87eb10ba31c9c7395597c2abea70f043929beddcbbd.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6dd1aee28512de1c6b336c8aac0dbe529d990bbd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
