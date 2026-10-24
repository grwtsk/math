# instRootCompTriple

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:978b04f26b6e8d981455232c0cf81bb18554af933b343f685e4f390aba167eb8",
  "kind": "instance",
  "lexical_name": "instRootCompTriple",
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
  "slug": "instrootcomptriple--e6dae55cc69c7ec0ea330e01",
  "source": {
    "blob": "13da32cc7b5a5662e3cc0659c013d3ee7e55f031",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 78,
    "path": "GRWTSK/Algebra/GroupTheory/CompTypeclasses/Variantd6ba683d6c150b59d1eb3383421f64320d63c1e3d3b6eac6a2258ae6eb4b39d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e6dae55cc69c7ec0ea330e017377ddf625ac8a314457d4a5039ed447f8e7c62e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/CompTypeclasses/Variantd6ba683d6c150b59d1eb3383421f64320d63c1e3d3b6eac6a2258ae6eb4b39d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:978b04f26b6e8d981455232c0cf81bb18554af933b343f685e4f390aba167eb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instRootCompTriple {φ : M →* N} {ψ : N →* P} {χ : M →* P} [κ : CompTriple φ ψ χ] :
    _root_.CompTriple φ ψ χ where
  comp_eq := by rw [← MonoidHom.coe_comp, κ.comp_eq]

/-- `φ`, `ψ` and `ψ.comp φ` form a `MonoidHom.CompTriple`

  (to be used with care, because no simplification is done) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/CompTypeclasses/Variantd6ba683d6c150b59d1eb3383421f64320d63c1e3d3b6eac6a2258ae6eb4b39d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/CompTypeclasses/Variantd6ba683d6c150b59d1eb3383421f64320d63c1e3d3b6eac6a2258ae6eb4b39d7.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13da32cc7b5a5662e3cc0659c013d3ee7e55f031` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
