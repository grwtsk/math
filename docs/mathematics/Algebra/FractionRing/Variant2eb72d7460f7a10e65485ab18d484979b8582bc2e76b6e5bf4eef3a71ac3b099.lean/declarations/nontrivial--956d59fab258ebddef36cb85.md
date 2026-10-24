# nontrivial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a58a1890cee2e2af71ecd3ac5d9814fb59e17c6d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 266,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2eb72d7460f7a10e65485ab18d484979b8582bc2e76b6e5bf4eef3a71ac3b099.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d25a171e-0c48-5c34-ac59-d1b4c6e2bf11",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:78b69e44-5628-f47b-0d63-b95c3ca3e6cb",
  "kind": "theorem",
  "lexical_name": "nontrivial",
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
  "slug": "nontrivial--956d59fab258ebddef36cb85",
  "source": {
    "blob": "a58a1890cee2e2af71ecd3ac5d9814fb59e17c6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 266,
    "path": "GRWTSK/Algebra/FractionRing/Variant2eb72d7460f7a10e65485ab18d484979b8582bc2e76b6e5bf4eef3a71ac3b099.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:956d59fab258ebddef36cb853cdb06f2436117229bb994b0c1979b01ce30afe6",
  "verification": {
    "reference": "docs/verification/Algebra/FractionRing/Variant2eb72d7460f7a10e65485ab18d484979b8582bc2e76b6e5bf4eef3a71ac3b099.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78b69e44-5628-f47b-0d63-b95c3ca3e6cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem nontrivial (R S : Type*) [CommRing R] [Nontrivial R] [CommRing S] [Algebra R S]
    [IsFractionRing R S] : Nontrivial S := by
  apply nontrivial_of_ne
  intro h
  apply @zero_ne_one R
  exact
    IsLocalization.injective S (le_of_eq rfl)
      (((algebraMap R S).map_zero.trans h).trans (algebraMap R S).map_one.symm)
#align is_fraction_ring.nontrivial IsFractionRing.nontrivial

end IsFractionRing

variable (A)

/-- The fraction ring of a commutative ring `R` as a quotient type.

We instantiate this definition as generally as possible, and assume that the
commutative ring `R` is an integral domain only when this is needed for proving.

In this generality, this construction is also known as the *total fraction ring* of `R`.
-/
@[reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FractionRing/Variant2eb72d7460f7a10e65485ab18d484979b8582bc2e76b6e5bf4eef3a71ac3b099.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FractionRing/Variant2eb72d7460f7a10e65485ab18d484979b8582bc2e76b6e5bf4eef3a71ac3b099.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a58a1890cee2e2af71ecd3ac5d9814fb59e17c6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
