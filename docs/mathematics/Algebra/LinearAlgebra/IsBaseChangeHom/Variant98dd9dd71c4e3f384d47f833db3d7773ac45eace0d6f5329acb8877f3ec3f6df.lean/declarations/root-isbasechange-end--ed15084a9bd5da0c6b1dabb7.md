# _root_.IsBaseChange.end

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3b9e10078783ac83d857572e475599c5382d8f95",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 183,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/98/98dd9dd71c4e3f384d47f833db3d7773ac45eace0d6f5329acb8877f3ec3f6df.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:02038c84-80ea-10f3-d1e4-65fee88eac1e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4601c172-7a66-5220-2b12-ced10e8d8eea",
  "kind": "theorem",
  "lexical_name": "_root_.IsBaseChange.end",
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
  "slug": "root-isbasechange-end--ed15084a9bd5da0c6b1dabb7",
  "source": {
    "blob": "3b9e10078783ac83d857572e475599c5382d8f95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 183,
    "path": "GRWTSK/Algebra/LinearAlgebra/IsBaseChangeHom/Variant98dd9dd71c4e3f384d47f833db3d7773ac45eace0d6f5329acb8877f3ec3f6df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed15084a9bd5da0c6b1dabb7f8aa24e0d849e50ed56327a746907181dcfa7c70",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IsBaseChangeHom/Variant98dd9dd71c4e3f384d47f833db3d7773ac45eace0d6f5329acb8877f3ec3f6df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4601c172-7a66-5220-2b12-ced10e8d8eea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.IsBaseChange.end {α : M →ₗ[R] P} (j : IsBaseChange S α) :
    IsBaseChange S (endHom j) := by
  apply of_equiv <|
      (j.linearMapRight M).equiv ≪≫ₗ liftBaseChangeEquiv S ≪≫ₗ LinearEquiv.congrLeft P S j.equiv
  intro f
  ext p
  simp [equiv_tmul, LinearEquiv.congrLeft, endHom_apply]

end End

section Matrix

variable {Q : Type*} [AddCommMonoid Q] [Module R Q] [Module S P] [IsScalarTower R S P]
  [Module S Q] [IsScalarTower R S Q]
  {α : M →ₗ[R] P} {β : N →ₗ[R] Q}
  (ibcM : IsBaseChange S α) (ibcN : IsBaseChange S β)
  {ι θ : Type*} [DecidableEq ι] [Fintype ι] [Finite θ]
  (b : Module.Basis ι R M) (c : Module.Basis θ R N)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IsBaseChangeHom/Variant98dd9dd71c4e3f384d47f833db3d7773ac45eace0d6f5329acb8877f3ec3f6df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IsBaseChangeHom/Variant98dd9dd71c4e3f384d47f833db3d7773ac45eace0d6f5329acb8877f3ec3f6df.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b9e10078783ac83d857572e475599c5382d8f95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
