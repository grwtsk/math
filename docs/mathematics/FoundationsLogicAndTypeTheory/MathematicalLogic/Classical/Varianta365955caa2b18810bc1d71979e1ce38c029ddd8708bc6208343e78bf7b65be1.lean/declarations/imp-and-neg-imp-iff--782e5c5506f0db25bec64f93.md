# imp_and_neg_imp_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:514ed4a5-93dc-883a-6cf8-1639fe975605",
  "kind": "theorem",
  "lexical_name": "imp_and_neg_imp_iff",
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
  "slug": "imp-and-neg-imp-iff--782e5c5506f0db25bec64f93",
  "source": {
    "blob": "013135b2c25bbe2b183aff4e1b9b3df8ae92260d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 205,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Classical/Varianta365955caa2b18810bc1d71979e1ce38c029ddd8708bc6208343e78bf7b65be1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:782e5c5506f0db25bec64f939026cc83a8cef713f5dae8c683eed85c8056508f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Classical/Varianta365955caa2b18810bc1d71979e1ce38c029ddd8708bc6208343e78bf7b65be1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:514ed4a5-93dc-883a-6cf8-1639fe975605`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem imp_and_neg_imp_iff (p : Prop) {q : Prop} : (p → q) ∧ (¬p → q) ↔ q :=
  Iff.intro (fun (a : _ ∧ _) => (Classical.em p).rec a.left a.right)
            (fun a => And.intro (fun _ => a) (fun _ => a))

end Classical

/- Export for Mathlib compat. -/
export Classical (imp_iff_right_iff imp_and_neg_imp_iff and_or_imp not_imp)

/-- Extract an element from an existential statement, using `Classical.choose`. -/
-- This enables projection notation.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Classical/Varianta365955caa2b18810bc1d71979e1ce38c029ddd8708bc6208343e78bf7b65be1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Classical/Varianta365955caa2b18810bc1d71979e1ce38c029ddd8708bc6208343e78bf7b65be1.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `013135b2c25bbe2b183aff4e1b9b3df8ae92260d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
