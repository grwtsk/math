# Bornology.IsBounded.exists_pos_norm_le'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:79a0e11f-ee6b-345e-ba57-c9cc33b69c79",
  "kind": "lemma",
  "lexical_name": "Bornology.IsBounded.exists_pos_norm_le'",
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
  "slug": "bornology-isbounded-exists-pos-norm-le--c2ba000c2cfe3b1cce9c86ac",
  "source": {
    "blob": "a8b3cd9ba9a8019b3e2e39fba30f0eb23d783062",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 86,
    "path": "GRWTSK/Topology/GeneralTopology/Bounded/Variantd02b232ababa95fd68f2ea536ef9c5132b2df922eaad9c6ad63718713ed08624.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2ba000c2cfe3b1cce9c86ac3f545afb775b0b02c387b722073cf3901781c969",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bounded/Variantd02b232ababa95fd68f2ea536ef9c5132b2df922eaad9c6ad63718713ed08624.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79a0e11f-ee6b-345e-ba57-c9cc33b69c79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Bornology.IsBounded.exists_pos_norm_le' (hs : IsBounded s) : ∃ R > 0, ∀ x ∈ s, ‖x‖ ≤ R :=
  let ⟨R₀, hR₀⟩ := hs.exists_norm_le'
  ⟨max R₀ 1, by positivity, fun x hx => (hR₀ x hx).trans <| le_max_left _ _⟩

@[to_additive Bornology.IsBounded.exists_pos_norm_lt]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bounded/Variantd02b232ababa95fd68f2ea536ef9c5132b2df922eaad9c6ad63718713ed08624.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bounded/Variantd02b232ababa95fd68f2ea536ef9c5132b2df922eaad9c6ad63718713ed08624.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8b3cd9ba9a8019b3e2e39fba30f0eb23d783062` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
