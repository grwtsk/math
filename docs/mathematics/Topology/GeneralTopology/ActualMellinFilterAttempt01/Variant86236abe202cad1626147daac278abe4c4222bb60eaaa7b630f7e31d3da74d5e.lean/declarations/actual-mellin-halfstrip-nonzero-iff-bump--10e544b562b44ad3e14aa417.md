# actual_mellin_halfstrip_nonzero_iff_bump

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b25afd39-13d6-9b62-9f00-048e40ceccf1",
  "kind": "theorem",
  "lexical_name": "actual_mellin_halfstrip_nonzero_iff_bump",
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
  "slug": "actual-mellin-halfstrip-nonzero-iff-bump--10e544b562b44ad3e14aa417",
  "source": {
    "blob": "d560c2cb449bfb14abffc3e92f00f6043ae1edd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 46,
    "path": "GRWTSK/Topology/GeneralTopology/ActualMellinFilterAttempt01/Variant86236abe202cad1626147daac278abe4c4222bb60eaaa7b630f7e31d3da74d5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10e544b562b44ad3e14aa41747d64fe5ef244e6ed8f36588703c2f731a65b20c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualMellinFilterAttempt01/Variant86236abe202cad1626147daac278abe4c4222bb60eaaa7b630f7e31d3da74d5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b25afd39-13d6-9b62-9f00-048e40ceccf1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_mellin_halfstrip_nonzero_iff_bump {A : ℝ} (hA : 1 ≤ A) {s : ℂ}
    (hl : 1/2 < s.re) (hu : s.re < 1) :
    mellin (fun x => (actualLogSource A x : ℂ)) s ≠ 0 ↔
      primitiveTransform A (s-1/2) ≠ 0 := by
  apply actual_mellin_nonzero_iff_bump hA
  · intro he; simp [he] at hl
  · intro he; simp [he] at hu

end ContinuousResearch.ActualMellinFilter
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualMellinFilterAttempt01/Variant86236abe202cad1626147daac278abe4c4222bb60eaaa7b630f7e31d3da74d5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualMellinFilterAttempt01/Variant86236abe202cad1626147daac278abe4c4222bb60eaaa7b630f7e31d3da74d5e.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d560c2cb449bfb14abffc3e92f00f6043ae1edd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
