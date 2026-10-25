# targetQuotient_coarsest

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a72893c-82d9-9008-e483-30221339964e",
  "kind": "theorem",
  "lexical_name": "targetQuotient_coarsest",
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
  "slug": "targetquotient-coarsest--f7eb766dda9efe5337af3c9e",
  "source": {
    "blob": "0ac39e1a62aa3c7a4c3ada39a61f4f435643a456",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 63,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variante46e12a775dad97e601469ead442eab785f5d8178c59bb66d1664359bb165eae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7eb766dda9efe5337af3c9e15e8326ff8947752bc6cc75d43af6b4d5a314b5b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variante46e12a775dad97e601469ead442eab785f5d8178c59bb66d1664359bb165eae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a72893c-82d9-9008-e483-30221339964e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem targetQuotient_coarsest (targets : TargetFamily.{u, v} X) {Q : Type w}
    (q : X → Q) (preserves : ∀ i, RecoverableFrom q (targets.value i)) :
    (∀ i, RecoverableFrom (targetClass targets) (targets.value i)) ∧
    (∀ x y, q x = q y → targetClass targets x = targetClass targets y) ∧
    ∃! factor : Quotient (Setoid.ker q) → TargetQuotient targets,
      ∀ x, factor (Quotient.mk (Setoid.ker q) x) = targetClass targets x := by
  refine ⟨targetQuotient_targets_recoverable targets, ?_,
    targetFactor targets q preserves, fun _ => rfl, ?_⟩
  · intro x y same
    exact Quotient.sound (fun i => (preserves i).eq_of_eq same)
  · intro factor agrees
    funext point
    exact Quotient.inductionOn point agrees

/-- With surjectivity, the same factor exists uniquely on the entire codomain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variante46e12a775dad97e601469ead442eab785f5d8178c59bb66d1664359bb165eae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variante46e12a775dad97e601469ead442eab785f5d8178c59bb66d1664359bb165eae.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ac39e1a62aa3c7a4c3ada39a61f4f435643a456` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
