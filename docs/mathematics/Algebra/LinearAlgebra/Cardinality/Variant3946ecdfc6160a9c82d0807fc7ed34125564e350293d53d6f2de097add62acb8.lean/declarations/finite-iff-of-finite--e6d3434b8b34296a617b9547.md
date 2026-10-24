# finite_iff_of_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "49eb9b99ae717c2a4d58fe67c08548150503f4ca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 52,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/3946ecdfc6160a9c82d0807fc7ed34125564e350293d53d6f2de097add62acb8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ab4b70f9-9481-d7aa-ac75-c4eab014f5cd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:168558f3-f453-af41-2ba0-ad0a665db134",
  "kind": "lemma",
  "lexical_name": "finite_iff_of_finite",
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
  "slug": "finite-iff-of-finite--e6d3434b8b34296a617b9547",
  "source": {
    "blob": "49eb9b99ae717c2a4d58fe67c08548150503f4ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 52,
    "path": "GRWTSK/Algebra/LinearAlgebra/Cardinality/Variant3946ecdfc6160a9c82d0807fc7ed34125564e350293d53d6f2de097add62acb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6d3434b8b34296a617b9547960df9255243c8e1b3eeb2d9a59472fb473ee517",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Cardinality/Variant3946ecdfc6160a9c82d0807fc7ed34125564e350293d53d6f2de097add62acb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:168558f3-f453-af41-2ba0-ad0a665db134`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma finite_iff_of_finite [Finite k] : Finite (ℙ k V) ↔ Finite V := by
  classical
  refine ⟨fun h ↦ ?_, fun h ↦ inferInstance⟩
  let e := nonZeroEquivProjectivizationProdUnits k V
  have : Finite { v : V // v ≠ 0 } := Finite.of_equiv _ e.symm
  let eq : { v : V // v ≠ 0 } ⊕ Unit ≃ V :=
    ⟨(Sum.elim Subtype.val (fun _ ↦ 0)), fun v ↦ if h : v = 0 then Sum.inr () else Sum.inl ⟨v, h⟩,
      by intro x; aesop, by intro x; aesop⟩
  exact Finite.of_equiv _ eq

/-- Fraction free cardinality formula for the points of `ℙ k V` if `k` and `V` are finite
(for silly reasons the formula also holds when `k` and `V` are infinite).
See `Projectivization.card'` and `Projectivization.card''` for other spellings of the formula. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Cardinality/Variant3946ecdfc6160a9c82d0807fc7ed34125564e350293d53d6f2de097add62acb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Cardinality/Variant3946ecdfc6160a9c82d0807fc7ed34125564e350293d53d6f2de097add62acb8.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49eb9b99ae717c2a4d58fe67c08548150503f4ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
