# tsub_right_comm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b342a70-6f0e-8d2a-612c-a0575effa2cc",
  "kind": "theorem",
  "lexical_name": "tsub_right_comm",
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
  "slug": "tsub-right-comm--d644733d798927c30ec5f20c",
  "source": {
    "blob": "ca92c5ad2d4da7ce553a6ff8ae1980dbfa07b8c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 283,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d644733d798927c30ec5f20cefd18bc8f0af52c78e25431754b19400de00002a",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b342a70-6f0e-8d2a-612c-a0575effa2cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tsub_right_comm : a - b - c = a - c - b := by
  rw [←tsub_add_eq_tsub_tsub, tsub_add_eq_tsub_tsub_swap]
#align tsub_right_comm tsub_right_comm

/-! ### Lemmas that assume that an element is `AddLECancellable`. -/


namespace AddLECancellable

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Defs/Variant37e3df44e423988c3bca56054ce4cf26c32b508cd1d9ee33fcdc96282c2655f7.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca92c5ad2d4da7ce553a6ff8ae1980dbfa07b8c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
