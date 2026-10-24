# measurable_piEquivPiSubtypeProd_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4b1507f-d8ab-cac8-f017-90b26d9e16db",
  "kind": "theorem",
  "lexical_name": "measurable_piEquivPiSubtypeProd_symm",
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
  "slug": "measurable-piequivpisubtypeprod-symm--2b9db46fc665984e89aba48e",
  "source": {
    "blob": "a8f2e33dfeb38e66172d859d925dacb7d77e30ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 767,
    "line": 754,
    "path": "GRWTSK/Analysis/MeasureTheory/Constructions/Variant8ad29fd3cb484d8f4f5a1f76e9bc88092eb07bc4e151c131e9cbabc1a6e64797.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b9db46fc665984e89aba48e48bf8e347b471aef8d29ade4bd203f33c34dcd62",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Constructions/Variant8ad29fd3cb484d8f4f5a1f76e9bc88092eb07bc4e151c131e9cbabc1a6e64797.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4b1507f-d8ab-cac8-f017-90b26d9e16db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 754–767.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measurable_piEquivPiSubtypeProd_symm (p : δ → Prop) [DecidablePred p] :
    Measurable (Equiv.piEquivPiSubtypeProd p X).symm := by
  refine measurable_pi_iff.2 fun j => ?_
  by_cases hj : p j
  · simp only [hj, dite_eq_left, Equiv.piEquivPiSubtypeProd_symm_apply]
    have : Measurable fun (f : ∀ i : { x // p x }, X i.1) => f ⟨j, hj⟩ :=
      measurable_pi_apply (X := fun i : {x // p x} => X i.1) ⟨j, hj⟩
    exact Measurable.comp this measurable_fst
  · simp only [hj, Equiv.piEquivPiSubtypeProd_symm_apply, dite_eq_right, not_false_iff]
    have : Measurable fun (f : ∀ i : { x // ¬p x }, X i.1) => f ⟨j, hj⟩ :=
      measurable_pi_apply (X := fun i : {x // ¬p x} => X i.1) ⟨j, hj⟩
    exact Measurable.comp this measurable_snd

@[fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Constructions/Variant8ad29fd3cb484d8f4f5a1f76e9bc88092eb07bc4e151c131e9cbabc1a6e64797.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Constructions/Variant8ad29fd3cb484d8f4f5a1f76e9bc88092eb07bc4e151c131e9cbabc1a6e64797.lean#L754).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8f2e33dfeb38e66172d859d925dacb7d77e30ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
