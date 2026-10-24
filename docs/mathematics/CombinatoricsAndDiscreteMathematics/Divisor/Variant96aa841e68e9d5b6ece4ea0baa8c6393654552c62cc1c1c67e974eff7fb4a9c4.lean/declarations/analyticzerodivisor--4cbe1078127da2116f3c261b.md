# AnalyticZeroDivisor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1d1914892f4498a7e59220cf2e97870739a628f8524c77212af0525fc02588c7",
  "kind": "structure",
  "lexical_name": "AnalyticZeroDivisor",
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
  "slug": "analyticzerodivisor--4cbe1078127da2116f3c261b",
  "source": {
    "blob": "6f28c1862d5a36249817c628ab143e872b51e4cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 24,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Divisor/Variant96aa841e68e9d5b6ece4ea0baa8c6393654552c62cc1c1c67e974eff7fb4a9c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4cbe1078127da2116f3c261b54acb5fa982069b90059c5541d8e0ac358a526d8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Divisor/Variant96aa841e68e9d5b6ece4ea0baa8c6393654552c62cc1c1c67e974eff7fb4a9c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1d1914892f4498a7e59220cf2e97870739a628f8524c77212af0525fc02588c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure AnalyticZeroDivisor
    (xi : ℂ → ℂ)
    (region : Set ℂ) where
  points : Finset ℂ
  multiplicity : ℂ → Nat
  mem_iff :
    ∀ z,
      z ∈ points ↔
        z ∈ region ∧ xi z = 0
  multiplicity_pos :
    ∀ z ∈ points,
      0 < multiplicity z

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Divisor/Variant96aa841e68e9d5b6ece4ea0baa8c6393654552c62cc1c1c67e974eff7fb4a9c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Divisor/Variant96aa841e68e9d5b6ece4ea0baa8c6393654552c62cc1c1c67e974eff7fb4a9c4.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f28c1862d5a36249817c628ab143e872b51e4cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
