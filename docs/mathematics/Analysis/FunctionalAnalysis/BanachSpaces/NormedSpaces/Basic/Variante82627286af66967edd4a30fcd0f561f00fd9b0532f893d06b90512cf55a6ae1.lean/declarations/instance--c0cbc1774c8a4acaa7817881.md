# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:94d08b0566b5d146643fb027adbcd8525fed65925bad51b48abd01632752f913",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--c0cbc1774c8a4acaa7817881",
  "source": {
    "blob": "beaf9919c2ec0b9dc7e5660038fef4ce1f682fd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 379,
    "line": 363,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variante82627286af66967edd4a30fcd0f561f00fd9b0532f893d06b90512cf55a6ae1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c0cbc1774c8a4acaa781788119cf305ff8617234a31cd38524467a4ef5642392",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variante82627286af66967edd4a30fcd0f561f00fd9b0532f893d06b90512cf55a6ae1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:94d08b0566b5d146643fb027adbcd8525fed65925bad51b48abd01632752f913`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 363–379.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
instance (priority := 100) RealNormedSpace.noncompactSpace [NormedSpace ℝ E] : NoncompactSpace E :=
  NormedSpace.noncompactSpace ℝ E
#align real_normed_space.noncompact_space RealNormedSpace.noncompactSpace

end NontriviallyNormedSpace

section NormedAlgebra

/-- A normed algebra `𝕜'` over `𝕜` is normed module that is also an algebra.

See the implementation notes for `Algebra` for a discussion about non-unital algebras. Following
the strategy there, a non-unital *normed* algebra can be written as:
```lean
variables [NormedField 𝕜] [NonunitalSeminormedRing 𝕜']
variables [NormedModule 𝕜 𝕜'] [SMulCommClass 𝕜 𝕜' 𝕜'] [IsScalarTower 𝕜 𝕜' 𝕜']
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variante82627286af66967edd4a30fcd0f561f00fd9b0532f893d06b90512cf55a6ae1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variante82627286af66967edd4a30fcd0f561f00fd9b0532f893d06b90512cf55a6ae1.lean#L363).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `beaf9919c2ec0b9dc7e5660038fef4ce1f682fd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
