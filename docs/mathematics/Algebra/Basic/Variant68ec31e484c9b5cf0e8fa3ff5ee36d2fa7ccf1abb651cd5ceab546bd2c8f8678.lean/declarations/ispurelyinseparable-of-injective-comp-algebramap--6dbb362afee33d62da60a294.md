# IsPurelyInseparable.of_injective_comp_algebraMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f02992ef-176f-a22e-a8bc-c2ac7f33a00e",
  "kind": "theorem",
  "lexical_name": "IsPurelyInseparable.of_injective_comp_algebraMap",
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
  "slug": "ispurelyinseparable-of-injective-comp-algebramap--6dbb362afee33d62da60a294",
  "source": {
    "blob": "527923b4d89f8f1508cf07b72b52e1020363cec2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 558,
    "line": 546,
    "path": "GRWTSK/Algebra/Basic/Variant68ec31e484c9b5cf0e8fa3ff5ee36d2fa7ccf1abb651cd5ceab546bd2c8f8678.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6dbb362afee33d62da60a294671511d51bdbc1453b942f26ce8126c286523e88",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant68ec31e484c9b5cf0e8fa3ff5ee36d2fa7ccf1abb651cd5ceab546bd2c8f8678.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f02992ef-176f-a22e-a8bc-c2ac7f33a00e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 546–558.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPurelyInseparable.of_injective_comp_algebraMap (L : Type w) [Field L] [IsAlgClosed L]
    [Nonempty (E →+* L)] (h : Function.Injective fun f : E →+* L ↦ f.comp (algebraMap F E)) :
    IsPurelyInseparable F E := by
  rw [isPurelyInseparable_iff_finSepDegree_eq_one, finSepDegree, Nat.card_eq_one_iff_unique]
  let := (Classical.arbitrary (E →+* L)).toAlgebra
  let j : AlgebraicClosure E →ₐ[E] L := IsAlgClosed.lift
  exact ⟨⟨fun f g ↦ DFunLike.ext' <| j.injective.comp_left (congr_arg (⇑) <|
    @h (j.toRingHom.comp f) (j.toRingHom.comp g) (by ext; simp))⟩, inferInstance⟩

end Field

namespace IntermediateField

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant68ec31e484c9b5cf0e8fa3ff5ee36d2fa7ccf1abb651cd5ceab546bd2c8f8678.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant68ec31e484c9b5cf0e8fa3ff5ee36d2fa7ccf1abb651cd5ceab546bd2c8f8678.lean#L546).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `527923b4d89f8f1508cf07b72b52e1020363cec2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
