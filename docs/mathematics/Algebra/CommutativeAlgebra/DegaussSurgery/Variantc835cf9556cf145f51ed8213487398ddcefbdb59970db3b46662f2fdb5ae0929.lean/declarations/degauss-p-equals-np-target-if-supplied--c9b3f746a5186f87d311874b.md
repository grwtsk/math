# degauss_p_equals_np_target_if_supplied

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0bc612c7-afab-9c8a-d946-e91e57d0685b",
  "kind": "theorem",
  "lexical_name": "degauss_p_equals_np_target_if_supplied",
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
  "slug": "degauss-p-equals-np-target-if-supplied--c9b3f746a5186f87d311874b",
  "source": {
    "blob": "c85301b767f1c6d612bc6b2c2e33fd676c36af41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 189,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/DegaussSurgery/Variantc835cf9556cf145f51ed8213487398ddcefbdb59970db3b46662f2fdb5ae0929.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9b3f746a5186f87d311874b36998b6f09b73a0d31ffed222261c7dc61c4bbfc",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/DegaussSurgery/Variantc835cf9556cf145f51ed8213487398ddcefbdb59970db3b46662f2fdb5ae0929.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0bc612c7-afab-9c8a-d946-e91e57d0685b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem degauss_p_equals_np_target_if_supplied
    (T : DegaussPEqualsNPTarget)
    (G : GlitchedDegaussRuleset) :
    ∃ S : SmoothDegaussRuleset, S.moveClass = G.moveClass :=
  T.everyGlitchSmoothable G

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/DegaussSurgery/Variantc835cf9556cf145f51ed8213487398ddcefbdb59970db3b46662f2fdb5ae0929.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/DegaussSurgery/Variantc835cf9556cf145f51ed8213487398ddcefbdb59970db3b46662f2fdb5ae0929.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c85301b767f1c6d612bc6b2c2e33fd676c36af41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
