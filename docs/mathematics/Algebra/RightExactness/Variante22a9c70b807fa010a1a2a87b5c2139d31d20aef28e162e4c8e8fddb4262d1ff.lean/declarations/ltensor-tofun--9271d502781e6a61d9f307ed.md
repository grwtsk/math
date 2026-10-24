# lTensor.toFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:68419c5995044c1030b2afa81079723112563741e0b83bda344188e68f4e42f3",
  "kind": "def",
  "lexical_name": "lTensor.toFun",
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
  "slug": "ltensor-tofun--9271d502781e6a61d9f307ed",
  "source": {
    "blob": "a678aa0124f33b23291ce973b8be80224b14791b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 190,
    "path": "GRWTSK/Algebra/RightExactness/Variante22a9c70b807fa010a1a2a87b5c2139d31d20aef28e162e4c8e8fddb4262d1ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9271d502781e6a61d9f307eda38b0754ec8b0a7a992ce368b9b1b527f2fe5ee3",
  "verification": {
    "reference": "docs/verification/Algebra/RightExactness/Variante22a9c70b807fa010a1a2a87b5c2139d31d20aef28e162e4c8e8fddb4262d1ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:68419c5995044c1030b2afa81079723112563741e0b83bda344188e68f4e42f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def lTensor.toFun (hfg : Exact f g) :
    Q ⊗[R] N ⧸ LinearMap.range (lTensor Q f) →ₗ[R] Q ⊗[R] P :=
  Submodule.liftQ _ (lTensor Q g) <| by
    rw [LinearMap.range_le_iff_comap, ← LinearMap.ker_comp,
      ← lTensor_comp, hfg.linearMap_comp_eq_zero, lTensor_zero, ker_zero]

/-- The inverse map in `lTensor.equiv_of_rightInverse` (computably, given a right inverse) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RightExactness/Variante22a9c70b807fa010a1a2a87b5c2139d31d20aef28e162e4c8e8fddb4262d1ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RightExactness/Variante22a9c70b807fa010a1a2a87b5c2139d31d20aef28e162e4c8e8fddb4262d1ff.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a678aa0124f33b23291ce973b8be80224b14791b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
