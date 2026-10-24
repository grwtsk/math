# _root_.GRWTSK.Algebra.PrimePair.Variantefaa4c598ac9173e8be539b4015bf67085df28e9a4a36285388c85bbb623851b.Order.Ideal.PrimePair.F_isPrime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d14eb454-4bf1-c71d-0ab6-e8071b178d63",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.PrimePair.Variantefaa4c598ac9173e8be539b4015bf67085df28e9a4a36285388c85bbb623851b.Order.Ideal.PrimePair.F_isPrime",
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
  "slug": "root-grwtsk-algebra-primepair-variantefaa4c598ac9173e8be539b4015bf67085d--c7d530cbb72cfb4ec687fe10",
  "source": {
    "blob": "39a47d584ffe9e8c3cbb1bae404b51411e5c49b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 211,
    "path": "GRWTSK/Algebra/PrimeIdeal/Variant445301e58a03ea5cd0027a362fdf85d117a94537a580c11154081a9c69bde8f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7d530cbb72cfb4ec687fe10c5f5f17af7656e301677a84d11020eef846ead72",
  "verification": {
    "reference": "docs/verification/Algebra/PrimeIdeal/Variant445301e58a03ea5cd0027a362fdf85d117a94537a580c11154081a9c69bde8f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d14eb454-4bf1-c71d-0ab6-e8071b178d63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.PrimePair.Variantefaa4c598ac9173e8be539b4015bf67085df28e9a4a36285388c85bbb623851b.Order.Ideal.PrimePair.F_isPrime (IF : Ideal.PrimePair P) : IsPrime IF.F :=
  {
    compl_ideal := by
      rw [IF.compl_F_eq_I]
      exact IF.I.isIdeal }

end PFilter

end Order
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PrimeIdeal/Variant445301e58a03ea5cd0027a362fdf85d117a94537a580c11154081a9c69bde8f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PrimeIdeal/Variant445301e58a03ea5cd0027a362fdf85d117a94537a580c11154081a9c69bde8f1.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39a47d584ffe9e8c3cbb1bae404b51411e5c49b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
