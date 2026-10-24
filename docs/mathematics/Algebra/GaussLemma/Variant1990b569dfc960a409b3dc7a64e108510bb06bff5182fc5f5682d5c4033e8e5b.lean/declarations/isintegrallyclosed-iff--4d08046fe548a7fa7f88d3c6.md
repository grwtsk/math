# isIntegrallyClosed_iff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5e6222858f485c235128d98d33ba0c84aa80c7b2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 180,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/19/1990b569dfc960a409b3dc7a64e108510bb06bff5182fc5f5682d5c4033e8e5b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e27c8966-0285-4a89-be66-8f8d27b7d255",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b91a7abf-4253-ece4-116c-d550740ac440",
  "kind": "theorem",
  "lexical_name": "isIntegrallyClosed_iff'",
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
  "slug": "isintegrallyclosed-iff--4d08046fe548a7fa7f88d3c6",
  "source": {
    "blob": "5e6222858f485c235128d98d33ba0c84aa80c7b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 180,
    "path": "GRWTSK/Algebra/GaussLemma/Variant1990b569dfc960a409b3dc7a64e108510bb06bff5182fc5f5682d5c4033e8e5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d08046fe548a7fa7f88d3c60ed5105575983422b1b92eb56202e3fea9e7ffd8",
  "verification": {
    "reference": "docs/verification/Algebra/GaussLemma/Variant1990b569dfc960a409b3dc7a64e108510bb06bff5182fc5f5682d5c4033e8e5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b91a7abf-4253-ece4-116c-d550740ac440`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isIntegrallyClosed_iff' [IsDomain R] :
    IsIntegrallyClosed R ↔
      ∀ p : R[X], p.Monic → (Irreducible p ↔ Irreducible (p.map <| algebraMap R K)) := by
  constructor
  · intro hR p hp; exact Monic.irreducible_iff_irreducible_map_fraction_map hp
  · intro H
    refine
      (isIntegrallyClosed_iff K).mpr fun {x} hx =>
        RingHom.mem_range.mp <| minpoly.mem_range_of_degree_eq_one R x ?_
    rw [← Monic.degree_map (minpoly.monic hx) (algebraMap R K)]
    apply
      degree_eq_one_of_irreducible_of_root ((H _ <| minpoly.monic hx).mp (minpoly.irreducible hx))
    rw [IsRoot, eval_map, ← aeval_def, minpoly.aeval R x]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GaussLemma/Variant1990b569dfc960a409b3dc7a64e108510bb06bff5182fc5f5682d5c4033e8e5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GaussLemma/Variant1990b569dfc960a409b3dc7a64e108510bb06bff5182fc5f5682d5c4033e8e5b.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e6222858f485c235128d98d33ba0c84aa80c7b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
