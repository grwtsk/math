# actual_mellin_pole_filter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a2f909e-19bc-aa6c-4256-82d0417e43f2",
  "kind": "theorem",
  "lexical_name": "actual_mellin_pole_filter",
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
  "slug": "actual-mellin-pole-filter--7a0927d93cfc65442a1df9e7",
  "source": {
    "blob": "d560c2cb449bfb14abffc3e92f00f6043ae1edd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 23,
    "path": "GRWTSK/Topology/GeneralTopology/ActualMellinFilterAttempt01/Variant86236abe202cad1626147daac278abe4c4222bb60eaaa7b630f7e31d3da74d5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a0927d93cfc65442a1df9e71f2dc8e498d5e0342d97f7e92fb9f149eb56d512",
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

Occurrence: `result:2a2f909e-19bc-aa6c-4256-82d0417e43f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_mellin_pole_filter {A : ℝ} (hA : 1 ≤ A) (s : ℂ) :
    mellin (fun x => (actualLogSource A x : ℂ)) s =
      s*(s-1)*normalizedPrimitiveTransform A (s-1/2) := by
  rw [actual_mellin_eq_normalizedTransform,actual_complex_pole_filter hA]
  congr 1
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualMellinFilterAttempt01/Variant86236abe202cad1626147daac278abe4c4222bb60eaaa7b630f7e31d3da74d5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualMellinFilterAttempt01/Variant86236abe202cad1626147daac278abe4c4222bb60eaaa7b630f7e31d3da74d5e.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d560c2cb449bfb14abffc3e92f00f6043ae1edd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
