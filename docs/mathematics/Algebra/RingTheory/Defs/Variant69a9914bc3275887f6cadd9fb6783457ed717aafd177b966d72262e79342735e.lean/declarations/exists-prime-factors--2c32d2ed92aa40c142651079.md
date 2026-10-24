# exists_prime_factors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f3b3cd1-cf9f-5ea0-b835-b5198fac47a2",
  "kind": "theorem",
  "lexical_name": "exists_prime_factors",
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
  "slug": "exists-prime-factors--2c32d2ed92aa40c142651079",
  "source": {
    "blob": "da6d38bf4123984039eaf257bdac2a5dbc9d47eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 149,
    "path": "GRWTSK/Algebra/RingTheory/Defs/Variant69a9914bc3275887f6cadd9fb6783457ed717aafd177b966d72262e79342735e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c32d2ed92aa40c14265107934f1e2b7c02c2470b49614790f6aecd7260b3085",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Defs/Variant69a9914bc3275887f6cadd9fb6783457ed717aafd177b966d72262e79342735e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f3b3cd1-cf9f-5ea0-b835-b5198fac47a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_prime_factors (a : α) :
    a ≠ 0 → ∃ f : Multiset α, (∀ b ∈ f, Prime b) ∧ f.prod ~ᵤ a := by
  simp_rw [← UniqueFactorizationMonoid.irreducible_iff_prime]
  apply WfDvdMonoid.exists_factors a

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Defs/Variant69a9914bc3275887f6cadd9fb6783457ed717aafd177b966d72262e79342735e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Defs/Variant69a9914bc3275887f6cadd9fb6783457ed717aafd177b966d72262e79342735e.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da6d38bf4123984039eaf257bdac2a5dbc9d47eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
