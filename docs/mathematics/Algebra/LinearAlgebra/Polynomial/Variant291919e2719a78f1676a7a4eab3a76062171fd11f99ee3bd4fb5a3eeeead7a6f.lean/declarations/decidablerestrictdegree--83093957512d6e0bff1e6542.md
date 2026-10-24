# decidableRestrictDegree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:afaf6923d8ffed65b61b64b7859856ca9bcfb9f6552044f3aa763e765cadc248",
  "kind": "instance",
  "lexical_name": "decidableRestrictDegree",
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
  "slug": "decidablerestrictdegree--83093957512d6e0bff1e6542",
  "source": {
    "blob": "64e237ee9a93151674599aa63c4ec360c8c8cc86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 197,
    "path": "GRWTSK/Algebra/LinearAlgebra/Polynomial/Variant291919e2719a78f1676a7a4eab3a76062171fd11f99ee3bd4fb5a3eeeead7a6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:83093957512d6e0bff1e6542b067d7adad9813c32db283ef96c3500c82e10a7d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Polynomial/Variant291919e2719a78f1676a7a4eab3a76062171fd11f99ee3bd4fb5a3eeeead7a6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:afaf6923d8ffed65b61b64b7859856ca9bcfb9f6552044f3aa763e765cadc248`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance decidableRestrictDegree (m : ℕ) :
    DecidablePred (· ∈ { n : σ →₀ ℕ | ∀ i, n i ≤ m }) := by
  simp only [Set.mem_setOf_eq]; infer_instance
#align mv_polynomial.decidable_restrict_degree MvPolynomial.decidableRestrictDegree

end CommRing

variable [Field K]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Polynomial/Variant291919e2719a78f1676a7a4eab3a76062171fd11f99ee3bd4fb5a3eeeead7a6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Polynomial/Variant291919e2719a78f1676a7a4eab3a76062171fd11f99ee3bd4fb5a3eeeead7a6f.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64e237ee9a93151674599aa63c4ec360c8c8cc86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
