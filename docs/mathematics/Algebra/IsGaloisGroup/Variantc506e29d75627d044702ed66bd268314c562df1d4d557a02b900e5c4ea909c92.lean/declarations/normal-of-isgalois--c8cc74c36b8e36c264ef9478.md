# normal_of_isGalois

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a3b652af-e4fb-71f0-9a55-1d8ea50813c8",
  "kind": "theorem",
  "lexical_name": "normal_of_isGalois",
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
  "slug": "normal-of-isgalois--c8cc74c36b8e36c264ef9478",
  "source": {
    "blob": "472c75265f50a72ffbf12ac68b34d66fcb813d39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 388,
    "line": 365,
    "path": "GRWTSK/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8cc74c36b8e36c264ef94787491a822866056998dd5734d43d4179b26da0dcb",
  "verification": {
    "reference": "docs/verification/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3b652af-e4fb-71f0-9a55-1d8ea50813c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 365–388.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normal_of_isGalois (E : Type*) [Field E] [Algebra K E] [Algebra E L] [IsScalarTower K E L]
    [Finite G] [IsGaloisGroup H E L] [IsGalois K E] : H.Normal := by
  let F := (IsScalarTower.toAlgHom K E L).fieldRange
  have : IsGalois K F := .of_algEquiv (IsScalarTower.toAlgHom K E L).equivFieldRange
  have hFL : IsGaloisGroup H F L := inferInstanceAs (IsGaloisGroup H (algebraMap E L).range L)
  have := isGalois G K L
  have : Finite Gal(L/K) := Finite.of_equiv _ (mulEquivAlgEquiv G K L).toEquiv
  rw [← fixingSubgroup_fixedPoints G K L H, subgroup_iff.mp hFL,
    ← mulEquivCongr_mapSubgroup_fixingSubgroup Gal(L/K) G K, MulEquiv.normal_map_iff]
  exact IsGalois.fixingSubgroup_normal_of_isGalois F

end IsGaloisGroup

end GaloisCorrespondence

section Quotient

section Domain

variable (A B C : Type*) [CommRing A] [CommRing B] [CommRing C] [IsDomain C] [Algebra A B]
    [Algebra A C] [Algebra B C] [FaithfulSMul B C] [IsScalarTower A B C]

/-- If `G` is a Galois group for `C/A`, and the normal subgroup `N ≤ G` is a Galois group for
`C/B`, then the quotient `G ⧸ N` is a Galois group for `B/A`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IsGaloisGroup/Variantc506e29d75627d044702ed66bd268314c562df1d4d557a02b900e5c4ea909c92.lean#L365).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `472c75265f50a72ffbf12ac68b34d66fcb813d39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
