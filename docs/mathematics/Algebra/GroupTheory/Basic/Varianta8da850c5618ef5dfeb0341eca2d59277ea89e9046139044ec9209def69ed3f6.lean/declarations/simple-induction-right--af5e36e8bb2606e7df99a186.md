# simple_induction_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:edb1eaff-b573-90ce-0971-e3717e7dbafb",
  "kind": "theorem",
  "lexical_name": "simple_induction_right",
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
  "slug": "simple-induction-right--af5e36e8bb2606e7df99a186",
  "source": {
    "blob": "dfa999789ee38a183e816fdea3b4f0b41d8df338",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 286,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Varianta8da850c5618ef5dfeb0341eca2d59277ea89e9046139044ec9209def69ed3f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af5e36e8bb2606e7df99a1869fd07d07bc1868d64b7a4f94195fc2a5c39a7b2f",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Varianta8da850c5618ef5dfeb0341eca2d59277ea89e9046139044ec9209def69ed3f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:edb1eaff-b573-90ce-0971-e3717e7dbafb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 286–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem simple_induction_right {p : W → Prop} (w : W) (one : p 1)
    (mul_simple_right : ∀ (w : W) (i : B), p w → p (w * s i)) : p w := by
  let p' : ((w : W) → w ∈ Submonoid.closure (Set.range cs.simple) → Prop) :=
    fun w _ ↦ p w
  have := cs.submonoid_closure_range_simple.symm ▸ Submonoid.mem_top w
  induction this using Submonoid.closure_induction_right with
  | one => exact one
  | mul_right y my i mi ih =>
    rw [Set.mem_range] at mi
    exact mi.choose_spec ▸ mul_simple_right _ _ ih

/-! ### Homomorphisms from a Coxeter group -/

/-- If two homomorphisms with domain `W` agree on all simple reflections, then they are equal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Varianta8da850c5618ef5dfeb0341eca2d59277ea89e9046139044ec9209def69ed3f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Varianta8da850c5618ef5dfeb0341eca2d59277ea89e9046139044ec9209def69ed3f6.lean#L286).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dfa999789ee38a183e816fdea3b4f0b41d8df338` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
