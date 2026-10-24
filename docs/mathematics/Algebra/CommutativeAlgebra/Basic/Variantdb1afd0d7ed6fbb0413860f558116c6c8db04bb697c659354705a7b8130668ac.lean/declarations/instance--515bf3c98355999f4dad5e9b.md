# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e8e7916041bf449a475276765e90ecaa0ab3f7b9fb538663a15ad93986d34671",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--515bf3c98355999f4dad5e9b",
  "source": {
    "blob": "d6b8697e9e84373102ca0a3e54222cf116c705cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 61,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantdb1afd0d7ed6fbb0413860f558116c6c8db04bb697c659354705a7b8130668ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:515bf3c98355999f4dad5e9b18b1e914766be3afde09775c9df50b45b404d9cd",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variantdb1afd0d7ed6fbb0413860f558116c6c8db04bb697c659354705a7b8130668ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e8e7916041bf449a475276765e90ecaa0ab3f7b9fb538663a15ad93986d34671`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance {A B : Type*} [CommSemiring A] [Semiring B] [Algebra A B] (x : B) (p : Polynomial A) :
    CoeDep B (p.aeval x) (Algebra.adjoin A {x}) where
  coe := ⟨p.aeval x, aeval_mem_adjoin_singleton A x⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variantdb1afd0d7ed6fbb0413860f558116c6c8db04bb697c659354705a7b8130668ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantdb1afd0d7ed6fbb0413860f558116c6c8db04bb697c659354705a7b8130668ac.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6b8697e9e84373102ca0a3e54222cf116c705cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
