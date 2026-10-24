# explicit_dilationTest_square_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ba9c53aa798dc2020b8b67b9e9dc64007c34d84f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 191,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a21bf7b3f33df4344d46117861aa875bfd22ed1062c97c703d84a35ad502ecee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5e06e332-65ca-c811-09f6-45cb957dc83c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:95ed8d0a-0b1f-c5fd-6b58-7388a7577db2",
  "kind": "theorem",
  "lexical_name": "explicit_dilationTest_square_integrable",
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
  "slug": "explicit-dilationtest-square-integrable--3f2ec14f9f468cd0c15c8ec4",
  "source": {
    "blob": "ba9c53aa798dc2020b8b67b9e9dc64007c34d84f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 191,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Realization/Varianta21bf7b3f33df4344d46117861aa875bfd22ed1062c97c703d84a35ad502ecee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f2ec14f9f468cd0c15c8ec45846d5a6e916d6aaa27b1a9ab2cb64550d18d467",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Realization/Varianta21bf7b3f33df4344d46117861aa875bfd22ed1062c97c703d84a35ad502ecee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95ed8d0a-0b1f-c5fd-6b58-7388a7577db2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem explicit_dilationTest_square_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun x ↦ dilationTest explicitSecondDerivative A x ^ 2) volume := by
  have hpos : 0 < A := lt_of_lt_of_le (by norm_num) hA
  rw [explicit_dilationTest_eq_indicator A hpos]
  have hc : Continuous (fun x ↦ (secondInterior A x - bumpInterior A x / 4) ^ 2) :=
    ((secondInterior_continuous A).sub ((bumpInterior_continuous A).div_const 4)).pow 2
  convert integrable_zeroExtension _ hc (-A) A using 1
  funext x
  simp only [indicator_apply]
  split_ifs <;> simp


end

end FormalResearch.SUCAS.Realization
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Realization/Varianta21bf7b3f33df4344d46117861aa875bfd22ed1062c97c703d84a35ad502ecee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Realization/Varianta21bf7b3f33df4344d46117861aa875bfd22ed1062c97c703d84a35ad502ecee.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba9c53aa798dc2020b8b67b9e9dc64007c34d84f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
