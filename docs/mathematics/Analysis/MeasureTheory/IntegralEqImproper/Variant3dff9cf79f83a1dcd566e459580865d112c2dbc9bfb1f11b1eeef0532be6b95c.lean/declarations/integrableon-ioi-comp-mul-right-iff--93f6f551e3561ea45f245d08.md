# integrableOn_Ioi_comp_mul_right_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a5fb502521492f34c02b59f2f46a1e6be0be498f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1165,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3dff9cf79f83a1dcd566e459580865d112c2dbc9bfb1f11b1eeef0532be6b95c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b10a2924-9a3e-8b5d-738a-8589356a4c21",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ac1112ef-f127-996f-3fd7-f5b58b7248a7",
  "kind": "theorem",
  "lexical_name": "integrableOn_Ioi_comp_mul_right_iff",
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
  "slug": "integrableon-ioi-comp-mul-right-iff--93f6f551e3561ea45f245d08",
  "source": {
    "blob": "a5fb502521492f34c02b59f2f46a1e6be0be498f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1181,
    "line": 1165,
    "path": "GRWTSK/Analysis/MeasureTheory/IntegralEqImproper/Variant3dff9cf79f83a1dcd566e459580865d112c2dbc9bfb1f11b1eeef0532be6b95c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93f6f551e3561ea45f245d083b8da846f725e763193d38404687c07986383467",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/IntegralEqImproper/Variant3dff9cf79f83a1dcd566e459580865d112c2dbc9bfb1f11b1eeef0532be6b95c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac1112ef-f127-996f-3fd7-f5b58b7248a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1165–1181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrableOn_Ioi_comp_mul_right_iff (f : ℝ → E) (c : ℝ) {a : ℝ} (ha : 0 < a) :
    IntegrableOn (fun x => f (x * a)) (Ioi c) ↔ IntegrableOn f (Ioi <| c * a) := by
  simpa only [mul_comm, mul_zero] using integrableOn_Ioi_comp_mul_left_iff f c ha

end IoiIntegrability

/-!
## Integration by parts
-/

section IntegrationByPartsBilinear

variable {E F G : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
  [NormedAddCommGroup F] [NormedSpace ℝ F] [NormedAddCommGroup G] [NormedSpace ℝ G]
  {L : E →L[ℝ] F →L[ℝ] G} {u : ℝ → E} {v : ℝ → F} {u' : ℝ → E} {v' : ℝ → F}
  {m n : G}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/IntegralEqImproper/Variant3dff9cf79f83a1dcd566e459580865d112c2dbc9bfb1f11b1eeef0532be6b95c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/IntegralEqImproper/Variant3dff9cf79f83a1dcd566e459580865d112c2dbc9bfb1f11b1eeef0532be6b95c.lean#L1165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5fb502521492f34c02b59f2f46a1e6be0be498f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
