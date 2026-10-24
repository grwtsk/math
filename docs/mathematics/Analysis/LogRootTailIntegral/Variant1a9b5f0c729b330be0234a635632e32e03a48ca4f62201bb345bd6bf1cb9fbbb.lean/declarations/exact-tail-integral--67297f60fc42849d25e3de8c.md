# exact_tail_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6ad50152-e877-520d-cddd-b884497a21e8",
  "kind": "theorem",
  "lexical_name": "exact_tail_integral",
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
  "slug": "exact-tail-integral--67297f60fc42849d25e3de8c",
  "source": {
    "blob": "89b90428ac6073cfc474fb0b513083476ace0a58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 107,
    "path": "GRWTSK/Analysis/LogRootTailIntegral/Variant1a9b5f0c729b330be0234a635632e32e03a48ca4f62201bb345bd6bf1cb9fbbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67297f60fc42849d25e3de8cbf87daaf78cd19262d829fd9d7bd8bbe1f4f3c59",
  "verification": {
    "reference": "docs/verification/Analysis/LogRootTailIntegral/Variant1a9b5f0c729b330be0234a635632e32e03a48ca4f62201bb345bd6bf1cb9fbbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ad50152-e877-520d-cddd-b884497a21e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_tail_integral {a : ℝ} (ha : 2 ≤ a) :
    ∫ x in Set.Ioi a, density x = 2 * (Real.log a + 2) / Real.sqrt a := by
  rw [integral_Ioi_of_hasDerivAt_of_nonneg'
    (fun x hx => exact_density_primitive (by have := Set.mem_Ici.mp hx; linarith))
    (fun x hx => density_nonnegative (by have := Set.mem_Ioi.mp hx; linarith))
    log_root_primitive_tends_to_zero]
  unfold primitive
  ring

end
end GRWTSK.RiemannHypothesis.Conversation.LogRootTailIntegral
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/LogRootTailIntegral/Variant1a9b5f0c729b330be0234a635632e32e03a48ca4f62201bb345bd6bf1cb9fbbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/LogRootTailIntegral/Variant1a9b5f0c729b330be0234a635632e32e03a48ca4f62201bb345bd6bf1cb9fbbb.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89b90428ac6073cfc474fb0b513083476ace0a58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
