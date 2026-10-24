# iUnion_univ_pi_of_monotone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc833e73-8929-4424-fba2-2b7d1b5085e1",
  "kind": "theorem",
  "lexical_name": "iUnion_univ_pi_of_monotone",
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
  "slug": "iunion-univ-pi-of-monotone--8721f81328cc30fb1eb3630e",
  "source": {
    "blob": "925ee3fb8c1f0362e08f308b3d82b79c987d3f23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 391,
    "line": 382,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variant9c026a5f2d6bc28fcef22e2d3a87e5ae89a0d0abec5587ca4df7ad937189d0ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8721f81328cc30fb1eb3630e42405087f91c6a14e73a7fe0add85eb67b997160",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Lattice/Variant9c026a5f2d6bc28fcef22e2d3a87e5ae89a0d0abec5587ca4df7ad937189d0ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc833e73-8929-4424-fba2-2b7d1b5085e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 382–391.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iUnion_univ_pi_of_monotone {ι ι' : Type*} [LinearOrder ι'] [Nonempty ι'] [Finite ι]
    {α : ι → Type*} {s : ∀ i, ι' → Set (α i)} (hs : ∀ i, Monotone (s i)) :
    ⋃ j : ι', pi univ (fun i => s i j) = pi univ fun i => ⋃ j, s i j :=
  iUnion_pi_of_monotone finite_univ fun i _ => hs i

section

variable [Preorder α] [IsDirected α (· ≤ ·)] [Nonempty α] {s : Set α}

/-- A finite set is bounded above. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Lattice/Variant9c026a5f2d6bc28fcef22e2d3a87e5ae89a0d0abec5587ca4df7ad937189d0ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variant9c026a5f2d6bc28fcef22e2d3a87e5ae89a0d0abec5587ca4df7ad937189d0ba.lean#L382).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `925ee3fb8c1f0362e08f308b3d82b79c987d3f23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
