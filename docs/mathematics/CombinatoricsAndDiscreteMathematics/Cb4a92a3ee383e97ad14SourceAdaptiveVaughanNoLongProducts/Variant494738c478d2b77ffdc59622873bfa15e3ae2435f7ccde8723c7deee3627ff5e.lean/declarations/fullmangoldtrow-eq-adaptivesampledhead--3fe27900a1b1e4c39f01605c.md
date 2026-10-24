# fullMangoldtRow_eq_adaptiveSampledHead

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7c53ca3e-4c26-53ce-2f9f-ed3a0ef806be",
  "kind": "theorem",
  "lexical_name": "fullMangoldtRow_eq_adaptiveSampledHead",
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
  "slug": "fullmangoldtrow-eq-adaptivesampledhead--3fe27900a1b1e4c39f01605c",
  "source": {
    "blob": "9fa96975d60e119f20da22cfbc69735901a8ef7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 85,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Cb4a92a3ee383e97ad14SourceAdaptiveVaughanNoLongProducts/Variant494738c478d2b77ffdc59622873bfa15e3ae2435f7ccde8723c7deee3627ff5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3fe27900a1b1e4c39f01605c253eada90f1f6e7e1ada4007d5a0d8dc9af9be1f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Cb4a92a3ee383e97ad14SourceAdaptiveVaughanNoLongProducts/Variant494738c478d2b77ffdc59622873bfa15e3ae2435f7ccde8723c7deee3627ff5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c53ca3e-4c26-53ce-2f9f-ed3a0ef806be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fullMangoldtRow_eq_adaptiveSampledHead (A : ℝ) (hA : 1 ≤ A) :
    fullMangoldtRow A = adaptiveSampledHead A := by
  have hU := vaughanCutoff_pos A hA
  have hUN := vaughanCutoff_le_sourceKernelCutoff A hA
  have hVN : adaptiveMangoldtDepth A ≤ sourceKernelCutoff A := Nat.div_le_self _ _
  have he := finite_vaughan_no_long_products (sourceKernelCutoff A) (vaughanCutoff A)
    (adaptiveMangoldtDepth A) hUN hVN (fun n => sourcePlainWeight A (n : ℝ))
    (fun n hn => sourcePlainWeight_zero_of_cutoff_lt A hA n hn)
    (quotient_no_long_products _ _ hU)
  exact he

end RH16AdaptiveVaughan
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Cb4a92a3ee383e97ad14SourceAdaptiveVaughanNoLongProducts/Variant494738c478d2b77ffdc59622873bfa15e3ae2435f7ccde8723c7deee3627ff5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Cb4a92a3ee383e97ad14SourceAdaptiveVaughanNoLongProducts/Variant494738c478d2b77ffdc59622873bfa15e3ae2435f7ccde8723c7deee3627ff5e.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fa96975d60e119f20da22cfbc69735901a8ef7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
