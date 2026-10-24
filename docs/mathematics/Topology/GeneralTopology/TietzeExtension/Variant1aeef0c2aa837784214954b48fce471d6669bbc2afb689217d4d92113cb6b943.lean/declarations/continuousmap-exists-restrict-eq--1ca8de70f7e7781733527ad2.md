# ContinuousMap.exists_restrict_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:320e6ddd-a3f6-48a6-58a8-e257979ee57e",
  "kind": "theorem",
  "lexical_name": "ContinuousMap.exists_restrict_eq",
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
  "slug": "continuousmap-exists-restrict-eq--1ca8de70f7e7781733527ad2",
  "source": {
    "blob": "0633efa8cd3de9cc199301dabd52fea3bcc6576e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 76,
    "path": "GRWTSK/Topology/GeneralTopology/TietzeExtension/Variant1aeef0c2aa837784214954b48fce471d6669bbc2afb689217d4d92113cb6b943.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ca8de70f7e7781733527ad2baaa08006c24c17a01eef134c2de2f9c4c4e2d5c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TietzeExtension/Variant1aeef0c2aa837784214954b48fce471d6669bbc2afb689217d4d92113cb6b943.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:320e6ddd-a3f6-48a6-58a8-e257979ee57e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContinuousMap.exists_restrict_eq (hs : IsClosed s) (f : C(s, Y)) :
    ∃ (g : C(X, Y)), g.restrict s = f :=
  TietzeExtension.exists_restrict_eq' s hs f

set_option backward.isDefEq.respectTransparency false in
/-- **Tietze extension theorem** for `TietzeExtension` spaces. Let `e` be a closed embedding of a
nonempty topological space `X₁` into a normal topological space `X`. Let `f` be a continuous
function on `X₁` with values in a `TietzeExtension` space `Y`. Then there exists a
continuous function `g : C(X, Y)` such that `g ∘ e = f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TietzeExtension/Variant1aeef0c2aa837784214954b48fce471d6669bbc2afb689217d4d92113cb6b943.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TietzeExtension/Variant1aeef0c2aa837784214954b48fce471d6669bbc2afb689217d4d92113cb6b943.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0633efa8cd3de9cc199301dabd52fea3bcc6576e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
