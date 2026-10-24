# normalized_frame_eq_second

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b9dc9d7-72c7-5a28-ae36-fb51e2457921",
  "kind": "theorem",
  "lexical_name": "normalized_frame_eq_second",
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
  "slug": "normalized-frame-eq-second--13d00ca16a1f493d7878f350",
  "source": {
    "blob": "06afab30e20e08f0acbfb7f8f4d41d49dc5fdaec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 183,
    "path": "GRWTSK/Topology/GeneralTopology/PivotProjectiveCircle/Variant54e801fd7e7aaa6aa4deffad210a9905e96df3a7d5225db93baa79d6d8bb4a66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13d00ca16a1f493d7878f350aaaeb5081f0c2b5e134ec6508730035b5ef84c58",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PivotProjectiveCircle/Variant54e801fd7e7aaa6aa4deffad210a9905e96df3a7d5225db93baa79d6d8bb4a66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b9dc9d7-72c7-5a28-ae36-fb51e2457921`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalized_frame_eq_second {I : Fin 1 ↪o Fin 2} (A : NormalizedPivotFrame I)
    (hI : I 0 = 1) : A.val = secondFrame (A.val 0 0) := by
  have hp := congrFun (congrFun A.property 0) 0
  have ha : A.val 0 1 = 1 := by simpa [columnSubmatrix, hI] using hp
  ext i j
  fin_cases i
  fin_cases j <;> simp [secondFrame, ha]

/-- The two explicit real charts cover every actual one-dimensional subspace. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PivotProjectiveCircle/Variant54e801fd7e7aaa6aa4deffad210a9905e96df3a7d5225db93baa79d6d8bb4a66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PivotProjectiveCircle/Variant54e801fd7e7aaa6aa4deffad210a9905e96df3a7d5225db93baa79d6d8bb4a66.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06afab30e20e08f0acbfb7f8f4d41d49dc5fdaec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
