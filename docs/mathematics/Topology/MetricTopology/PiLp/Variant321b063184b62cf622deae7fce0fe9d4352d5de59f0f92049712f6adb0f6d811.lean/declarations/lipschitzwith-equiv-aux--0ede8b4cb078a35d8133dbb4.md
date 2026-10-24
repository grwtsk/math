# lipschitzWith_equiv_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e7c6005-3c3f-6db2-26e3-2d35535b876d",
  "kind": "theorem",
  "lexical_name": "lipschitzWith_equiv_aux",
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
  "slug": "lipschitzwith-equiv-aux--0ede8b4cb078a35d8133dbb4",
  "source": {
    "blob": "a3b0dbc4ef24118b6e84bb3063adf08f7cab9d2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 399,
    "line": 394,
    "path": "GRWTSK/Topology/MetricTopology/PiLp/Variant321b063184b62cf622deae7fce0fe9d4352d5de59f0f92049712f6adb0f6d811.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ede8b4cb078a35d8133dbb4277f11cc47daae946be8c097f34e12ca99eef7f3",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/PiLp/Variant321b063184b62cf622deae7fce0fe9d4352d5de59f0f92049712f6adb0f6d811.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e7c6005-3c3f-6db2-26e3-2d35535b876d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 394–399.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lipschitzWith_equiv_aux : LipschitzWith 1 (WithLp.equiv p (∀ i, β i)) :=
  .of_edist_le fun x y => by
    simp_rw [edist_pi_def, Finset.sup_le_iff, Finset.mem_univ,
      forall_true_left, WithLp.equiv_pi_apply]
    exact edist_apply_le_edist_aux _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/PiLp/Variant321b063184b62cf622deae7fce0fe9d4352d5de59f0f92049712f6adb0f6d811.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/PiLp/Variant321b063184b62cf622deae7fce0fe9d4352d5de59f0f92049712f6adb0f6d811.lean#L394).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3b0dbc4ef24118b6e84bb3063adf08f7cab9d2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
