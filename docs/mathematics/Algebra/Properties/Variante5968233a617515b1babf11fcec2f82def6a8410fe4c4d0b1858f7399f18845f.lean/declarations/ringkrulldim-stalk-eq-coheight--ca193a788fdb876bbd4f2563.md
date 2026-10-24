# ringKrullDim_stalk_eq_coheight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4b1ab3ffe23c28171bf5a65d01ae709666230fb3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 376,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e5968233a617515b1babf11fcec2f82def6a8410fe4c4d0b1858f7399f18845f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:377171e9-9a76-e300-2f2e-96b9991b9fa9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e3d13ab6-35cf-8e35-29de-84f0db84cfe0",
  "kind": "lemma",
  "lexical_name": "ringKrullDim_stalk_eq_coheight",
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
  "slug": "ringkrulldim-stalk-eq-coheight--ca193a788fdb876bbd4f2563",
  "source": {
    "blob": "4b1ab3ffe23c28171bf5a65d01ae709666230fb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 394,
    "line": 376,
    "path": "GRWTSK/Algebra/Properties/Variante5968233a617515b1babf11fcec2f82def6a8410fe4c4d0b1858f7399f18845f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca193a788fdb876bbd4f2563447645c76bd19c3255b8bd877ef1db3a38d3e92d",
  "verification": {
    "reference": "docs/verification/Algebra/Properties/Variante5968233a617515b1babf11fcec2f82def6a8410fe4c4d0b1858f7399f18845f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3d13ab6-35cf-8e35-29de-84f0db84cfe0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 376–394.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ringKrullDim_stalk_eq_coheight {X : Scheme} (x : X) :
    ringKrullDim (X.presheaf.stalk x) = coheight x := by
  wlog h : ∃ R, X = Spec R
  · obtain ⟨R, f, hf, hsub⟩ := Scheme.exists_affine_mem_range_and_range_subset
      (show x ∈ ⊤ from trivial)
    obtain ⟨y, rfl⟩ := Set.mem_range.mp hsub.1
    rw [coheight_eq_of_isOpenImmersion, ← this _ ⟨R, rfl⟩]
    exact Order.krullDim_eq_of_orderIso
      (PrimeSpectrum.comapEquiv (asIso (Scheme.Hom.stalkMap f y)).commRingCatIsoToRingEquiv)
  obtain ⟨R, rfl⟩ := h
  let k : Algebra ↑R ↑((Spec R).presheaf.stalk x) := StructureSheaf.stalkAlgebra (↑R) x
  have : IsLocalization.AtPrime (↑((Spec R).presheaf.stalk x)) x.asIdeal :=
    StructureSheaf.IsLocalization.to_stalk R x
  rw [IsLocalization.AtPrime.ringKrullDim_eq_height x.asIdeal ((Spec R).presheaf.stalk x)]
  apply WithBot.coe_eq_coe.mpr
  exact idealHeight_eq_coheight R x

open Order in
variable {X} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Properties/Variante5968233a617515b1babf11fcec2f82def6a8410fe4c4d0b1858f7399f18845f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Properties/Variante5968233a617515b1babf11fcec2f82def6a8410fe4c4d0b1858f7399f18845f.lean#L376).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b1ab3ffe23c28171bf5a65d01ae709666230fb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
