# provenance_extension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a36f814-5383-d5d0-31cd-19fcd483ef80",
  "kind": "theorem",
  "lexical_name": "provenance_extension",
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
  "slug": "provenance-extension--b6bcc7dae3b262c36b48c08e",
  "source": {
    "blob": "802ba26ac56b970178f2ba999ee050677c300180",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 64,
    "path": "GRWTSK/Algebra/LinearAlgebra/FutureObservableProvenanceVerified/Variant0289b3c5ea0adb2f121715fa0ec13fabc20fbaac49a48ed71464221edf2a2fce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6bcc7dae3b262c36b48c08eace74b22db8298fdcd47b4fc971f71061d461933",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FutureObservableProvenanceVerified/Variant0289b3c5ea0adb2f121715fa0ec13fabc20fbaac49a48ed71464221edf2a2fce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a36f814-5383-d5d0-31cd-19fcd483ef80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem provenance_extension (generators : Move → Matrix ι ι ℚ)
    (H parent child : Matrix ι ι ℚ) (word : List Move) (g : Move)
    (parent_checked : parent = pullback H (matrixWord generators word))
    (child_checked : child = pullback parent (generators g)) :
    child = pullback H (matrixWord generators (g :: word)) := by
  rw [matrixWord_cons, pullback_comp, ← parent_checked]
  exact child_checked

/-- The retained complete child readout is an actual finite future. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FutureObservableProvenanceVerified/Variant0289b3c5ea0adb2f121715fa0ec13fabc20fbaac49a48ed71464221edf2a2fce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FutureObservableProvenanceVerified/Variant0289b3c5ea0adb2f121715fa0ec13fabc20fbaac49a48ed71464221edf2a2fce.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `802ba26ac56b970178f2ba999ee050677c300180` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
