# toIcoMod_toIcoMod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f72ae01-58a3-c851-75c7-5644e9edd3df",
  "kind": "theorem",
  "lexical_name": "toIcoMod_toIcoMod",
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
  "slug": "toicomod-toicomod--c36bdc84abd1e0828b6af8a5",
  "source": {
    "blob": "211821c47ae16d2ebeb3103f7c766fd61a123b02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 627,
    "line": 624,
    "path": "GRWTSK/Algebra/UniversalAlgebra/ToIntervalMod/Variantfe49e2fa094ba813fc479907fe73bbf1b71cdebd2d529eef8384c8a1882031c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c36bdc84abd1e0828b6af8a50ad91f265d901f242264473dd704ce9107fe6518",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/ToIntervalMod/Variantfe49e2fa094ba813fc479907fe73bbf1b71cdebd2d529eef8384c8a1882031c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f72ae01-58a3-c851-75c7-5644e9edd3df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 624–627.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toIcoMod_toIcoMod (a₁ a₂ b : α) : toIcoMod hp a₁ (toIcoMod hp a₂ b) = toIcoMod hp a₁ b :=
  (toIcoMod_eq_toIcoMod _).2 ⟨toIcoDiv hp a₂ b, self_sub_toIcoMod hp a₂ b⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/ToIntervalMod/Variantfe49e2fa094ba813fc479907fe73bbf1b71cdebd2d529eef8384c8a1882031c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/ToIntervalMod/Variantfe49e2fa094ba813fc479907fe73bbf1b71cdebd2d529eef8384c8a1882031c4.lean#L624).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `211821c47ae16d2ebeb3103f7c766fd61a123b02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
