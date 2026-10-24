# IsPretransitive.of_compHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2383ebf23e12ef26d169739a69846be0b434d0ad",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 75,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bd/bdb923ad6e4e46e3be32b299b323efc4564a316441ab453c04a12ae61281b699.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:085df56a-c7ac-1444-ed22-6a3af736e5e4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:34ac43c5-2ab8-2cd5-c79f-f797f8b5570c",
  "kind": "lemma",
  "lexical_name": "IsPretransitive.of_compHom",
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
  "slug": "ispretransitive-of-comphom--6745787d18bb66137baae5e7",
  "source": {
    "blob": "2383ebf23e12ef26d169739a69846be0b434d0ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 75,
    "path": "GRWTSK/Algebra/GroupTheory/Hom/Variantbdb923ad6e4e46e3be32b299b323efc4564a316441ab453c04a12ae61281b699.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6745787d18bb66137baae5e702c7d7aac31fd633012185fa52e5a10485724876",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Hom/Variantbdb923ad6e4e46e3be32b299b323efc4564a316441ab453c04a12ae61281b699.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34ac43c5-2ab8-2cd5-c79f-f797f8b5570c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsPretransitive.of_compHom {M N α : Type*} [Monoid M] [Monoid N] [MulAction N α]
    (f : M →* N) [h : letI := compHom α f; IsPretransitive M α] : IsPretransitive N α :=
  letI := compHom α f; h.of_smul_eq f rfl

end MulAction
end

section CompatibleScalar

/-- If the multiplicative action of `M` on `N` is compatible with multiplication on `N`, then
`fun x ↦ x • 1` is a monoid homomorphism from `M` to `N`. -/
@[to_additive (attr := simps)
"If the additive action of `M` on `N` is compatible with addition on `N`, then
`fun x ↦ x +ᵥ 0` is an additive monoid homomorphism from `M` to `N`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Hom/Variantbdb923ad6e4e46e3be32b299b323efc4564a316441ab453c04a12ae61281b699.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Hom/Variantbdb923ad6e4e46e3be32b299b323efc4564a316441ab453c04a12ae61281b699.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2383ebf23e12ef26d169739a69846be0b434d0ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
