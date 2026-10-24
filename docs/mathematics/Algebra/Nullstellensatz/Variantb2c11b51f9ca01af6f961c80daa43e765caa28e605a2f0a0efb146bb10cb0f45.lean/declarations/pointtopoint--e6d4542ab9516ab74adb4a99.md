# pointToPoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d4a21a25253d710ea8a785c36a1a6b9ac5c9fe507e0c2d9cf454570c536893a4",
  "kind": "def",
  "lexical_name": "pointToPoint",
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
  "slug": "pointtopoint--e6d4542ab9516ab74adb4a99",
  "source": {
    "blob": "e5de8e7ba22091c3ed9112c1f455c2f80325541a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 145,
    "path": "GRWTSK/Algebra/Nullstellensatz/Variantb2c11b51f9ca01af6f961c80daa43e765caa28e605a2f0a0efb146bb10cb0f45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e6d4542ab9516ab74adb4a9915967847314fd7a48ee3cccf16e0908abc6babe8",
  "verification": {
    "reference": "docs/verification/Algebra/Nullstellensatz/Variantb2c11b51f9ca01af6f961c80daa43e765caa28e605a2f0a0efb146bb10cb0f45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d4a21a25253d710ea8a785c36a1a6b9ac5c9fe507e0c2d9cf454570c536893a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pointToPoint (x : σ → k) : PrimeSpectrum (MvPolynomial σ k) :=
  ⟨(vanishingIdeal {x} : Ideal (MvPolynomial σ k)), by infer_instance⟩
#align mv_polynomial.point_to_point MvPolynomial.pointToPoint

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Nullstellensatz/Variantb2c11b51f9ca01af6f961c80daa43e765caa28e605a2f0a0efb146bb10cb0f45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Nullstellensatz/Variantb2c11b51f9ca01af6f961c80daa43e765caa28e605a2f0a0efb146bb10cb0f45.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5de8e7ba22091c3ed9112c1f455c2f80325541a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
