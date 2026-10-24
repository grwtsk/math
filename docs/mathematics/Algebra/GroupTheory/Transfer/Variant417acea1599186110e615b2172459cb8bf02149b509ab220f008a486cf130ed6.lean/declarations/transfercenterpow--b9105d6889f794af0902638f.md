# transferCenterPow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a2e1fd566f40061040cfbeb85575ff1235f940e88ecccf4fd69cf978db331de7",
  "kind": "def",
  "lexical_name": "transferCenterPow",
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
  "slug": "transfercenterpow--b9105d6889f794af0902638f",
  "source": {
    "blob": "c98355533cabbb878b3faada7ab0f73e16d42d09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 204,
    "path": "GRWTSK/Algebra/GroupTheory/Transfer/Variant417acea1599186110e615b2172459cb8bf02149b509ab220f008a486cf130ed6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b9105d6889f794af0902638fc79e34b4a83708420b9837c4c5397021b334141d",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Transfer/Variant417acea1599186110e615b2172459cb8bf02149b509ab220f008a486cf130ed6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a2e1fd566f40061040cfbeb85575ff1235f940e88ecccf4fd69cf978db331de7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def transferCenterPow [FiniteIndex (center G)] : G →* center G where
  toFun g := ⟨g ^ (center G).index, (center G).pow_index_mem g⟩
  map_one' := Subtype.ext (one_pow (center G).index)
  map_mul' a b := by simp_rw [← show ∀ _, (_ : center G) = _ from transfer_center_eq_pow, map_mul]
#align monoid_hom.transfer_center_pow MonoidHom.transferCenterPow

variable {G}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Transfer/Variant417acea1599186110e615b2172459cb8bf02149b509ab220f008a486cf130ed6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Transfer/Variant417acea1599186110e615b2172459cb8bf02149b509ab220f008a486cf130ed6.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c98355533cabbb878b3faada7ab0f73e16d42d09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
