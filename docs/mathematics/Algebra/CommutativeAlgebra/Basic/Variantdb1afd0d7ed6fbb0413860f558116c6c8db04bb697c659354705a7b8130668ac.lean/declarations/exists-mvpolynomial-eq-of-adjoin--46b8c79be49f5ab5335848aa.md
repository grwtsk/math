# exists_mvPolynomial_eq_of_adjoin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d6b8697e9e84373102ca0a3e54222cf116c705cc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 85,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/db1afd0d7ed6fbb0413860f558116c6c8db04bb697c659354705a7b8130668ac.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7cc7cb6b-e1b8-85c1-4b7d-c467c98456d3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3886db0d-acf0-d0ee-96f7-2bafe6b58f56",
  "kind": "lemma",
  "lexical_name": "exists_mvPolynomial_eq_of_adjoin",
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
  "slug": "exists-mvpolynomial-eq-of-adjoin--46b8c79be49f5ab5335848aa",
  "source": {
    "blob": "d6b8697e9e84373102ca0a3e54222cf116c705cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 85,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantdb1afd0d7ed6fbb0413860f558116c6c8db04bb697c659354705a7b8130668ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46b8c79be49f5ab5335848aa9034e9d5a661e4f2b095657c4ad028327bd4684e",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variantdb1afd0d7ed6fbb0413860f558116c6c8db04bb697c659354705a7b8130668ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3886db0d-acf0-d0ee-96f7-2bafe6b58f56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_mvPolynomial_eq_of_adjoin {R A σ : Type*}
    [CommSemiring R] [CommSemiring A] [Algebra R A]
    {S : Set A} {f : σ → A} (hS : S ⊆ Set.range f)
    (a : adjoin R S) : ∃ p : MvPolynomial σ R, p.aeval f = a :=
  exists_mvPolynomial_aeval_eq_of_mem_adjoin hS a.2

/--
Proving a fact about `a : adjoin R {x}` is the same as proving it for
`aeval x p` where `p`is an arbitrary polynomial. -/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variantdb1afd0d7ed6fbb0413860f558116c6c8db04bb697c659354705a7b8130668ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantdb1afd0d7ed6fbb0413860f558116c6c8db04bb697c659354705a7b8130668ac.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6b8697e9e84373102ca0a3e54222cf116c705cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
