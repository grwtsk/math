# map_natAddEmb_uIcc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:49906166-d6e9-11d5-e7d7-cc958586a5ae",
  "kind": "theorem",
  "lexical_name": "map_natAddEmb_uIcc",
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
  "slug": "map-nataddemb-uicc--70277a9008e68afcc42f100e",
  "source": {
    "blob": "19f7e6a2870491d78c202c6a0a638ecc80e58298",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 613,
    "line": 609,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Fin/Variant85443d83e4d9c40d3c33b2de036620c902d44976fa256387a48dfafe7b89b72d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70277a9008e68afcc42f100e5f4688485242f534448b6bbe9c6bbec7f8df6182",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Fin/Variant85443d83e4d9c40d3c33b2de036620c902d44976fa256387a48dfafe7b89b72d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49906166-d6e9-11d5-e7d7-cc958586a5ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 609–613.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_natAddEmb_uIcc (m) (i j : Fin n) :
    (uIcc i j).map (natAddEmb m) = uIcc (natAdd m i) (natAdd m j) := by
  simp [← coe_inj]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Fin/Variant85443d83e4d9c40d3c33b2de036620c902d44976fa256387a48dfafe7b89b72d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Fin/Variant85443d83e4d9c40d3c33b2de036620c902d44976fa256387a48dfafe7b89b72d.lean#L609).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19f7e6a2870491d78c202c6a0a638ecc80e58298` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
