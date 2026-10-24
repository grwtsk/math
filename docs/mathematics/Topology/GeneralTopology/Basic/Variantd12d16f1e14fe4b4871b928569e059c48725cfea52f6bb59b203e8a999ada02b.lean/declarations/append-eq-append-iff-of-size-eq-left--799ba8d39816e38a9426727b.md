# append_eq_append_iff_of_size_eq_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:801ca3a0-0b0b-d369-6187-7790616db60b",
  "kind": "theorem",
  "lexical_name": "append_eq_append_iff_of_size_eq_left",
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
  "slug": "append-eq-append-iff-of-size-eq-left--799ba8d39816e38a9426727b",
  "source": {
    "blob": "6ab7e532c8e9810318816e7f88e93a32438a6b6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 272,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantd12d16f1e14fe4b4871b928569e059c48725cfea52f6bb59b203e8a999ada02b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:799ba8d39816e38a9426727b669b08fe94ceca985d4d66391be2276f3eab8009",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantd12d16f1e14fe4b4871b928569e059c48725cfea52f6bb59b203e8a999ada02b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:801ca3a0-0b0b-d369-6187-7790616db60b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem append_eq_append_iff_of_size_eq_left {ws xs ys zs : List α}
    (h : ws.length = xs.length) : ws ++ ys = xs ++ zs ↔ ws = xs ∧ ys = zs := by
  rw [append_eq_append_iff]
  refine ⟨?_, ?_⟩
  · rintro (⟨as, rfl, rfl⟩|⟨as, rfl, rfl⟩) <;> simp_all
  · rintro ⟨rfl, rfl⟩ <;> simp_all

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantd12d16f1e14fe4b4871b928569e059c48725cfea52f6bb59b203e8a999ada02b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantd12d16f1e14fe4b4871b928569e059c48725cfea52f6bb59b203e8a999ada02b.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ab7e532c8e9810318816e7f88e93a32438a6b6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
