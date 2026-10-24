# IsOrderedRing.mkOfCone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:10431c1a-28ae-8d0d-c9c6-312ded83183c",
  "kind": "lemma",
  "lexical_name": "IsOrderedRing.mkOfCone",
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
  "slug": "isorderedring-mkofcone--20452d116ffad14e3626a08d",
  "source": {
    "blob": "72ac2d34038dbab95ab4e95b8666bad4264b6f1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 77,
    "path": "GRWTSK/Algebra/Cone/Variant019428961a7d83315238a2e228406581451114a9adcffb977ec7f72f146702a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:20452d116ffad14e3626a08d7542041224305fde52bee89e8556feb93a774e5c",
  "verification": {
    "reference": "docs/verification/Algebra/Cone/Variant019428961a7d83315238a2e228406581451114a9adcffb977ec7f72f146702a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10431c1a-28ae-8d0d-c9c6-312ded83183c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsOrderedRing.mkOfCone [RingConeClass S R] :
    letI _ : PartialOrder R := .mkOfAddGroupCone C
    IsOrderedRing R :=
  letI _ : PartialOrder R := .mkOfAddGroupCone C
  haveI : IsOrderedAddMonoid R := .mkOfCone C
  haveI : ZeroLEOneClass R := ⟨show _ ∈ C by simpa using one_mem C⟩
  .of_mul_nonneg fun x y xnn ynn ↦ show _ ∈ C by simpa using mul_mem xnn ynn
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Cone/Variant019428961a7d83315238a2e228406581451114a9adcffb977ec7f72f146702a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Cone/Variant019428961a7d83315238a2e228406581451114a9adcffb977ec7f72f146702a7.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72ac2d34038dbab95ab4e95b8666bad4264b6f1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
