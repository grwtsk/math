# isConnected_iff_isColimit_pUnitCocone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9bf090980ae4ad4678be3ccf99a96fb2226cc0f4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 108,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4f/4fa8406aabf9f6b4ad9f0edb3969ce15de3ae0ac96ee0aa7f7e6c7bb6081c1e4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:33ae72fc-1ac7-4b27-8dc3-feddbcf13a70",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:47c802fb-e2ae-5264-94e9-46410ab92954",
  "kind": "theorem",
  "lexical_name": "isConnected_iff_isColimit_pUnitCocone",
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
  "slug": "isconnected-iff-iscolimit-punitcocone--52fb5f24c1d6e76cabcbf5b2",
  "source": {
    "blob": "9bf090980ae4ad4678be3ccf99a96fb2226cc0f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 108,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant4fa8406aabf9f6b4ad9f0edb3969ce15de3ae0ac96ee0aa7f7e6c7bb6081c1e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52fb5f24c1d6e76cabcbf5b2bbf8f792d147c0451242a01e319cab77086597a8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant4fa8406aabf9f6b4ad9f0edb3969ce15de3ae0ac96ee0aa7f7e6c7bb6081c1e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47c802fb-e2ae-5264-94e9-46410ab92954`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isConnected_iff_isColimit_pUnitCocone :
    IsConnected C ↔ Nonempty (IsColimit (pUnitCocone.{w} C)) := by
  refine ⟨fun inst => ⟨isColimitPUnitCocone C⟩, fun ⟨h⟩ => ?_⟩
  let colimitCocone : ColimitCocone (constPUnitFunctor C) := ⟨pUnitCocone.{w} C, h⟩
  have : HasColimit (constPUnitFunctor.{w} C) := ⟨⟨colimitCocone⟩⟩
  simp only [isConnected_iff_colimit_constPUnitFunctor_iso_pUnit.{w} C]
  exact ⟨colimit.isoColimitCocone colimitCocone⟩

end Limits.Types

namespace Functor

open Limits.Types

universe v₂ u₂

variable {C : Type u} [Category.{v} C] {D : Type u₂} [Category.{v₂} D]

/-- The domain of a final functor is connected if and only if its codomain is connected. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant4fa8406aabf9f6b4ad9f0edb3969ce15de3ae0ac96ee0aa7f7e6c7bb6081c1e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant4fa8406aabf9f6b4ad9f0edb3969ce15de3ae0ac96ee0aa7f7e6c7bb6081c1e4.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bf090980ae4ad4678be3ccf99a96fb2226cc0f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
