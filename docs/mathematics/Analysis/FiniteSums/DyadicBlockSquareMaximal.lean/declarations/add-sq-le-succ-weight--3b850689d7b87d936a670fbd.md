# add_sq_le_succ_weight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6bcc2fb8-e949-ee7b-43ad-864d6865e0ea",
  "kind": "theorem",
  "lexical_name": "add_sq_le_succ_weight",
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
  "slug": "add-sq-le-succ-weight--3b850689d7b87d936a670fbd",
  "source": {
    "blob": "b18f90584b0f3e181a90fe40dd127c04fc20d844",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 143,
    "path": "GRWTSK/Analysis/FiniteSum/DyadicBlockSquareMaximal.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b850689d7b87d936a670fbd4a37763be9b457bea7b2ed10bf74860243ac4ef5",
  "verification": {
    "reference": "docs/verification/Analysis/FiniteSums/DyadicBlockSquareMaximal.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6bcc2fb8-e949-ee7b-43ad-864d6865e0ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem add_sq_le_succ_weight
    {k x y E : ℝ} (hk : 0 < k) (hy : y ^ 2 ≤ k * E) :
    (x + y) ^ 2 ≤ (k + 1) * (x ^ 2 + E) := by
  have hsquare : 0 ≤ (k * x - y) ^ 2 := sq_nonneg _
  have hgap : 0 ≤ k * E - y ^ 2 := sub_nonneg.mpr hy
  have hproduct : 0 ≤ (k + 1) * (k * E - y ^ 2) :=
    mul_nonneg (by linarith) hgap
  have hmul :
      k * (x + y) ^ 2 ≤ k * ((k + 1) * (x ^ 2 + E)) := by
    nlinarith
  nlinarith

/-- Recursive finite maximal comparison before rewriting the level count as
`m+1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/FiniteSums/DyadicBlockSquareMaximal.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FiniteSum/DyadicBlockSquareMaximal.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b18f90584b0f3e181a90fe40dd127c04fc20d844` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
