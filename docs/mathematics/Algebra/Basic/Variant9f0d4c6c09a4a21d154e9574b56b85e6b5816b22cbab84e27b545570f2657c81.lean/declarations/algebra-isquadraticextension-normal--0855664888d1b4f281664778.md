# Algebra.IsQuadraticExtension.normal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:898adfacae47d679af8770a9d16b16ba1ea18c4efd2672224c3088586ef8030f",
  "kind": "instance",
  "lexical_name": "Algebra.IsQuadraticExtension.normal",
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
  "slug": "algebra-isquadraticextension-normal--0855664888d1b4f281664778",
  "source": {
    "blob": "0fe875fca7bc93d00c101231a39ddc8f306e9041",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 294,
    "path": "GRWTSK/Algebra/Basic/Variant9f0d4c6c09a4a21d154e9574b56b85e6b5816b22cbab84e27b545570f2657c81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0855664888d1b4f281664778694b021b7fabb7a591689dda178fd7ba348a629f",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant9f0d4c6c09a4a21d154e9574b56b85e6b5816b22cbab84e27b545570f2657c81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:898adfacae47d679af8770a9d16b16ba1ea18c4efd2672224c3088586ef8030f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Algebra.IsQuadraticExtension.normal (F K : Type*) [Field F] [Field K] [Algebra F K]
    [IsQuadraticExtension F K] :
    Normal F K where
  splits' := by
    intro x
    obtain h | h := le_iff_lt_or_eq.mp (finrank_eq_two F K ▸ minpoly.natDegree_le x)
    · exact splits_of_natDegree_le_one _ (by rwa [Nat.le_iff_lt_add_one])
    · exact splits_of_natDegree_eq_two _ h (minpoly.aeval F x)

@[deprecated (since := "2025-04-17")] alias normal_of_finrank_eq_two :=
  Algebra.IsQuadraticExtension.normal
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant9f0d4c6c09a4a21d154e9574b56b85e6b5816b22cbab84e27b545570f2657c81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant9f0d4c6c09a4a21d154e9574b56b85e6b5816b22cbab84e27b545570f2657c81.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fe875fca7bc93d00c101231a39ddc8f306e9041` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
