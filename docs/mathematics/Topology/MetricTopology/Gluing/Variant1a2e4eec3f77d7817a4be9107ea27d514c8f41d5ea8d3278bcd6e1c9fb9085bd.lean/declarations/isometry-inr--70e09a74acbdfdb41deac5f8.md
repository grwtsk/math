# isometry_inr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cdd1497f199806dccef8b9d3c17022aa1b1a9d72",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 302,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1a2e4eec3f77d7817a4be9107ea27d514c8f41d5ea8d3278bcd6e1c9fb9085bd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b2779661-b634-ace3-31f5-1dbd24636250",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1ae4eefb-983f-bcb4-74f2-e2eb46d44aa7",
  "kind": "theorem",
  "lexical_name": "isometry_inr",
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
  "slug": "isometry-inr--70e09a74acbdfdb41deac5f8",
  "source": {
    "blob": "cdd1497f199806dccef8b9d3c17022aa1b1a9d72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 323,
    "line": 302,
    "path": "GRWTSK/Topology/MetricTopology/Gluing/Variant1a2e4eec3f77d7817a4be9107ea27d514c8f41d5ea8d3278bcd6e1c9fb9085bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70e09a74acbdfdb41deac5f87eae01bf01806996d966554c70035910a4d128a3",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Gluing/Variant1a2e4eec3f77d7817a4be9107ea27d514c8f41d5ea8d3278bcd6e1c9fb9085bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ae4eefb-983f-bcb4-74f2-e2eb46d44aa7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–323.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isometry_inr : Isometry (Sum.inr : Y → Sum X Y) :=
  Isometry.of_dist_eq fun _ _ => rfl
#align metric.isometry_inr Metric.isometry_inr

end Sum

namespace Sigma

/- Copy of the previous paragraph, but for arbitrary disjoint unions instead of the disjoint union
of two spaces. I.e., work with sigma types instead of sum types. -/
variable {ι : Type*} {E : ι → Type*} [∀ i, MetricSpace (E i)]

open Classical

/-- Distance on a disjoint union. There are many (noncanonical) ways to put a distance compatible
with each factor.
We choose a construction that works for unbounded spaces, but requires basepoints,
chosen arbitrarily.
We embed isometrically each factor, set the basepoints at distance 1, arbitrarily,
and say that the distance from `a` to `b` is the sum of the distances of `a` and `b` to
their respective basepoints, plus the distance 1 between the basepoints.
Since there is an arbitrary choice in this construction, it is not an instance by default. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Gluing/Variant1a2e4eec3f77d7817a4be9107ea27d514c8f41d5ea8d3278bcd6e1c9fb9085bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Gluing/Variant1a2e4eec3f77d7817a4be9107ea27d514c8f41d5ea8d3278bcd6e1c9fb9085bd.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdd1497f199806dccef8b9d3c17022aa1b1a9d72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
