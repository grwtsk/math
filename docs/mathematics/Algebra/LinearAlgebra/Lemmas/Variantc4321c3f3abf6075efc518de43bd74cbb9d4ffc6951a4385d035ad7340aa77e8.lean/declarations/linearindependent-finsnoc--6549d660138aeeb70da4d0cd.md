# LinearIndependent.finSnoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ca82eaeab026729b2b9be4ac4560a0a70954582f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 710,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c4321c3f3abf6075efc518de43bd74cbb9d4ffc6951a4385d035ad7340aa77e8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:239ddf87-a8f0-c616-2b73-f72af83eac21",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c452a63c-9452-9767-d865-e123cc66736f",
  "kind": "lemma",
  "lexical_name": "LinearIndependent.finSnoc",
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
  "slug": "linearindependent-finsnoc--6549d660138aeeb70da4d0cd",
  "source": {
    "blob": "ca82eaeab026729b2b9be4ac4560a0a70954582f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 719,
    "line": 710,
    "path": "GRWTSK/Algebra/LinearAlgebra/Lemmas/Variantc4321c3f3abf6075efc518de43bd74cbb9d4ffc6951a4385d035ad7340aa77e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6549d660138aeeb70da4d0cd97961d0c717e5e3d46d8235f26f76ecd808608e7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Lemmas/Variantc4321c3f3abf6075efc518de43bd74cbb9d4ffc6951a4385d035ad7340aa77e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c452a63c-9452-9767-d865-e123cc66736f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 710–719.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LinearIndependent.finSnoc {n} {v : Fin n → V} (hv : LinearIndependent K v)
    (hx : x ∉ Submodule.span K (range v)) : LinearIndependent K (Fin.snoc v x : Fin (n + 1) → V) :=
  linearIndependent_finSnoc.2 ⟨hv, hx⟩

/-- If `v` is `R`-linearly independent and `x` is not in the `K`-span of `range v` (where `K` is a
division ring extending `R` and acting on the same module), then `Fin.snoc v x` is `R`-linearly
independent.

This is useful when proving `ℤ`-linear independence using the fact that an element is outside the
`ℝ`-span, which arises naturally in lattice theory and geometry of numbers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Lemmas/Variantc4321c3f3abf6075efc518de43bd74cbb9d4ffc6951a4385d035ad7340aa77e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Lemmas/Variantc4321c3f3abf6075efc518de43bd74cbb9d4ffc6951a4385d035ad7340aa77e8.lean#L710).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca82eaeab026729b2b9be4ac4560a0a70954582f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
