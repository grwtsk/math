# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.UpdateFinset.Variant68db4a4cdb86264aa67ebc27444f6f8197e9b3721d131ae0edcae5e193e0ec27.DependsOn.updateFinset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:364f3b98-8593-2f21-8b18-403044b369d6",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.UpdateFinset.Variant68db4a4cdb86264aa67ebc27444f6f8197e9b3721d131ae0edcae5e193e0ec27.DependsOn.updateFinset",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-updatefinset-variant68db--a52a8cf7926cce5c6ce775e0",
  "source": {
    "blob": "fe0798dfc8d442efce1aa84a785e4b69453dfd96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 63,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Update/Variant681737344ff125a2db97b73fc914bb6fd83d7f28889b5050a5795323a3975d90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a52a8cf7926cce5c6ce775e0305c0be25ba0d771fc42082fd219e036591efe6a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Update/Variant681737344ff125a2db97b73fc914bb6fd83d7f28889b5050a5795323a3975d90.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:364f3b98-8593-2f21-8b18-403044b369d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.UpdateFinset.Variant68db4a4cdb86264aa67ebc27444f6f8197e9b3721d131ae0edcae5e193e0ec27.DependsOn.updateFinset {α : Type*} {f : (Π i, π i) → α} {s : Set ι}
    (hf : DependsOn f s) {t : Finset ι} (y : Π i : t, π i) :
    DependsOn (fun x ↦ f (updateFinset x t y)) (s \ t) := by
  refine fun x₁ x₂ h ↦ hf (fun i hi ↦ ?_)
  simp only [Function.updateFinset]
  split_ifs; · rfl
  simp_all

/-- If one replaces the variable indexed by `i`, then `f` no longer depends on
this variable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Update/Variant681737344ff125a2db97b73fc914bb6fd83d7f28889b5050a5795323a3975d90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Update/Variant681737344ff125a2db97b73fc914bb6fd83d7f28889b5050a5795323a3975d90.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe0798dfc8d442efce1aa84a785e4b69453dfd96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
