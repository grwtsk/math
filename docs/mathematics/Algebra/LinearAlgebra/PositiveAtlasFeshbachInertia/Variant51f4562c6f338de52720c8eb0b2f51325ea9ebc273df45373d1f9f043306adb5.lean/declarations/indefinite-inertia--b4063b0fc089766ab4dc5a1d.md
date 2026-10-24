# indefinite_inertia

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12d29cf3-3c20-0e50-41f9-511d18a9e473",
  "kind": "theorem",
  "lexical_name": "indefinite_inertia",
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
  "slug": "indefinite-inertia--b4063b0fc089766ab4dc5a1d",
  "source": {
    "blob": "b527b840f31bf3df623a6d1f6c81c512003087a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 92,
    "path": "GRWTSK/Algebra/LinearAlgebra/PositiveAtlasFeshbachInertia/Variant51f4562c6f338de52720c8eb0b2f51325ea9ebc273df45373d1f9f043306adb5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4063b0fc089766ab4dc5a1dc79df7bab1fbfdd0b54e653a80408ec57c41575a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PositiveAtlasFeshbachInertia/Variant51f4562c6f338de52720c8eb0b2f51325ea9ebc273df45373d1f9f043306adb5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12d29cf3-3c20-0e50-41f9-511d18a9e473`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem indefinite_inertia :
    (sigPos (fullForm (scalar 0) (1 : Matrix Unit Unit ℝ) 1),
        sigNeg (fullForm (scalar 0) (1 : Matrix Unit Unit ℝ) 1),
        Module.finrank ℝ (fullForm (scalar 0) (1 : Matrix Unit Unit ℝ) 1).radical) =
      (1, 1, 0) := by
  rw [inertia_counts]
  have hp : {i | 0 < weights 0 i} = {Sum.inr ()} := by
    ext i
    rcases i with i | j <;> simp [weights]
  have hn : {i | weights 0 i < 0} = {Sum.inl ()} := by
    ext i
    rcases i with i | j <;> simp [weights]
  have hz : {i | weights 0 i = 0} = ∅ := by
    ext i
    rcases i with i | j <;> simp [weights]
  rw [hp, hn, hz]
  simp

end

end FormalResearch.PositiveAtlas.FeshbachInertia.Fixtures
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PositiveAtlasFeshbachInertia/Variant51f4562c6f338de52720c8eb0b2f51325ea9ebc273df45373d1f9f043306adb5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PositiveAtlasFeshbachInertia/Variant51f4562c6f338de52720c8eb0b2f51325ea9ebc273df45373d1f9f043306adb5.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b527b840f31bf3df623a6d1f6c81c512003087a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
