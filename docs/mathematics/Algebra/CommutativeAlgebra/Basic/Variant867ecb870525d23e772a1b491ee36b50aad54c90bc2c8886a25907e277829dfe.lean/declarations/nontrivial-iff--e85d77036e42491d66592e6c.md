# nontrivial_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30eafdcd-5e7a-0c5e-7c64-bb1b5e4d0210",
  "kind": "theorem",
  "lexical_name": "nontrivial_iff",
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
  "slug": "nontrivial-iff--e85d77036e42491d66592e6c",
  "source": {
    "blob": "f94712aa0da963dc89a25ce6f23dde2fffca6777",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1216,
    "line": 1210,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant867ecb870525d23e772a1b491ee36b50aad54c90bc2c8886a25907e277829dfe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e85d77036e42491d66592e6c21b591b1747a952336cdca7e19a6b65209d8bc7f",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant867ecb870525d23e772a1b491ee36b50aad54c90bc2c8886a25907e277829dfe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30eafdcd-5e7a-0c5e-7c64-bb1b5e4d0210`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1210–1216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nontrivial_iff [Semiring R] : Nontrivial R[X] ↔ Nontrivial R :=
  ⟨fun h ↦
    let ⟨_r, _s, hrs⟩ := @exists_pair_ne _ h
    Nontrivial.of_polynomial_ne hrs,
    fun h ↦ @Polynomial.nontrivial _ _ h⟩

/-- The map sending a collection of roots into a polynomial, as a morphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant867ecb870525d23e772a1b491ee36b50aad54c90bc2c8886a25907e277829dfe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant867ecb870525d23e772a1b491ee36b50aad54c90bc2c8886a25907e277829dfe.lean#L1210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f94712aa0da963dc89a25ce6f23dde2fffca6777` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
