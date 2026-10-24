# traceForm_apply_lie_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f408170123f729a4db1da8f1a17c727899bf781e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 65,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e6b27acd-0e8d-5858-7e52-7acd307914f3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:99f632ee-357d-9782-ba91-fa05381b6d76",
  "kind": "lemma",
  "lexical_name": "traceForm_apply_lie_apply",
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
  "slug": "traceform-apply-lie-apply--fd7cdbda5ba4dffadc47f6fb",
  "source": {
    "blob": "f408170123f729a4db1da8f1a17c727899bf781e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 65,
    "path": "GRWTSK/Algebra/LinearAlgebra/TraceForm/Variant2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd7cdbda5ba4dffadc47f6fbc27ef74f2a90c6621c933b83c0acd61893b8f4d2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TraceForm/Variant2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99f632ee-357d-9782-ba91-fa05381b6d76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma traceForm_apply_lie_apply (x y z : L) :
    traceForm R L M ⁅x, y⁆ z = traceForm R L M x ⁅y, z⁆ := by
  calc traceForm R L M ⁅x, y⁆ z
      = trace R _ (φ ⁅x, y⁆ ∘ₗ φ z) := by simp only [traceForm_apply_apply]
    _ = trace R _ ((φ x * φ y - φ y * φ x) * φ z) := ?_
    _ = trace R _ (φ x * (φ y * φ z)) - trace R _ (φ y * (φ x * φ z)) := ?_
    _ = trace R _ (φ x * (φ y * φ z)) - trace R _ (φ x * (φ z * φ y)) := ?_
    _ = traceForm R L M x ⁅y, z⁆ := ?_
  · simp only [LieHom.map_lie, Ring.lie_def, ← Module.End.mul_eq_comp]
  · simp only [sub_mul, mul_sub, map_sub, mul_assoc]
  · simp only [LinearMap.trace_mul_cycle' R (φ x) (φ z) (φ y)]
  · simp only [traceForm_apply_apply, LieHom.map_lie, Ring.lie_def, mul_sub, map_sub,
      ← Module.End.mul_eq_comp]

/-- Given a representation `M` of a Lie algebra `L`, the action of any `x : L` is skew-adjoint wrt
the trace form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TraceForm/Variant2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TraceForm/Variant2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f408170123f729a4db1da8f1a17c727899bf781e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
