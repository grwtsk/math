# remap_lookup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e3af70b-dbfc-b88d-c122-5efaedc2c344",
  "kind": "theorem",
  "lexical_name": "remap_lookup",
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
  "slug": "remap-lookup--16e3b34ef67a4de35d7553cc",
  "source": {
    "blob": "7585644ab7d689bab3a93dcba1e6a9a4a21b190f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 211,
    "path": "GRWTSK/Combinatorics/DirectedGraph/PrefixTableCompaction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16e3b34ef67a4de35d7553ccfacd61a3d4aa5dc83a760d54a72c0c87d4094cb3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCompaction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e3af70b-dbfc-b88d-c122-5efaedc2c344`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem remap_lookup (state : State V Key) (hstate : WellFormed state) (slot target : Nat)
    (hremap : remap state hstate slot = some target) :
    (compact state hstate).dictionary[target]? = state.dictionary[slot]? := by
  cases hlookup : state.dictionary[slot]? with
  | none => simp [remap, hlookup] at hremap
  | some initial =>
    by_cases hmem : initial ∈ (compact state hstate).dictionary
    · have hequal : position (realRows state hstate) initial = target :=
        Option.some.inj ((remap_retained state hstate slot initial hlookup hmem).symm.trans hremap)
      rw [← hequal, compact_dictionary]
      exact position_lookup _ initial (by simpa only [compact_dictionary] using hmem)
    · rw [remap_removed state hstate slot initial hlookup hmem] at hremap
      cases hremap

/-- Every retained nonempty node's actual old parent receives the new canonical parent slot. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCompaction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/DirectedGraph/PrefixTableCompaction.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7585644ab7d689bab3a93dcba1e6a9a4a21b190f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
