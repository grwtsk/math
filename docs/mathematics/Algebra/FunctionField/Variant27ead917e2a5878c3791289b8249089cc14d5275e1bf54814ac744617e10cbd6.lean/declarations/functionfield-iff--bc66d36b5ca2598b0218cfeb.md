# functionField_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b9456a551736955d6cda659d747e49f656037396",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/27/27ead917e2a5878c3791289b8249089cc14d5275e1bf54814ac744617e10cbd6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a247dbba-ce0b-bcc6-6060-e5b7723a4846",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d0db8f20-18a5-c3c0-1abd-18c5c4cd08c3",
  "kind": "theorem",
  "lexical_name": "functionField_iff",
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
  "slug": "functionfield-iff--bc66d36b5ca2598b0218cfeb",
  "source": {
    "blob": "b9456a551736955d6cda659d747e49f656037396",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 58,
    "path": "GRWTSK/Algebra/FunctionField/Variant27ead917e2a5878c3791289b8249089cc14d5275e1bf54814ac744617e10cbd6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc66d36b5ca2598b0218cfeb0a28532b54353d4421eef9ca5918760e1c8e635c",
  "verification": {
    "reference": "docs/verification/Algebra/FunctionField/Variant27ead917e2a5878c3791289b8249089cc14d5275e1bf54814ac744617e10cbd6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0db8f20-18a5-c3c0-1abd-18c5c4cd08c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem functionField_iff (Fqt : Type*) [Field Fqt] [Algebra Fq[X] Fqt]
    [IsFractionRing Fq[X] Fqt] [Algebra (RatFunc Fq) F] [Algebra Fqt F] [Algebra Fq[X] F]
    [IsScalarTower Fq[X] Fqt F] [IsScalarTower Fq[X] (RatFunc Fq) F] :
    FunctionField Fq F ↔ FiniteDimensional Fqt F := by
  let e := IsLocalization.algEquiv Fq[X]⁰ (RatFunc Fq) Fqt
  have : ∀ (c) (x : F), e c • x = c • x := by
    intro c x
    rw [Algebra.smul_def, Algebra.smul_def]
    congr
    refine congr_fun (f := fun c => algebraMap Fqt F (e c)) ?_ c
    refine IsLocalization.ext (nonZeroDivisors Fq[X]) _ _ ?_ ?_ ?_ ?_ ?_ <;> intros <;>
      simp only [map_one, map_mul, AlgEquiv.commutes, ← IsScalarTower.algebraMap_apply]
  constructor <;> intro h
  · let b := Module.finBasis (RatFunc Fq) F
    exact FiniteDimensional.of_fintype_basis (b.mapCoeffs e this)
  · let b := Module.finBasis Fqt F
    refine FiniteDimensional.of_fintype_basis (b.mapCoeffs e.symm ?_)
    intro c x; convert (this (e.symm c) x).symm; simp only [e.apply_symm_apply]

namespace FunctionField

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FunctionField/Variant27ead917e2a5878c3791289b8249089cc14d5275e1bf54814ac744617e10cbd6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FunctionField/Variant27ead917e2a5878c3791289b8249089cc14d5275e1bf54814ac744617e10cbd6.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9456a551736955d6cda659d747e49f656037396` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
