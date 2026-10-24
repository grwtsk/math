# boundedSub_of_lipschitzWith_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "db72c9f1de65f0511b9d94e2ca5d94873e5437c8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 63,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c30215eda6a6a4706d950aa9add4ca8ac4693cad902d0b2cb18a5f26e6decf69.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7c9dd596-97d6-7e2e-1d1f-939b43e50413",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9bd21927-5607-10d7-b6f3-28020e9381c6",
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
  "slug": "boundedsub-of-lipschitzwith-sub--a0cab1ec5570280bb922ccc7",
  "source": {
    "blob": "db72c9f1de65f0511b9d94e2ca5d94873e5437c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 63,
    "path": "GRWTSK/Topology/GeneralTopology/BoundedOperation/Variantc30215eda6a6a4706d950aa9add4ca8ac4693cad902d0b2cb18a5f26e6decf69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0cab1ec5570280bb922ccc74069967b4c9debf7b1d8a386441997b01140bfd3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/BoundedOperation/Variantc30215eda6a6a4706d950aa9add4ca8ac4693cad902d0b2cb18a5f26e6decf69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9bd21927-5607-10d7-b6f3-28020e9381c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma boundedSub_of_lipschitzWith_sub [PseudoMetricSpace R] [Sub R] {K : NNReal}
    (lip : LipschitzWith K (fun (p : R × R) ↦ p.1 - p.2)) :
    BoundedSub R where
  isBounded_sub {s t} s_bdd t_bdd := by
    have bdd : Bornology.IsBounded (s ×ˢ t) := Bornology.IsBounded.prod s_bdd t_bdd
    convert! lip.isBounded_image bdd
    simp

end bounded_sub

section bounded_mul
/-!
### Bounded multiplication and addition
-/

open scoped Pointwise
open Set

/-- A typeclass saying that `(p : R × R) ↦ p.1 + p.2` maps any product of bounded sets to a bounded
set. This property follows from `LipschitzAdd`, and thus automatically holds, e.g., for seminormed
additive groups. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BoundedOperation/Variantc30215eda6a6a4706d950aa9add4ca8ac4693cad902d0b2cb18a5f26e6decf69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BoundedOperation/Variantc30215eda6a6a4706d950aa9add4ca8ac4693cad902d0b2cb18a5f26e6decf69.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db72c9f1de65f0511b9d94e2ca5d94873e5437c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
