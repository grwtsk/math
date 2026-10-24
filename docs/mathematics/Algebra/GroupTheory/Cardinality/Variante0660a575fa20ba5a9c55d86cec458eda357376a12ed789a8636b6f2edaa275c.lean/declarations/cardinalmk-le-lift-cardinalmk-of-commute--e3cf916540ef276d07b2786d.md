# cardinalMk_le_lift_cardinalMk_of_commute

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bbaeaf47fcf7a1b96913e6f770c817c240116a71",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 86,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e0660a575fa20ba5a9c55d86cec458eda357376a12ed789a8636b6f2edaa275c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:89169ed9-9e3f-e82a-6f57-981f3c4a010f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2809eb56-bead-51b4-8c9f-a2a3e69f5306",
  "kind": "theorem",
  "lexical_name": "cardinalMk_le_lift_cardinalMk_of_commute",
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
  "slug": "cardinalmk-le-lift-cardinalmk-of-commute--e3cf916540ef276d07b2786d",
  "source": {
    "blob": "bbaeaf47fcf7a1b96913e6f770c817c240116a71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 86,
    "path": "GRWTSK/Algebra/GroupTheory/Cardinality/Variante0660a575fa20ba5a9c55d86cec458eda357376a12ed789a8636b6f2edaa275c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3cf916540ef276d07b2786d5d27747ed2d5395cfc7a0606454069f29641b0fd",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Cardinality/Variante0660a575fa20ba5a9c55d86cec458eda357376a12ed789a8636b6f2edaa275c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2809eb56-bead-51b4-8c9f-a2a3e69f5306`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cardinalMk_le_lift_cardinalMk_of_commute (hc : ∀ s s' : S, Commute s s') :
    #(OreLocalization S X) ≤ lift.{u} #X := by
  rcases finite_or_infinite X with _ | _
  · have := lift_mk_le_lift_mk_of_surjective (oreDiv_one_surjective_of_finite_right S X)
    rwa [lift_umax.{v, u}, lift_id'] at this
  have key (x : X) (s s' : S) (h : s • x = s' • x) (hc : Commute s s') : x /ₒ s = x /ₒ s' := by
    rw [oreDiv_eq_iff]
    refine ⟨s, s'.1, h, ?_⟩
    · exact_mod_cast hc
  let i (x : X × S) := x.1 /ₒ x.2
  have hsurj : Surjective i := Quotient.mk''_surjective
  have hi := rightInverse_surjInv hsurj
  let j := (fun x : X × S ↦ (x.1, x.2 • x.1)) ∘ surjInv hsurj
  suffices Injective j by
    have := lift_mk_le_lift_mk_of_injective this
    rwa [lift_umax.{v, u}, lift_id', mk_prod, lift_id, lift_mul, mul_eq_self (by simp)] at this
  intro y y' heq
  rw [← hi y, ← hi y']
  simp_rw [j, comp_apply, Prod.ext_iff] at heq
  simp_rw [i]
  set x := surjInv hsurj y
  set x' := surjInv hsurj y'
  obtain ⟨h1, h2⟩ := heq
  rw [← h1] at h2 ⊢
  exact key x.1 x.2 x'.2 h2 (hc _ _)

end OreLocalization
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Cardinality/Variante0660a575fa20ba5a9c55d86cec458eda357376a12ed789a8636b6f2edaa275c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Cardinality/Variante0660a575fa20ba5a9c55d86cec458eda357376a12ed789a8636b6f2edaa275c.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbaeaf47fcf7a1b96913e6f770c817c240116a71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
