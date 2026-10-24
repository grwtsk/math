# instSeminormClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dd5443c3e536d2886a110e1bfc18cc8e1e97cb2b1ae8e2fa36d1b6a2810ed2c1",
  "kind": "instance",
  "lexical_name": "instSeminormClass",
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
  "slug": "instseminormclass--290f559f7bf9c5426965ad0b",
  "source": {
    "blob": "f55991f82ac638380bcf137118898403dcec9249",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 128,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Seminorm/Variant1b88939387aeb8744537f8d3b136fb3d0f661b18e35abb214a1b59b95cbdd666.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:290f559f7bf9c5426965ad0bf88386fd1363d7f193411882bf0b685bf210eee8",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Seminorm/Variant1b88939387aeb8744537f8d3b136fb3d0f661b18e35abb214a1b59b95cbdd666.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dd5443c3e536d2886a110e1bfc18cc8e1e97cb2b1ae8e2fa36d1b6a2810ed2c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instSeminormClass : SeminormClass (Seminorm 𝕜 E) 𝕜 E where
  coe f := f.toFun
  coe_injective' f g h := by
    rcases f with ⟨⟨_⟩⟩
    rcases g with ⟨⟨_⟩⟩
    congr
  map_zero f := f.map_zero'
  map_add_le_add f := f.add_le'
  map_neg_eq_map f := f.neg'
  map_smul_eq_mul f := f.smul'
#align seminorm.seminorm_class Seminorm.instSeminormClass

/-- Helper instance for when there's too many metavariables to apply `FunLike.hasCoeToFun`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Seminorm/Variant1b88939387aeb8744537f8d3b136fb3d0f661b18e35abb214a1b59b95cbdd666.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Seminorm/Variant1b88939387aeb8744537f8d3b136fb3d0f661b18e35abb214a1b59b95cbdd666.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f55991f82ac638380bcf137118898403dcec9249` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
