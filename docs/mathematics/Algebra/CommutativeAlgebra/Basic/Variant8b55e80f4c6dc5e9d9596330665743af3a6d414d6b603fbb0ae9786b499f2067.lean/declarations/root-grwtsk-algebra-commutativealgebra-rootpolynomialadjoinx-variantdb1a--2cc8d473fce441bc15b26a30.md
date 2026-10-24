# _root_.GRWTSK.Algebra.CommutativeAlgebra.RootPolynomialAdjoinX.Variantdb1afd0d7ed6fbb0413860f558116c6c8db04bb697c659354705a7b8130668ac.Polynomial.aeval_mem_adjoin_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dcb3c0a7-021b-2484-4cd5-e76a933de130",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.CommutativeAlgebra.RootPolynomialAdjoinX.Variantdb1afd0d7ed6fbb0413860f558116c6c8db04bb697c659354705a7b8130668ac.Polynomial.aeval_mem_adjoin_singleton",
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
  "slug": "root-grwtsk-algebra-commutativealgebra-rootpolynomialadjoinx-variantdb1a--2cc8d473fce441bc15b26a30",
  "source": {
    "blob": "36bc0e9c7eeaf9f0771143217f9d9596d8ddcb2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 66,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant8b55e80f4c6dc5e9d9596330665743af3a6d414d6b603fbb0ae9786b499f2067.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2cc8d473fce441bc15b26a30a19fd5e7066dfd18a899233d3897cc0e3634fe86",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant8b55e80f4c6dc5e9d9596330665743af3a6d414d6b603fbb0ae9786b499f2067.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dcb3c0a7-021b-2484-4cd5-e76a933de130`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.CommutativeAlgebra.RootPolynomialAdjoinX.Variantdb1afd0d7ed6fbb0413860f558116c6c8db04bb697c659354705a7b8130668ac.Polynomial.aeval_mem_adjoin_singleton : aeval x p ∈ adjoin R {x} := by
  simp [adjoin_singleton_eq_range_aeval]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant8b55e80f4c6dc5e9d9596330665743af3a6d414d6b603fbb0ae9786b499f2067.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant8b55e80f4c6dc5e9d9596330665743af3a6d414d6b603fbb0ae9786b499f2067.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36bc0e9c7eeaf9f0771143217f9d9596d8ddcb2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
