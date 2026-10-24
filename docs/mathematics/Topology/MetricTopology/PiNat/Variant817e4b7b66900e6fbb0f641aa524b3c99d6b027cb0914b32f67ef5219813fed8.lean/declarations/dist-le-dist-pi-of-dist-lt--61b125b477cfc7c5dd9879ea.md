# dist_le_dist_pi_of_dist_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c081c0178e9661d20c8edff18db3210ec4d7338d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 792,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8e41cd56-e5e8-2c8a-33f5-1bcc3fe67232",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9f1c08fd-ba1f-c4f7-3336-7b6bd0daa259",
  "kind": "theorem",
  "lexical_name": "dist_le_dist_pi_of_dist_lt",
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
  "slug": "dist-le-dist-pi-of-dist-lt--61b125b477cfc7c5dd9879ea",
  "source": {
    "blob": "c081c0178e9661d20c8edff18db3210ec4d7338d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 803,
    "line": 792,
    "path": "GRWTSK/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61b125b477cfc7c5dd9879eab0637900b9cd5a077f0984f98bb5fd212e1cdfba",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f1c08fd-ba1f-c4f7-3336-7b6bd0daa259`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 792–803.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_le_dist_pi_of_dist_lt {x y : ∀ i, F i} {i : ι} (h : dist x y < (1 / 2) ^ encode i) :
    dist (x i) (y i) ≤ dist x y := by
  simpa only [not_le.2 h, false_or] using min_le_iff.1 (min_dist_le_dist_pi x y i)

open Topology Filter NNReal

variable (E)

/-- Given a countable family of metric spaces, one may put a distance on their product `Π i, E i`,
defining the right topology and uniform structure. It is highly non-canonical, though, and therefore
not registered as a global instance.
The distance we use here is `dist x y = ∑' n, min (1/2)^(encode i) (dist (x n) (y n))`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean#L792).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c081c0178e9661d20c8edff18db3210ec4d7338d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
