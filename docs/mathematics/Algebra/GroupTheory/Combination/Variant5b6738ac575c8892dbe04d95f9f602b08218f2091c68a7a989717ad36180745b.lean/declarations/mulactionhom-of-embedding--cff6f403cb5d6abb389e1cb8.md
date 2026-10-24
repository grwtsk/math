# mulActionHom_of_embedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6f89a8831f4b6220b316bc8db308851d10686fcdaab9d4506e88f2ba51a319c5",
  "kind": "def",
  "lexical_name": "mulActionHom_of_embedding",
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
  "slug": "mulactionhom-of-embedding--cff6f403cb5d6abb389e1cb8",
  "source": {
    "blob": "3d8a868210145dc990640f55fe12d0a969a57930",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 142,
    "path": "GRWTSK/Algebra/GroupTheory/Combination/Variant5b6738ac575c8892dbe04d95f9f602b08218f2091c68a7a989717ad36180745b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cff6f403cb5d6abb389e1cb8c31f4f3506a6d67a7496203d792af06997edd7cc",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Combination/Variant5b6738ac575c8892dbe04d95f9f602b08218f2091c68a7a989717ad36180745b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6f89a8831f4b6220b316bc8db308851d10686fcdaab9d4506e88f2ba51a319c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mulActionHom_of_embedding : (Fin n ↪ α) →[G] powersetCard α n where
  toFun := ofFinEmb n α
  map_smul' g f := by
    rw [← Subtype.coe_inj, coe_smul, f.smul_def, val_ofFinEmb, val_ofFinEmb,
      smul_finset_def, ← map_map, map_eq_image]
    simp [toPerm]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Combination/Variant5b6738ac575c8892dbe04d95f9f602b08218f2091c68a7a989717ad36180745b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Combination/Variant5b6738ac575c8892dbe04d95f9f602b08218f2091c68a7a989717ad36180745b.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d8a868210145dc990640f55fe12d0a969a57930` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
