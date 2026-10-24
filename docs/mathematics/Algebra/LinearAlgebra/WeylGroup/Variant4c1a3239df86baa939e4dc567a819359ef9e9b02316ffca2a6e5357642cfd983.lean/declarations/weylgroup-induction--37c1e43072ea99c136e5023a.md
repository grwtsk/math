# weylGroup.induction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f12cfebf-a5d0-3014-15fc-a5e269d11a26",
  "kind": "lemma",
  "lexical_name": "weylGroup.induction",
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
  "slug": "weylgroup-induction--37c1e43072ea99c136e5023a",
  "source": {
    "blob": "0883184b69922b4df582cfeae9e76eb3b0765fde",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 75,
    "path": "GRWTSK/Algebra/LinearAlgebra/WeylGroup/Variant4c1a3239df86baa939e4dc567a819359ef9e9b02316ffca2a6e5357642cfd983.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37c1e43072ea99c136e5023aec4c7782fbd82e69ff83abb8f4c6b91df06ea720",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/WeylGroup/Variant4c1a3239df86baa939e4dc567a819359ef9e9b02316ffca2a6e5357642cfd983.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f12cfebf-a5d0-3014-15fc-a5e269d11a26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma weylGroup.induction {pred : (g : Aut P) → g ∈ P.weylGroup → Prop}
    (mem : ∀ i, pred (Equiv.reflection P i) (P.reflection_mem_weylGroup i))
    (one : pred 1 (one_mem _))
    (mul : ∀ x y hx hy, pred x hx → pred y hy → pred (x * y) (mul_mem hx hy))
    {x} (hx : x ∈ P.weylGroup) :
    pred x hx := by
  let pred' : (g : Aut P) → g ∈ Submonoid.closure (range (Equiv.reflection P)) → Prop :=
    fun g hg ↦ pred g <| by change g ∈ P.weylGroup.toSubmonoid; rwa [weylGroup_toSubmonoid]
  have hx' : x ∈ Submonoid.closure (range (Equiv.reflection P)) := by rwa [← weylGroup_toSubmonoid]
  suffices pred' x hx' from this
  apply Submonoid.closure_induction
  · rintro - ⟨i, rfl⟩
    exact mem i
  · exact one
  · intro x y hx hy hx' hy'
    rw [← weylGroup_toSubmonoid] at hx hy
    exact mul x y hx hy hx' hy'

@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/WeylGroup/Variant4c1a3239df86baa939e4dc567a819359ef9e9b02316ffca2a6e5357642cfd983.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/WeylGroup/Variant4c1a3239df86baa939e4dc567a819359ef9e9b02316ffca2a6e5357642cfd983.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0883184b69922b4df582cfeae9e76eb3b0765fde` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
