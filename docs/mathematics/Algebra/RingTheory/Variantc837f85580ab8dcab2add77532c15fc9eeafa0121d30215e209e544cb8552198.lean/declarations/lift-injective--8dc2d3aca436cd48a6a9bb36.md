# lift_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "60788d0b22c9df44fc6bb0d9209614ac5e9bf99f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 166,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c8/c837f85580ab8dcab2add77532c15fc9eeafa0121d30215e209e544cb8552198.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c5403da8-5f2e-833f-60ef-f8c3ddafce1d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7ee5fdf0-3984-9640-6c9d-ff4a78cfc089",
  "kind": "lemma",
  "lexical_name": "lift_injective",
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
  "slug": "lift-injective--8dc2d3aca436cd48a6a9bb36",
  "source": {
    "blob": "60788d0b22c9df44fc6bb0d9209614ac5e9bf99f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 166,
    "path": "GRWTSK/Algebra/Ring/Variantc837f85580ab8dcab2add77532c15fc9eeafa0121d30215e209e544cb8552198.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8dc2d3aca436cd48a6a9bb36812a1cd3e4e1dc8fbbe413a8f5422ba6179f4034",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Variantc837f85580ab8dcab2add77532c15fc9eeafa0121d30215e209e544cb8552198.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ee5fdf0-3984-9640-6c9d-ff4a78cfc089`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lift_injective [Nonempty ι] [IsDirectedOrder ι]
    (injective : ∀ i, Function.Injective <| g i) :
    Function.Injective (lift G f P g Hg) := by
  simp_rw [injective_iff_map_eq_zero] at injective ⊢
  intro z hz
  induction z using DirectLimit.induction_on with
  | ih _ g => rw [lift_of] at hz; rw [injective _ g hz, map_zero]

section OfZeroExact

variable (f' : ∀ i j, i ≤ j → G i →+* G j)
variable [DirectedSystem G fun i j h ↦ f' i j h] [IsDirectedOrder ι]
variable (G f)

open _root_.DirectLimit in
/-- The direct limit constructed as a quotient of the free commutative ring is isomorphic to
the direct limit constructed as a quotient of the disjoint union. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingTheory/Variantc837f85580ab8dcab2add77532c15fc9eeafa0121d30215e209e544cb8552198.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ring/Variantc837f85580ab8dcab2add77532c15fc9eeafa0121d30215e209e544cb8552198.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60788d0b22c9df44fc6bb0d9209614ac5e9bf99f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
