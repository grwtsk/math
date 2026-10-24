# finrank_A

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dc594f8d81f2a9ac13dab5668dba02cfef8b32a5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 338,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1b/1b94fb5c718e3e4d68fa3203ab2201b8702365ceb9b928725f9f51a749f5a151.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bfe06642-80c7-c17f-10bf-177f925bbc1a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7c1f86a5-d379-daba-c9b9-6d8a244e7b34",
  "kind": "theorem",
  "lexical_name": "finrank_A",
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
  "slug": "finrank-a--60bab0b4e6704dfaf520e2e8",
  "source": {
    "blob": "dc594f8d81f2a9ac13dab5668dba02cfef8b32a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 358,
    "line": 338,
    "path": "GRWTSK/Algebra/LinearAlgebra/GrothendieckPower/Variant1b94fb5c718e3e4d68fa3203ab2201b8702365ceb9b928725f9f51a749f5a151.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60bab0b4e6704dfaf520e2e80352b1c0d27dbe3120142b0f979ea3c7ca0bf7b2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/GrothendieckPower/Variant1b94fb5c718e3e4d68fa3203ab2201b8702365ceb9b928725f9f51a749f5a151.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c1f86a5-d379-daba-c9b9-6d8a244e7b34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 338–358.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finrank_A : Module.finrank R A = 4 := by
  rw [← Module.finrank_mul_finrank R B A, finrank_B, finrank_A_over_B]

/-!
### The universal property of `A`

An `R`-algebra map out of `A = R[U, V] / (U² - abU + b²V, V² - a²V)` amounts to a pair of
elements of the target satisfying the two defining relations.  The construction goes through
the tower `R → B → A`: the image of `V` determines an `R`-algebra map out of
`B = R[V] / (V² - a²V)`, which makes the target a `B`-algebra, and the image of `U` then
determines a quadratic lift out of `A`.  The `B`-algebra structure depends on the chosen
image of `V`, so it is kept local to the construction and never becomes an instance: the
coproduct below, for example, uses a `B`-algebra structure on `A ⊗[R] A` different from the
canonical one through the left tensor factor.
-/

section UniversalProperty

variable {S : Type*} [CommRing S] [Algebra R S]

/-- The `R`-algebra map `B →ₐ[R] S` sending `VB` to a root of `X² - a²X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/GrothendieckPower/Variant1b94fb5c718e3e4d68fa3203ab2201b8702365ceb9b928725f9f51a749f5a151.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/GrothendieckPower/Variant1b94fb5c718e3e4d68fa3203ab2201b8702365ceb9b928725f9f51a749f5a151.lean#L338).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc594f8d81f2a9ac13dab5668dba02cfef8b32a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
