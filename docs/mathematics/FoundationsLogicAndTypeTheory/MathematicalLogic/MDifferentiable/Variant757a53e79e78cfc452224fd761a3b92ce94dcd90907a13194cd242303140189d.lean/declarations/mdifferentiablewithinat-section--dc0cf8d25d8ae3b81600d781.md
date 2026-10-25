# mdifferentiableWithinAt_section

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6e46fa4-19b8-44c2-b84d-acc3988afa65",
  "kind": "theorem",
  "lexical_name": "mdifferentiableWithinAt_section",
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
  "slug": "mdifferentiablewithinat-section--dc0cf8d25d8ae3b81600d781",
  "source": {
    "blob": "1dbddb9c92d0b28a17ea483b67f12d4fb1ab9031",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 77,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/MDifferentiable/Variant757a53e79e78cfc452224fd761a3b92ce94dcd90907a13194cd242303140189d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc0cf8d25d8ae3b81600d781f15c7ecdf28acac54b723e407bad0ef50ba1a93b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/MDifferentiable/Variant757a53e79e78cfc452224fd761a3b92ce94dcd90907a13194cd242303140189d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6e46fa4-19b8-44c2-b84d-acc3988afa65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mdifferentiableWithinAt_section (s : Π b, E b) {u : Set B} {b₀ : B} :
    MDiffAt[u] (T% s) b₀ ↔ MDiffAt[u] (fun b ↦ (trivializationAt F E b₀ (s b)).2) b₀ := by
  rw [mdifferentiableWithinAt_totalSpace]
  change MDifferentiableWithinAt _ _ id _ _ ∧ _ ↔ _
  simp [mdifferentiableWithinAt_id]

/-- Characterization of differentiable sections of a vector bundle at a point within a set
in terms of the preferred trivialization at that point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/MDifferentiable/Variant757a53e79e78cfc452224fd761a3b92ce94dcd90907a13194cd242303140189d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/MDifferentiable/Variant757a53e79e78cfc452224fd761a3b92ce94dcd90907a13194cd242303140189d.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1dbddb9c92d0b28a17ea483b67f12d4fb1ab9031` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
