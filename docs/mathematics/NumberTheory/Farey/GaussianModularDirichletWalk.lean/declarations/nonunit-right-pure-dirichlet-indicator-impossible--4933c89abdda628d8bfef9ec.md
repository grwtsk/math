# nonunit_right_pure_dirichlet_indicator_impossible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:10ee27b8-dd98-6de9-50cd-d3760bb2641a",
  "kind": "theorem",
  "lexical_name": "nonunit_right_pure_dirichlet_indicator_impossible",
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
  "slug": "nonunit-right-pure-dirichlet-indicator-impossible--4933c89abdda628d8bfef9ec",
  "source": {
    "blob": "6edc00822427e075a557128666aef5a875c7b401",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 129,
    "path": "GRWTSK/NumberTheory/Farey/GaussianModularDirichletWalk.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4933c89abdda628d8bfef9eccbf440223f28117b58cd9d4377cf7643d9ba6aae",
  "verification": {
    "reference": "docs/verification/NumberTheory/Farey/GaussianModularDirichletWalk.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10ee27b8-dd98-6de9-50cd-d3760bb2641a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonunit_right_pure_dirichlet_indicator_impossible
    (I : Cell) (q : ℕ) [NeZero q]
    (hNonunit : ¬ IsUnit (I.rightNum : ZMod q)) :
    ¬ PureDirichletRightSelectorRepresentation I q := by
  intro h
  rcases h with ⟨S, coeff, hrepr⟩
  have heval := hrepr (I.rightNum : ZMod q)
  have hzero := nonunit_right_pure_dirichlet_sum_zero I q hNonunit S coeff
  rw [hzero] at heval
  norm_num at heval

/-- A reached polynomial-sign eye plus separately supplied nonunit status
combines the Gaussian word identity, additive detection and the failure of
the pure Dirichlet selector. Neither hypothesis is implicit in a walk. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Farey/GaussianModularDirichletWalk.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Farey/GaussianModularDirichletWalk.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6edc00822427e075a557128666aef5a875c7b401` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
