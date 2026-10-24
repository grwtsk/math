# boundedSub_of_lipschitzWith_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "80c7f008e3460207e09f6b051ddb1bae27de4ffa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 59,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c5/c52498e1cecbd3799616071237ebd5f0083b180bb2879618c48601fd7b463583.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8b15a748-fa08-af02-db0e-0cfa125d5871",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:000a6cc9-b230-f8b4-bfcc-25a694daa371",
  "kind": "lemma",
  "lexical_name": "boundedSub_of_lipschitzWith_sub",
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
  "slug": "boundedsub-of-lipschitzwith-sub--65108e3e15b58bd70b73a4ad",
  "source": {
    "blob": "80c7f008e3460207e09f6b051ddb1bae27de4ffa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 59,
    "path": "GRWTSK/Topology/MetricTopology/BoundedOperation/Variantc52498e1cecbd3799616071237ebd5f0083b180bb2879618c48601fd7b463583.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65108e3e15b58bd70b73a4ad2296258d7974dbc3922eb2364fd9cd19010dd7e4",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/BoundedOperation/Variantc52498e1cecbd3799616071237ebd5f0083b180bb2879618c48601fd7b463583.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:000a6cc9-b230-f8b4-bfcc-25a694daa371`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma boundedSub_of_lipschitzWith_sub [PseudoMetricSpace R] [Sub R] {K : NNReal}
    (lip : LipschitzWith K (fun (p : R × R) ↦ p.1 - p.2)) :
    BoundedSub R where
  isBounded_sub {s t} s_bdd t_bdd := by
    have bdd : Bornology.IsBounded (s ×ˢ t) := Bornology.IsBounded.prod s_bdd t_bdd
    convert lip.isBounded_image bdd
    ext p
    simp only [Set.mem_image, Set.mem_prod, Prod.exists]
    constructor
    · intro ⟨a, a_in_s, b, b_in_t, eq_p⟩
      exact ⟨a, b, ⟨a_in_s, b_in_t⟩, eq_p⟩
    · intro ⟨a, b, ⟨a_in_s, b_in_t⟩, eq_p⟩
      simpa [← eq_p] using Set.sub_mem_sub a_in_s b_in_t

end bounded_sub


section bounded_mul
/-!
### Bounded multiplication and addition
-/

open Pointwise Set

/-- A typeclass saying that `(p : R × R) ↦ p.1 + p.2` maps any product of bounded sets to a bounded
set. This property follows from `LipschitzAdd`, and thus automatically holds, e.g., for seminormed
additive groups. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/BoundedOperation/Variantc52498e1cecbd3799616071237ebd5f0083b180bb2879618c48601fd7b463583.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/BoundedOperation/Variantc52498e1cecbd3799616071237ebd5f0083b180bb2879618c48601fd7b463583.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80c7f008e3460207e09f6b051ddb1bae27de4ffa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
