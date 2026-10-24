# charPoly_monic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:80153214-4d0a-0f4f-3fd7-1fcb14c375fb",
  "kind": "theorem",
  "lexical_name": "charPoly_monic",
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
  "slug": "charpoly-monic--9bbcd6be5fca98e5b500be27",
  "source": {
    "blob": "5359021d8dee3f368b916a4fc13493adadfe52fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 227,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearRecurrence/Variant11437973597e8af713335644391565944ca17017e6e8014d8676c42d1382d6da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9bbcd6be5fca98e5b500be27859b09ddf91720e49b3371a4d3f12a64241718cf",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearRecurrence/Variant11437973597e8af713335644391565944ca17017e6e8014d8676c42d1382d6da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80153214-4d0a-0f4f-3fd7-1fcb14c375fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem charPoly_monic : charPoly E |>.Monic := by
  nontriviality R
  rw [Monic, leadingCoeff, natDegree_eq_of_degree_eq_some <| charPoly_degree_eq_order _, charPoly,
    coeff_sub, coeff_monomial_same, finsetSum_coeff, sub_eq_self]
  refine sum_eq_zero fun _ _ ↦ coeff_eq_zero_of_degree_lt ?_
  grw [degree_monomial_le]
  simp

/-- The geometric sequence `q^n` is a solution of `E` iff
  `q` is a root of `E`'s characteristic polynomial. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearRecurrence/Variant11437973597e8af713335644391565944ca17017e6e8014d8676c42d1382d6da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearRecurrence/Variant11437973597e8af713335644391565944ca17017e6e8014d8676c42d1382d6da.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5359021d8dee3f368b916a4fc13493adadfe52fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
