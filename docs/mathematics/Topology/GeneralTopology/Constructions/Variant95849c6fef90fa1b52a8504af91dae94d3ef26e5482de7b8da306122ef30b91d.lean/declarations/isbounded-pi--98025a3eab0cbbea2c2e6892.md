# isBounded_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9ccc22ec-511d-1233-6bc5-b5e772987d77",
  "kind": "theorem",
  "lexical_name": "isBounded_pi",
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
  "slug": "isbounded-pi--98025a3eab0cbbea2c2e6892",
  "source": {
    "blob": "d67f7445c63f0f0ae76311006347ba664bea9f25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 126,
    "path": "GRWTSK/Topology/GeneralTopology/Constructions/Variant95849c6fef90fa1b52a8504af91dae94d3ef26e5482de7b8da306122ef30b91d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98025a3eab0cbbea2c2e6892aac31918b9402e4b89e395fb55e5317dc741a5cd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Constructions/Variant95849c6fef90fa1b52a8504af91dae94d3ef26e5482de7b8da306122ef30b91d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ccc22ec-511d-1233-6bc5-b5e772987d77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isBounded_pi : IsBounded (pi univ S) ↔ (∃ i, S i = ∅) ∨ ∀ i, IsBounded (S i) := by
  by_cases hne : ∃ i, S i = ∅
  · simp [hne, univ_pi_eq_empty_iff.2 hne]
  · simp only [hne, false_or_iff]
    simp only [not_exists, ← Ne.def, ← nonempty_iff_ne_empty, ← univ_pi_nonempty_iff] at hne
    exact isBounded_pi_of_nonempty hne
#align bornology.is_bounded_pi Bornology.isBounded_pi

/-!
### Bounded sets in `{x // p x}`
-/


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Constructions/Variant95849c6fef90fa1b52a8504af91dae94d3ef26e5482de7b8da306122ef30b91d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Constructions/Variant95849c6fef90fa1b52a8504af91dae94d3ef26e5482de7b8da306122ef30b91d.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d67f7445c63f0f0ae76311006347ba664bea9f25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
