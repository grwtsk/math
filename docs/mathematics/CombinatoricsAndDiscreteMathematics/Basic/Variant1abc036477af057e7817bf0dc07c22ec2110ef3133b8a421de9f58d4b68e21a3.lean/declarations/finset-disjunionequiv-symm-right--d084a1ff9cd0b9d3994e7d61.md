# Finset.disjUnionEquiv_symm_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c82f9171-bd78-512e-0060-2bc3862a5fb3",
  "kind": "theorem",
  "lexical_name": "Finset.disjUnionEquiv_symm_right",
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
  "slug": "finset-disjunionequiv-symm-right--d084a1ff9cd0b9d3994e7d61",
  "source": {
    "blob": "e6b746e6513326f00d3a1a231b1d36ab50a10f38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 645,
    "line": 639,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant1abc036477af057e7817bf0dc07c22ec2110ef3133b8a421de9f58d4b68e21a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d084a1ff9cd0b9d3994e7d616afe5e57809b04f1c0485368b3f81bc4a2021274",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant1abc036477af057e7817bf0dc07c22ec2110ef3133b8a421de9f58d4b68e21a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c82f9171-bd78-512e-0060-2bc3862a5fb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 639–645.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Finset.disjUnionEquiv_symm_right (h : Disjoint s t) {i : α} (hi : i ∈ t)
    (hi' : i ∈ s.disjUnion t h) :
    (Equiv.Finset.disjUnionEquiv s t h).symm ⟨i, hi'⟩ = Sum.inr ⟨i, hi⟩ := by
  simp [Equiv.symm_apply_eq]

/-- The type of dependent functions on the disjoint union of finsets `s ∪ t` is equivalent to the
  type of pairs of functions on `s` and on `t`. This is similar to `Equiv.sumPiEquivProdPi`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant1abc036477af057e7817bf0dc07c22ec2110ef3133b8a421de9f58d4b68e21a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant1abc036477af057e7817bf0dc07c22ec2110ef3133b8a421de9f58d4b68e21a3.lean#L639).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6b746e6513326f00d3a1a231b1d36ab50a10f38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
