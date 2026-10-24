# norm_energy_difference

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "013c8944ec2042466d2d97a7ffc8e8899cfa9e76",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 398,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e8/e867a0716cab6c4539eb71905a1297283e6345e9042d47e96c423f97559e6528.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:97e76344-0526-9d51-c782-82d6328dabbd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f627c463-f2cd-5111-80b3-6efdc8335d54",
  "kind": "theorem",
  "lexical_name": "norm_energy_difference",
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
  "slug": "norm-energy-difference--2107256592c4a8befdf021b5",
  "source": {
    "blob": "013c8944ec2042466d2d97a7ffc8e8899cfa9e76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 414,
    "line": 398,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceResolventTruncationStatements/Variante867a0716cab6c4539eb71905a1297283e6345e9042d47e96c423f97559e6528.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2107256592c4a8befdf021b56b7e121d6e36fff6812e56f0a03b34a6916b2018",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceResolventTruncationStatements/Variante867a0716cab6c4539eb71905a1297283e6345e9042d47e96c423f97559e6528.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f627c463-f2cd-5111-80b3-6efdc8335d54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 398–414.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_energy_difference (S T : H →L[ℂ] H) :
    ‖S.comp S.adjoint - T.comp T.adjoint‖ ≤ (‖S‖ + ‖T‖) * ‖S - T‖ := by
  have he : S.comp S.adjoint - T.comp T.adjoint =
      (S - T).comp S.adjoint + T.comp (S.adjoint - T.adjoint) := by
    apply ContinuousLinearMap.ext
    intro f
    simp only [ContinuousLinearMap.comp_apply, sub_apply, add_apply, map_sub]
    abel
  rw [he]
  calc
    _ ≤ ‖(S - T).comp S.adjoint‖ + ‖T.comp (S.adjoint - T.adjoint)‖ := norm_add_le _ _
    _ ≤ ‖S - T‖ * ‖S.adjoint‖ + ‖T‖ * ‖S.adjoint - T.adjoint‖ :=
      add_le_add (ContinuousLinearMap.opNorm_comp_le _ _) (ContinuousLinearMap.opNorm_comp_le _ _)
    _ = _ := by
      rw [← map_sub, LinearIsometryEquiv.norm_map, LinearIsometryEquiv.norm_map]
      ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceResolventTruncationStatements/Variante867a0716cab6c4539eb71905a1297283e6345e9042d47e96c423f97559e6528.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceResolventTruncationStatements/Variante867a0716cab6c4539eb71905a1297283e6345e9042d47e96c423f97559e6528.lean#L398).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `013c8944ec2042466d2d97a7ffc8e8899cfa9e76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
