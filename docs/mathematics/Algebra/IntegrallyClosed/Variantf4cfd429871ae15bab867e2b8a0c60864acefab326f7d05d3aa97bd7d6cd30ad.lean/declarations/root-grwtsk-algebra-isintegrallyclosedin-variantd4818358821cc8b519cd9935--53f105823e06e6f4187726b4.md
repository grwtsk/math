# _root_.GRWTSK.Algebra.IsIntegrallyClosedIn.Variantd4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24.IsIntegralClosure.of_isIntegralClosure_of_isIntegrallyClosedIn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fa4fd77f-56aa-700a-e72f-bfc22e2009a7",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Algebra.IsIntegrallyClosedIn.Variantd4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24.IsIntegralClosure.of_isIntegralClosure_of_isIntegrallyClosedIn",
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
  "slug": "root-grwtsk-algebra-isintegrallyclosedin-variantd4818358821cc8b519cd9935--53f105823e06e6f4187726b4",
  "source": {
    "blob": "c63b6ddac486589c96cdd141b5de709bfdcad7ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 296,
    "path": "GRWTSK/Algebra/IntegrallyClosed/Variantf4cfd429871ae15bab867e2b8a0c60864acefab326f7d05d3aa97bd7d6cd30ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53f105823e06e6f4187726b44ed3ab1409fc0e3510f6f12bf1fa4f9c2d11c75e",
  "verification": {
    "reference": "docs/verification/Algebra/IntegrallyClosed/Variantf4cfd429871ae15bab867e2b8a0c60864acefab326f7d05d3aa97bd7d6cd30ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa4fd77f-56aa-700a-e72f-bfc22e2009a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 296–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Algebra.IsIntegrallyClosedIn.Variantd4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24.IsIntegralClosure.of_isIntegralClosure_of_isIntegrallyClosedIn
    (R S T U : Type*) [CommRing R] [CommRing S] [CommRing T] [CommRing U]
    [Algebra R T] [Algebra S T] [Algebra R U] [Algebra S U] [Algebra T U]
    [IsScalarTower S T U] [IsScalarTower R T U]
    [IsIntegralClosure S R T] [IsIntegrallyClosedIn T U] : IsIntegralClosure S R U := by
  refine ⟨?_, ?_⟩
  · rw [IsScalarTower.algebraMap_eq S T U]
    exact (IsIntegralClosure.algebraMap_injective T T U).comp
      (IsIntegralClosure.algebraMap_injective S R T)
  · intro x
    refine ⟨fun h ↦ ?_, ?_⟩
    · obtain ⟨x, rfl⟩ := (IsIntegralClosure.isIntegral_iff (R := T) (A := T)).mp h.tower_top
      have := IsIntegralClosure.faithfulSMul T T U
      rw [isIntegral_algebraMap_iff] at h
      obtain ⟨x, rfl⟩ := (IsIntegralClosure.isIntegral_iff (R := R) (A := S)).mp h
      exact ⟨x, IsScalarTower.algebraMap_apply ..⟩
    · rintro ⟨x, rfl⟩
      rw [IsScalarTower.algebraMap_apply S T U]
      exact ((IsIntegralClosure.isIntegral_iff (A := S) (R := R) (B := T)).mpr ⟨x, rfl⟩).map
        (IsScalarTower.toAlgHom R T U)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IntegrallyClosed/Variantf4cfd429871ae15bab867e2b8a0c60864acefab326f7d05d3aa97bd7d6cd30ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IntegrallyClosed/Variantf4cfd429871ae15bab867e2b8a0c60864acefab326f7d05d3aa97bd7d6cd30ad.lean#L296).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c63b6ddac486589c96cdd141b5de709bfdcad7ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
