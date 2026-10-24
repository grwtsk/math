# radical_eq_sInf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a6ab61a9-faf3-fa23-ef2d-71c19a4912e7",
  "kind": "theorem",
  "lexical_name": "radical_eq_sInf",
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
  "slug": "radical-eq-sinf--13a8a797c90a0c3d65183712",
  "source": {
    "blob": "d93bb8daa13aa4395647185dd4aa01fbafca6654",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 988,
    "line": 952,
    "path": "GRWTSK/Algebra/Operations/Variant7206fcc1eae5431667792c0e54aff70d5bdc7c0bd0d9eaf89e21fc036fc53eec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13a8a797c90a0c3d65183712bf6488ea9ab968373feb25db8e98b4634677accd",
  "verification": {
    "reference": "docs/verification/Algebra/Operations/Variant7206fcc1eae5431667792c0e54aff70d5bdc7c0bd0d9eaf89e21fc036fc53eec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6ab61a9-faf3-fa23-ef2d-71c19a4912e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 952–988.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem radical_eq_sInf (I : Ideal R) : radical I = sInf { J : Ideal R | I ≤ J ∧ IsPrime J } :=
  le_antisymm (le_sInf fun J hJ ↦ hJ.2.radical_le_iff.2 hJ.1) fun r hr ↦
    by_contradiction fun hri ↦
      let ⟨m, (hrm : r ∉ radical m), him, hm⟩ :=
        zorn_nonempty_partialOrder₀ { K : Ideal R | r ∉ radical K }
          (fun c hc hcc y hyc =>
            ⟨sSup c, fun ⟨n, hrnc⟩ =>
              let ⟨y, hyc, hrny⟩ := (Submodule.mem_sSup_of_directed ⟨y, hyc⟩ hcc.directedOn).1 hrnc
              hc hyc ⟨n, hrny⟩,
              fun z => le_sSup⟩)
          I hri
      have : ∀ (x) (_ : x ∉ m), r ∈ radical (m ⊔ span {x}) := fun x hxm =>
        by_contradiction fun hrmx =>
          hxm <|
            hm (m ⊔ span {x}) hrmx le_sup_left ▸
              (le_sup_right : _ ≤ m ⊔ span {x}) (subset_span <| Set.mem_singleton _)
      have : IsPrime m :=
        ⟨by rintro rfl; rw [radical_top] at hrm; exact hrm trivial, fun {x y} hxym =>
          or_iff_not_imp_left.2 fun hxm =>
            by_contradiction fun hym =>
              let ⟨n, hrn⟩ := this _ hxm
              let ⟨p, hpm, q, hq, hpqrn⟩ := Submodule.mem_sup.1 hrn
              let ⟨c, hcxq⟩ := mem_span_singleton'.1 hq
              let ⟨k, hrk⟩ := this _ hym
              let ⟨f, hfm, g, hg, hfgrk⟩ := Submodule.mem_sup.1 hrk
              let ⟨d, hdyg⟩ := mem_span_singleton'.1 hg
              hrm
                ⟨n + k, by
                  rw [pow_add, ← hpqrn, ← hcxq, ← hfgrk, ← hdyg, add_mul, mul_add (c * x),
                      mul_assoc c x (d * y), mul_left_comm x, ← mul_assoc];
                    refine'
                      m.add_mem (m.mul_mem_right _ hpm)
                        (m.add_mem (m.mul_mem_left _ hfm) (m.mul_mem_left _ hxym))⟩⟩
    hrm <|
      this.radical.symm ▸ (sInf_le ⟨him, this⟩ : sInf { J : Ideal R | I ≤ J ∧ IsPrime J } ≤ m) hr
#align ideal.radical_eq_Inf Ideal.radical_eq_sInf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Operations/Variant7206fcc1eae5431667792c0e54aff70d5bdc7c0bd0d9eaf89e21fc036fc53eec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Operations/Variant7206fcc1eae5431667792c0e54aff70d5bdc7c0bd0d9eaf89e21fc036fc53eec.lean#L952).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d93bb8daa13aa4395647185dd4aa01fbafca6654` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
