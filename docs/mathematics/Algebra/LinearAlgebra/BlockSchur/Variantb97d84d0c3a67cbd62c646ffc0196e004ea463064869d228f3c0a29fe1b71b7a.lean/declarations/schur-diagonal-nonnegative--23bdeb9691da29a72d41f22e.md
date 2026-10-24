# schur_diagonal_nonnegative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a6351e8b-cf19-7142-ba88-b753b44480ba",
  "kind": "theorem",
  "lexical_name": "schur_diagonal_nonnegative",
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
  "slug": "schur-diagonal-nonnegative--23bdeb9691da29a72d41f22e",
  "source": {
    "blob": "b227b10836aea0d2c67ac1fee7152eb60731e48c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 145,
    "path": "GRWTSK/Algebra/LinearAlgebra/BlockSchur/Variantb97d84d0c3a67cbd62c646ffc0196e004ea463064869d228f3c0a29fe1b71b7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23bdeb9691da29a72d41f22eb389eae9b0b944685b17e9530f2c05bbe162f9af",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BlockSchur/Variantb97d84d0c3a67cbd62c646ffc0196e004ea463064869d228f3c0a29fe1b71b7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6351e8b-cf19-7142-ba88-b753b44480ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem schur_diagonal_nonnegative (S : BlockSchurSolver G) (u : U) :
    0 ≤
      G.form (autonomousInclusion u) (autonomousInclusion u) -
        G.form (provenanceInclusion (S.solve u))
          (provenanceInclusion (S.solve u)) := by
  rw [← S.schurForm_eq_sub u u]
  exact S.schurForm_nonnegative u

/-- The ambient energy of a pure autonomous input splits into the explained
provenance correction and positive Schur residual. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BlockSchur/Variantb97d84d0c3a67cbd62c646ffc0196e004ea463064869d228f3c0a29fe1b71b7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BlockSchur/Variantb97d84d0c3a67cbd62c646ffc0196e004ea463064869d228f3c0a29fe1b71b7a.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b227b10836aea0d2c67ac1fee7152eb60731e48c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
