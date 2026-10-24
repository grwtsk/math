# Submodule.normedSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d6d95ceba9d65e25f899d8fb9c8d5d3b22b43dae19f542d989b00f8a5a16d65e",
  "kind": "instance",
  "lexical_name": "Submodule.normedSpace",
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
  "slug": "submodule-normedspace--1c02a810e52a6cf964140e36",
  "source": {
    "blob": "beaf9919c2ec0b9dc7e5660038fef4ce1f682fd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 218,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variante82627286af66967edd4a30fcd0f561f00fd9b0532f893d06b90512cf55a6ae1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1c02a810e52a6cf964140e363ba5d0325a11b2c7d2f73c275fd4246eaf9d541c",
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

Occurrence: `declaration:d6d95ceba9d65e25f899d8fb9c8d5d3b22b43dae19f542d989b00f8a5a16d65e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Submodule.normedSpace {𝕜 R : Type*} [SMul 𝕜 R] [NormedField 𝕜] [Ring R] {E : Type*}
    [SeminormedAddCommGroup E] [NormedSpace 𝕜 E] [Module R E] [IsScalarTower 𝕜 R E]
    (s : Submodule R E) : NormedSpace 𝕜 s where norm_smul_le c x := norm_smul_le c (x : E)
#align submodule.normed_space Submodule.normedSpace

end SeminormedAddCommGroup

/-- A linear map from a `Module` to a `NormedSpace` induces a `NormedSpace` structure on the
domain, using the `SeminormedAddCommGroup.induced` norm.

See note [reducible non-instances] -/
@[reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variante82627286af66967edd4a30fcd0f561f00fd9b0532f893d06b90512cf55a6ae1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variante82627286af66967edd4a30fcd0f561f00fd9b0532f893d06b90512cf55a6ae1.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `beaf9919c2ec0b9dc7e5660038fef4ce1f682fd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
