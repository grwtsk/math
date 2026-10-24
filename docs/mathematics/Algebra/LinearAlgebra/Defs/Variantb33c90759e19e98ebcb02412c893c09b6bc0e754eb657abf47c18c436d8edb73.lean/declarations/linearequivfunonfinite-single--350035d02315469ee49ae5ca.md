# linearEquivFunOnFinite_single

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6bacba09-749e-565c-4c6f-1907a919d295",
  "kind": "theorem",
  "lexical_name": "linearEquivFunOnFinite_single",
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
  "slug": "linearequivfunonfinite-single--350035d02315469ee49ae5ca",
  "source": {
    "blob": "87840a71c3ab2545805001c548ae52df673cfa6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 71,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variantb33c90759e19e98ebcb02412c893c09b6bc0e754eb657abf47c18c436d8edb73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:350035d02315469ee49ae5ca16bd7cde2cf070f7da6b69c445d384356bee2c1f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variantb33c90759e19e98ebcb02412c893c09b6bc0e754eb657abf47c18c436d8edb73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6bacba09-749e-565c-4c6f-1907a919d295`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem linearEquivFunOnFinite_single [DecidableEq α] (x : α) (m : M) :
    (linearEquivFunOnFinite R M α) (single x m) = Pi.single x m :=
  equivFunOnFinite_single x m

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variantb33c90759e19e98ebcb02412c893c09b6bc0e754eb657abf47c18c436d8edb73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variantb33c90759e19e98ebcb02412c893c09b6bc0e754eb657abf47c18c436d8edb73.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87840a71c3ab2545805001c548ae52df673cfa6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
