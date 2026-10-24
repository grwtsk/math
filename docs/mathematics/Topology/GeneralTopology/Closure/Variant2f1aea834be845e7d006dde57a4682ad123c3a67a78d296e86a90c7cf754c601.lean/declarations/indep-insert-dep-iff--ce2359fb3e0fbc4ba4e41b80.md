# Indep.insert_dep_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:04d63335-6113-1fcf-b354-0eb65a052ea1",
  "kind": "lemma",
  "lexical_name": "Indep.insert_dep_iff",
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
  "slug": "indep-insert-dep-iff--ce2359fb3e0fbc4ba4e41b80",
  "source": {
    "blob": "47c1114aae9848672188b2156ac53232436a03d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 387,
    "line": 383,
    "path": "GRWTSK/Topology/GeneralTopology/Closure/Variant2f1aea834be845e7d006dde57a4682ad123c3a67a78d296e86a90c7cf754c601.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce2359fb3e0fbc4ba4e41b8093501182f3c7b926047b3a05241b18ffb6685676",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Closure/Variant2f1aea834be845e7d006dde57a4682ad123c3a67a78d296e86a90c7cf754c601.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04d63335-6113-1fcf-b354-0eb65a052ea1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 383–387.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Indep.insert_dep_iff (hI : M.Indep I) : M.Dep (insert e I) ↔ e ∈ M.closure I \ I := by
  rw [mem_diff, hI.mem_closure_iff, or_and_right, and_not_self_iff, or_false,
    iff_self_and, imp_not_comm]
  intro heI; rw [insert_eq_of_mem heI]; exact hI.not_dep

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Closure/Variant2f1aea834be845e7d006dde57a4682ad123c3a67a78d296e86a90c7cf754c601.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Closure/Variant2f1aea834be845e7d006dde57a4682ad123c3a67a78d296e86a90c7cf754c601.lean#L383).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47c1114aae9848672188b2156ac53232436a03d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
