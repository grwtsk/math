# inr_comp_cfcₙHom_eq_cfcₙAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f1001146af344d68d222246d018a5927cdfc2326",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 187,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/71e404180af5ae9fda6b7a2f4c47a487fbeedee83994b262d46fd6f5bf34f899.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2bbb0a1f-6f13-9020-7bc9-15dfec936e7e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0e31828f-25d3-4182-8448-e3db073cbaaf",
  "kind": "lemma",
  "lexical_name": "inr_comp_cfcₙHom_eq_cfcₙAux",
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
  "slug": "inr-comp-cfc-hom-eq-cfc-aux--c5436dce68b4b20ce9c4bb43",
  "source": {
    "blob": "f1001146af344d68d222246d018a5927cdfc2326",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 187,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant71e404180af5ae9fda6b7a2f4c47a487fbeedee83994b262d46fd6f5bf34f899.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5436dce68b4b20ce9c4bb4364e6119809f4bacae129e9516073b5861a3a1106",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant71e404180af5ae9fda6b7a2f4c47a487fbeedee83994b262d46fd6f5bf34f899.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e31828f-25d3-4182-8448-e3db073cbaaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma inr_comp_cfcₙHom_eq_cfcₙAux {A : Type*} [NonUnitalCStarAlgebra A] (a : A)
    [ha : IsStarNormal a] : (inrNonUnitalStarAlgHom ℂ A).comp (cfcₙHom ha) =
      cfcₙAux (isStarNormal_inr (R := ℂ) (A := A)) a ha := by
  have h (a : A) := isStarNormal_inr (R := ℂ) (A := A) (a := a)
  refine @ContinuousMapZero.UniqueHom.eq_of_continuous_of_map_id
    _ _ _ _ _ _ _ _ _ _ _ inferInstance inferInstance _ (σₙ ℂ a) _ _ rfl _ _ ?_ ?_ ?_
  · show Continuous (fun f ↦ (cfcₙHom ha f : A⁺¹)); fun_prop
  · exact isClosedEmbedding_cfcₙAux @(h) a ha |>.continuous
  · trans (a : A⁺¹)
    · congrm(inr $(cfcₙHom_id ha))
    · exact cfcₙAux_id @(h) a ha |>.symm

end Normal

/-!
### The spectrum of a nonnegative element is nonnegative
-/

section SpectrumRestricts

open NNReal ENNReal

variable {A : Type*} [CStarAlgebra A]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant71e404180af5ae9fda6b7a2f4c47a487fbeedee83994b262d46fd6f5bf34f899.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant71e404180af5ae9fda6b7a2f4c47a487fbeedee83994b262d46fd6f5bf34f899.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1001146af344d68d222246d018a5927cdfc2326` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
