# symmetric_forward

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "561a0cd1f65f512ce34effe94e1ccbe738e2e010",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 46,
      "path": "GRWTSK/Analysis/Operator/UnboundedPortSymmetric.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7d7b9ae0-2bb3-dc97-ec1f-c45b3e97e657",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:19ffa17f-cfe0-2201-de00-b0ea515f0936",
  "kind": "theorem",
  "lexical_name": "symmetric_forward",
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
  "slug": "symmetric-forward--d5009f1ac01e9171450ad563",
  "source": {
    "blob": "561a0cd1f65f512ce34effe94e1ccbe738e2e010",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 46,
    "path": "GRWTSK/Analysis/Operator/UnboundedPortSymmetric.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5009f1ac01e9171450ad56301a8b1650fa6f4cffa0ac642d834fe5c9dc264fd",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/UnboundedPortSymmetric.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19ffa17f-cfe0-2201-de00-b0ea515f0936`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem symmetric_forward
    (P : OrthogonalFramedEquivalence A B)
    (hA : A.IsSymmetric) : B.IsSymmetric := by
  intro y z
  let x : A.domain := P.toFramedEquivalence.domainEquiv.symm y
  let w : A.domain := P.toFramedEquivalence.domainEquiv.symm z
  have hy : P.toFramedEquivalence.domainEquiv x = y :=
    P.toFramedEquivalence.domainEquiv.apply_symm_apply y
  have hz : P.toFramedEquivalence.domainEquiv w = z :=
    P.toFramedEquivalence.domainEquiv.apply_symm_apply z
  calc
    ⟪B.apply y, (z : F)⟫_ℝ =
        ⟪B.apply (P.toFramedEquivalence.domainEquiv x),
          (P.toFramedEquivalence.domainEquiv w : F)⟫_ℝ := by
            rw [hy, hz]
    _ = ⟪P.toFramedEquivalence.frame (A.apply x),
          P.toFramedEquivalence.frame (w : E)⟫_ℝ := by
            rw [← P.toFramedEquivalence.intertwines_apply x]
            rfl
    _ = ⟪A.apply x, (w : E)⟫_ℝ :=
          P.inner_map (A.apply x) (w : E)
    _ = ⟪(x : E), A.apply w⟫_ℝ := hA x w
    _ = ⟪P.toFramedEquivalence.frame (x : E),
          P.toFramedEquivalence.frame (A.apply w)⟫_ℝ :=
          (P.inner_map (x : E) (A.apply w)).symm
    _ = ⟪(P.toFramedEquivalence.domainEquiv x : F),
          B.apply (P.toFramedEquivalence.domainEquiv w)⟫_ℝ := by
            rw [← P.toFramedEquivalence.intertwines_apply w]
            rfl
    _ = ⟪(y : F), B.apply z⟫_ℝ := by
          rw [hy, hz]

/-- Symmetry is equivalent on both sides of an exact orthogonal framed equivalence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/OperatorTheory/UnboundedPortSymmetric.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Operator/UnboundedPortSymmetric.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `561a0cd1f65f512ce34effe94e1ccbe738e2e010` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
