# Ideal.exists_isPrime_liesOver_of_faithfullyFlat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e7ddfe7-7b1d-1c68-fedf-074237557d4d",
  "kind": "lemma",
  "lexical_name": "Ideal.exists_isPrime_liesOver_of_faithfullyFlat",
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
  "slug": "ideal-exists-isprime-liesover-of-faithfullyflat--66914f06a3cba668e40df9da",
  "source": {
    "blob": "d1cfa82e40d01e5ea7bc34e69efac167d13ee543",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 120,
    "path": "GRWTSK/Algebra/Algebra/Variant6afad0671382a8f290f3af486eab2b019c1412775930ca97b6d55b1f5534395e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66914f06a3cba668e40df9da42f7114745e57e5684abf81a01c079a680025994",
  "verification": {
    "reference": "docs/verification/Algebra/Algebra/Variant6afad0671382a8f290f3af486eab2b019c1412775930ca97b6d55b1f5534395e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e7ddfe7-7b1d-1c68-fedf-074237557d4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Ideal.exists_isPrime_liesOver_of_faithfullyFlat (p : Ideal A) [p.IsPrime] :
    ∃ (P : Ideal B), P.IsPrime ∧ P.LiesOver p := by
  obtain ⟨P, _, hP⟩ := (Ideal.comap_map_eq_self_iff_of_isPrime p).mp <|
    p.comap_map_eq_self_of_faithfullyFlat (B := B)
  exact ⟨P, inferInstance, ⟨hP.symm⟩⟩

/-- If `B` is a faithfully flat `A`-algebra, the induced map on the prime spectrum is
surjective. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Algebra/Variant6afad0671382a8f290f3af486eab2b019c1412775930ca97b6d55b1f5534395e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Algebra/Variant6afad0671382a8f290f3af486eab2b019c1412775930ca97b6d55b1f5534395e.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1cfa82e40d01e5ea7bc34e69efac167d13ee543` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
