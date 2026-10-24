# CliffordAlgebra.not_forall_algebraMap_injective.

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d31523d8d2a407363a363dbcbaba467ed28c11ee",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 276,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/63/6365f68734eb3bb2a2ef2cde530bbfdca80844553733fd0f5337ea7eead6b8fb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:00580f8f-efbb-9b95-ce0d-1b184c9755cb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b6bdc1af-f8e3-9277-2842-b69c22493df9",
  "kind": "theorem",
  "lexical_name": "CliffordAlgebra.not_forall_algebraMap_injective.",
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
  "slug": "cliffordalgebra-not-forall-algebramap-injective--0261db0418defa3a48a4de97",
  "source": {
    "blob": "d31523d8d2a407363a363dbcbaba467ed28c11ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 276,
    "path": "GRWTSK/Algebra/CliffordAlgebraNotInjective/Variant6365f68734eb3bb2a2ef2cde530bbfdca80844553733fd0f5337ea7eead6b8fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0261db0418defa3a48a4de973cae33163b8b23dc45ad20132cac4576cceaa669",
  "verification": {
    "reference": "docs/verification/Algebra/CliffordAlgebraNotInjective/Variant6365f68734eb3bb2a2ef2cde530bbfdca80844553733fd0f5337ea7eead6b8fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6bdc1af-f8e3-9277-2842-b69c22493df9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem CliffordAlgebra.not_forall_algebraMap_injective.{v} :
    -- TODO: make `R` universe polymorphic
    ¬∀ (R : Type) (M : Type v) [CommRing R] [AddCommGroup M] [Module R M] (Q : QuadraticForm R M),
      Function.Injective (algebraMap R <| CliffordAlgebra Q) :=
  fun h => algebraMap_not_injective fun x y hxy => by
    let uU := ULift.moduleEquiv (R := K) (M := L)
    let uQ := Q.comp uU.toLinearMap
    let f : Q →qᵢ uQ := { uU.symm with map_app' := fun _ => rfl }
    refine h K (ULift L) (Q.comp uU.toLinearMap) ?_
    let uC := CliffordAlgebra.map f
    have := uC.congr_arg hxy
    rwa [AlgHom.commutes, AlgHom.commutes] at this

open Q60596 in
/-- The general bonus statement: not every quadratic form is the diagonal of a bilinear form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CliffordAlgebraNotInjective/Variant6365f68734eb3bb2a2ef2cde530bbfdca80844553733fd0f5337ea7eead6b8fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CliffordAlgebraNotInjective/Variant6365f68734eb3bb2a2ef2cde530bbfdca80844553733fd0f5337ea7eead6b8fb.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d31523d8d2a407363a363dbcbaba467ed28c11ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
