# algebraicIndependent_ringHom_iff_of_comp_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f0f682875f03a3da00f2c07f36c9db504e6a8913",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 223,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/95/95ab6557cf64527e97fe918750662554244d4419a34d3da7cb15491e1352c50f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ecd6ea48-bcc8-6d8c-0aa3-f2e148c9b4e1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b1377d87-ec8d-13ec-ccbc-932e30337fc2",
  "kind": "theorem",
  "lexical_name": "algebraicIndependent_ringHom_iff_of_comp_eq",
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
  "slug": "algebraicindependent-ringhom-iff-of-comp-eq--095fa6d39ff0952d7f32f396",
  "source": {
    "blob": "f0f682875f03a3da00f2c07f36c9db504e6a8913",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 223,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant95ab6557cf64527e97fe918750662554244d4419a34d3da7cb15491e1352c50f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:095fa6d39ff0952d7f32f39605b346ab024bf246c3239ce78a9c2fe72fd31f0c",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant95ab6557cf64527e97fe918750662554244d4419a34d3da7cb15491e1352c50f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1377d87-ec8d-13ec-ccbc-932e30337fc2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem algebraicIndependent_ringHom_iff_of_comp_eq
    (hg : Function.Injective g)
    (h : RingHom.comp (algebraMap S B) f = RingHom.comp g (algebraMap R A)) :
    AlgebraicIndependent S (g ∘ x) ↔ AlgebraicIndependent R x :=
  ⟨fun H ↦ H.of_ringHom_of_comp_eq f g (EquivLike.injective f) h,
    fun H ↦ H.ringHom_of_comp_eq f g (EquivLike.surjective f) hg h⟩

end

end RingHom

/-- Every finite subset of an algebraically independent set is algebraically independent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant95ab6557cf64527e97fe918750662554244d4419a34d3da7cb15491e1352c50f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant95ab6557cf64527e97fe918750662554244d4419a34d3da7cb15491e1352c50f.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0f682875f03a3da00f2c07f36c9db504e6a8913` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
