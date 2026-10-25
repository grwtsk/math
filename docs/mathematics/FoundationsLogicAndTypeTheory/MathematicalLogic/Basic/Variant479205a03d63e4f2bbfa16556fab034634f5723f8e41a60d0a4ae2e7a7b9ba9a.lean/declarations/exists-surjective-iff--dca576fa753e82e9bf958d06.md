# exists_surjective_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:305f7078-3daa-87cd-c638-77446a96b304",
  "kind": "theorem",
  "lexical_name": "exists_surjective_iff",
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
  "slug": "exists-surjective-iff--dca576fa753e82e9bf958d06",
  "source": {
    "blob": "4067ace0a52daf35f6538e392382f5d78dbb476d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 55,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant479205a03d63e4f2bbfa16556fab034634f5723f8e41a60d0a4ae2e7a7b9ba9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dca576fa753e82e9bf958d067bd79dd622461044bec35c79e48acb06c5dce4e6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant479205a03d63e4f2bbfa16556fab034634f5723f8e41a60d0a4ae2e7a7b9ba9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:305f7078-3daa-87cd-c638-77446a96b304`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem exists_surjective_iff {α β : Sort*} :
    (∃ f : α → β, Surjective f) ↔ Nonempty (α → β) ∧ Nonempty (β ↪ α) :=
  ⟨fun ⟨f, h⟩ ↦ ⟨⟨f⟩, ⟨⟨_, injective_surjInv h⟩⟩⟩, fun ⟨h, ⟨e⟩⟩ ↦ (nonempty_fun.mp h).elim
    (fun _ ↦ ⟨isEmptyElim, (isEmptyElim <| e ·)⟩) fun _ ↦ ⟨_, invFun_surjective e.inj'⟩⟩

end Function

namespace Equiv

variable {α : Sort u} {β : Sort v} (f : α ≃ β)

/-- Convert an `α ≃ β` to `α ↪ β`.

This is also available as a coercion `Equiv.coeEmbedding`.
The explicit `Equiv.toEmbedding` version is preferred though, since the coercion can have issues
inferring the type of the resulting embedding. For example:

```lean
-- Works:
example (s : Finset (Fin 3)) (f : Equiv.Perm (Fin 3)) : s.map f.toEmbedding = s.map f := by simp
-- Error, `f` has type `Fin 3 ≃ Fin 3` but is expected to have type `Fin 3 ↪ ?m_1 : Type ?`
example (s : Finset (Fin 3)) (f : Equiv.Perm (Fin 3)) : s.map f = s.map f.toEmbedding := by simp
```
-/
@[reducible]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant479205a03d63e4f2bbfa16556fab034634f5723f8e41a60d0a4ae2e7a7b9ba9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant479205a03d63e4f2bbfa16556fab034634f5723f8e41a60d0a4ae2e7a7b9ba9a.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4067ace0a52daf35f6538e392382f5d78dbb476d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
