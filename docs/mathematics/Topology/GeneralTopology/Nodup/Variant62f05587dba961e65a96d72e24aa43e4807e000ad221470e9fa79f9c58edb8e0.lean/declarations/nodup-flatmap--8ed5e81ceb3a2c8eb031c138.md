# nodup_flatMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b285c68b-3c79-b90d-290f-cfeb6e190ac0",
  "kind": "theorem",
  "lexical_name": "nodup_flatMap",
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
  "slug": "nodup-flatmap--8ed5e81ceb3a2c8eb031c138",
  "source": {
    "blob": "30e9411c4a15154dd639675750bdb0606593c79a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 301,
    "path": "GRWTSK/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ed5e81ceb3a2c8eb031c1380076339c0d1b91705924ea475323aa943645ae66",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b285c68b-3c79-b90d-290f-cfeb6e190ac0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 301–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nodup_flatMap {l₁ : List α} {f : α → List β} :
    Nodup (l₁.flatMap f) ↔
      (∀ x ∈ l₁, Nodup (f x)) ∧ Pairwise (Disjoint on f) l₁ := by
  simp only [List.flatMap, nodup_flatten, pairwise_map, and_comm, and_left_comm, mem_map,
    exists_imp, and_imp]
  rw [show (∀ (l : List β) (x : α), f x = l → x ∈ l₁ → Nodup l) ↔ ∀ x : α, x ∈ l₁ → Nodup (f x)
      from forall_swap.trans <| forall_congr' fun _ => forall_eq']

@[deprecated (since := "2025-10-16")] alias nodup_bind := nodup_flatMap

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Nodup/Variant62f05587dba961e65a96d72e24aa43e4807e000ad221470e9fa79f9c58edb8e0.lean#L301).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30e9411c4a15154dd639675750bdb0606593c79a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
