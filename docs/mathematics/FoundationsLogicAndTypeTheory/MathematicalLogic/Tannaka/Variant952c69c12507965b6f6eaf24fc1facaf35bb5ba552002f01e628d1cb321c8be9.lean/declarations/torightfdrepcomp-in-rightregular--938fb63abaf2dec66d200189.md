# toRightFDRepComp_in_rightRegular

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:718ba25a-c5ac-bed8-d259-f6c33665973e",
  "kind": "lemma",
  "lexical_name": "toRightFDRepComp_in_rightRegular",
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
  "slug": "torightfdrepcomp-in-rightregular--938fb63abaf2dec66d200189",
  "source": {
    "blob": "9e12d007b31b53ce0d180168bb036d6a99d88bec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 206,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Tannaka/Variant952c69c12507965b6f6eaf24fc1facaf35bb5ba552002f01e628d1cb321c8be9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:938fb63abaf2dec66d20018974e3d2fcc7269ecd565e4c9f0adedde2f8b326b2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Tannaka/Variant952c69c12507965b6f6eaf24fc1facaf35bb5ba552002f01e628d1cb321c8be9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:718ba25a-c5ac-bed8-d259-f6c33665973e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toRightFDRepComp_in_rightRegular [IsDomain k] (η : Aut (forget k G)) :
    ∃ (s : G), (η.hom.hom.app rightFDRep).hom = rightRegular s := by
  classical
  obtain ⟨s, hs⟩ := ((evalAlgHom _ _ 1).comp (algHomOfRightFDRepComp η)).eq_piEvalAlgHom
  refine ⟨s, Basis.ext (basisFun k G) (fun u ↦ ?_)⟩
  simp only [rightFDRep, forget_obj]
  ext t
  have nat := η.hom.hom.naturality (leftRegularFDRepHom t⁻¹)
  calc
    _ = leftRegular t⁻¹ ((η.hom.hom.app rightFDRep).hom (single u 1)) 1 := by simp
    _ = (η.hom.hom.app rightFDRep).hom (leftRegular t⁻¹ (single u 1)) 1 :=
      congrFun congr(($nat.symm).hom (single u 1)) 1
    _ = evalAlgHom _ _ s (leftRegular t⁻¹ (single u 1)) :=
      congr($hs (leftRegular t⁻¹ (single u 1)))
    _ = _ := by by_cases u = t * s <;> simp_all [single_apply]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Tannaka/Variant952c69c12507965b6f6eaf24fc1facaf35bb5ba552002f01e628d1cb321c8be9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Tannaka/Variant952c69c12507965b6f6eaf24fc1facaf35bb5ba552002f01e628d1cb321c8be9.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e12d007b31b53ce0d180168bb036d6a99d88bec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
