# primaryComponent.exists_orderOf_eq_prime_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b3a3bed6-5acb-8f8f-f99f-58d2f9039072",
  "kind": "theorem",
  "lexical_name": "primaryComponent.exists_orderOf_eq_prime_pow",
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
  "slug": "primarycomponent-exists-orderof-eq-prime-pow--23703501f974493921639ac4",
  "source": {
    "blob": "31cb5ce84d4edc5b1ce6323731dbad06571835d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 227,
    "path": "GRWTSK/Algebra/GroupTheory/Torsion/Variantdd1eea4d770aac9b986cc97256efe13e3d7428426ee45a0b60141f2958cbcc30.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23703501f974493921639ac40431487f772c0de050a97f21c20a3cbcd7303db4",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Torsion/Variantdd1eea4d770aac9b986cc97256efe13e3d7428426ee45a0b60141f2958cbcc30.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3a3bed6-5acb-8f8f-f99f-58d2f9039072`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primaryComponent.exists_orderOf_eq_prime_pow (g : CommMonoid.primaryComponent G p) :
    ∃ n : ℕ, orderOf g = p ^ n := by
      obtain ⟨_, hn⟩ := g.property
      rw [orderOf_submonoid g] at hn
      exact ⟨_, hn⟩

/-- The `p`- and `q`-primary components are disjoint for `p ≠ q`. -/
@[to_additive "The `p`- and `q`-primary components are disjoint for `p ≠ q`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Torsion/Variantdd1eea4d770aac9b986cc97256efe13e3d7428426ee45a0b60141f2958cbcc30.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Torsion/Variantdd1eea4d770aac9b986cc97256efe13e3d7428426ee45a0b60141f2958cbcc30.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31cb5ce84d4edc5b1ce6323731dbad06571835d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
