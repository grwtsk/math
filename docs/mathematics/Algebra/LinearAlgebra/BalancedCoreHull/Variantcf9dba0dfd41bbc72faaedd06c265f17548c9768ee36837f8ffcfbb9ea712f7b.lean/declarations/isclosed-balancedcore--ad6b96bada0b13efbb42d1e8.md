# IsClosed.balancedCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be643e58-f287-07cb-dffc-dca13a36441a",
  "kind": "theorem",
  "lexical_name": "IsClosed.balancedCore",
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
  "slug": "isclosed-balancedcore--ad6b96bada0b13efbb42d1e8",
  "source": {
    "blob": "aa64d94f19a2b26b6f4b0abade9639d9500e50ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 228,
    "path": "GRWTSK/Algebra/LinearAlgebra/BalancedCoreHull/Variantcf9dba0dfd41bbc72faaedd06c265f17548c9768ee36837f8ffcfbb9ea712f7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad6b96bada0b13efbb42d1e84b311ae2a7a2b294955fe961b3fbaf80fe617230",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BalancedCoreHull/Variantcf9dba0dfd41bbc72faaedd06c265f17548c9768ee36837f8ffcfbb9ea712f7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be643e58-f287-07cb-dffc-dca13a36441a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem IsClosed.balancedCore (hU : IsClosed U) : IsClosed (balancedCore 𝕜 U) := by
  by_cases h : (0 : E) ∈ U
  · rw [balancedCore_eq_iInter h]
    refine isClosed_iInter fun a => ?_
    refine isClosed_iInter fun ha => ?_
    have ha' := lt_of_lt_of_le zero_lt_one ha
    rw [norm_pos_iff] at ha'
    exact isClosedMap_smul_of_ne_zero ha' U hU
  · have : balancedCore 𝕜 U = ∅ := by
      contrapose! h
      exact balancedCore_nonempty_iff.mp h
    rw [this]
    exact isClosed_empty

-- We don't have a `NontriviallyNormedDivisionRing`, so we use a `NeBot` assumption instead
variable [NeBot (𝓝[≠] (0 : 𝕜))]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BalancedCoreHull/Variantcf9dba0dfd41bbc72faaedd06c265f17548c9768ee36837f8ffcfbb9ea712f7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BalancedCoreHull/Variantcf9dba0dfd41bbc72faaedd06c265f17548c9768ee36837f8ffcfbb9ea712f7b.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa64d94f19a2b26b6f4b0abade9639d9500e50ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
