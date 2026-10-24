# actual_mellin_eq_quartic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32ffcf35-77f9-5402-eb05-31375d899b21",
  "kind": "theorem",
  "lexical_name": "actual_mellin_eq_quartic",
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
  "slug": "actual-mellin-eq-quartic--6bd4edb125a64a4f53ab077c",
  "source": {
    "blob": "c664003b67cd540158cf621d825ff9721e8ea6c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 109,
    "path": "GRWTSK/Topology/GeneralTopology/ActualMellinFilterAttempt05/Variantc8cb51b69cc8e0c92f2e02f6348d1186fca6e3e8427bf9695b2c062cc5e88e2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6bd4edb125a64a4f53ab077ca93cee2c6a41ed038877083feb24a988955b10eb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualMellinFilterAttempt05/Variantc8cb51b69cc8e0c92f2e02f6348d1186fca6e3e8427bf9695b2c062cc5e88e2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32ffcf35-77f9-5402-eb05-31375d899b21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_mellin_eq_quartic {A : ℝ} (hA : 1 ≤ A) (s : ℂ) :
    mellin (fun x => (actualLogSource A x : ℂ)) s =
      s*(s-1)*(Real.sqrt A : ℂ)*quarticBumpLaplace ((A : ℂ)*(s-1/2)) /
        (Real.sqrt (sourceNormalization A) : ℂ) := by
  rw [actual_mellin_pole_filter_unnormalized hA,
    primitiveTransform_eq_quartic (show 0 < A by linarith)]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualMellinFilterAttempt05/Variantc8cb51b69cc8e0c92f2e02f6348d1186fca6e3e8427bf9695b2c062cc5e88e2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualMellinFilterAttempt05/Variantc8cb51b69cc8e0c92f2e02f6348d1186fca6e3e8427bf9695b2c062cc5e88e2d.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c664003b67cd540158cf621d825ff9721e8ea6c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
