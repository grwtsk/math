# toDAF_causalEquivalent_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4fe691a7-9ce1-b87b-8362-56c2d8686232",
  "kind": "theorem",
  "lexical_name": "toDAF_causalEquivalent_iff",
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
  "slug": "todaf-causalequivalent-iff--b93cb49bfedee1b466f13b4d",
  "source": {
    "blob": "2ef51f2f86e2a12bc538e2bd0e2bbfd8e3e6d780",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 75,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableAdapter/Variant5781c91795648599eb1a8c7dd52ca09fcc4927b482949a2484e80ed40d1df74f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b93cb49bfedee1b466f13b4daf202bd1bd14e8a0d31e375f185bf6d4ae58fffd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableAdapter/Variant5781c91795648599eb1a8c7dd52ca09fcc4927b482949a2484e80ed40d1df74f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4fe691a7-9ce1-b87b-8362-56c2d8686232`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toDAF_causalEquivalent_iff
    {Input : Type uI}
    {State : Type uS}
    {Resolution : Type uR}
    (M : ObservableRecursion.System Input State Resolution)
    (x y : State) :
    (toDAF M).CausalEquivalent x y ↔ M.CausalEquivalent x y := by
  constructor
  · intro h inputs resolution
    have hfuture := h inputs resolution
    rw [toDAF_run M inputs x, toDAF_run M inputs y] at hfuture
    exact hfuture
  · intro h inputs resolution
    rw [toDAF_run M inputs x, toDAF_run M inputs y]
    exact h inputs resolution

/-- The old and bundled presentations have canonically equivalent causal states. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableAdapter/Variant5781c91795648599eb1a8c7dd52ca09fcc4927b482949a2484e80ed40d1df74f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableAdapter/Variant5781c91795648599eb1a8c7dd52ca09fcc4927b482949a2484e80ed40d1df74f.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ef51f2f86e2a12bc538e2bd0e2bbfd8e3e6d780` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
