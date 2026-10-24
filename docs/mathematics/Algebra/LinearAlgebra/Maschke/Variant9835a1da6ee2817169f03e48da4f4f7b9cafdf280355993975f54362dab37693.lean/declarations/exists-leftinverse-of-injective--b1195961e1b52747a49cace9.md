# exists_leftInverse_of_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1d0474598e46c987e40eac5331bfc6c7cb8c8ecf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 145,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/98/9835a1da6ee2817169f03e48da4f4f7b9cafdf280355993975f54362dab37693.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d9eb7a2a-fa44-30b6-e950-8712640fc567",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9b535a5f-2c34-80ce-1a2f-f82d81e411d4",
  "kind": "theorem",
  "lexical_name": "exists_leftInverse_of_injective",
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
  "slug": "exists-leftinverse-of-injective--b1195961e1b52747a49cace9",
  "source": {
    "blob": "1d0474598e46c987e40eac5331bfc6c7cb8c8ecf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 145,
    "path": "GRWTSK/Algebra/LinearAlgebra/Maschke/Variant9835a1da6ee2817169f03e48da4f4f7b9cafdf280355993975f54362dab37693.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1195961e1b52747a49cace94a8975fe20efd1f97a474ae05e581a660e9881fd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Maschke/Variant9835a1da6ee2817169f03e48da4f4f7b9cafdf280355993975f54362dab37693.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b535a5f-2c34-80ce-1a2f-f82d81e411d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_leftInverse_of_injective (f : V →ₗ[k[G]] W) (hf : LinearMap.ker f = ⊥) :
    ∃ g : W →ₗ[k[G]] V, g.comp f = .id := by
  let A := k[G]
  let : Module k W := .compHom W (algebraMap k A)
  let : Module k V := .compHom V (algebraMap k A)
  have := IsScalarTower.of_compHom k A W
  have := IsScalarTower.of_compHom k A V
  set φ := (f.restrictScalars k).leftInverse
  have hφ : ∀ (x : V), φ (f x) = x := by
    apply LinearMap.leftInverse_apply_of_inj
    simp [hf]
  have _ : Fintype G := Fintype.ofFinite G
  refine ⟨φ.equivariantProjection G, LinearMap.ext ?_⟩
  exact φ.equivariantProjection_condition G _ (.mk0 _ <| NeZero.ne _) <| hφ

namespace Submodule

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Maschke/Variant9835a1da6ee2817169f03e48da4f4f7b9cafdf280355993975f54362dab37693.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Maschke/Variant9835a1da6ee2817169f03e48da4f4f7b9cafdf280355993975f54362dab37693.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d0474598e46c987e40eac5331bfc6c7cb8c8ecf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
