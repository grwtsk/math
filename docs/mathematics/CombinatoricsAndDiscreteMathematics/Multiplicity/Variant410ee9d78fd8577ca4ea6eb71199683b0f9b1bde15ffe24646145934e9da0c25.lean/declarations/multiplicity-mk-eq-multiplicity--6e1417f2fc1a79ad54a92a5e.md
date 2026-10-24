# multiplicity_mk_eq_multiplicity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bf2a5cf144ee1c7d091e926d1b16cf829060ede9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 374,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/41/410ee9d78fd8577ca4ea6eb71199683b0f9b1bde15ffe24646145934e9da0c25.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a322ce77-0605-3de9-6091-8f06696b7743",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:91606ced-9a98-40c8-fafa-22f996c42dd2",
  "kind": "theorem",
  "lexical_name": "multiplicity_mk_eq_multiplicity",
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
  "slug": "multiplicity-mk-eq-multiplicity--6e1417f2fc1a79ad54a92a5e",
  "source": {
    "blob": "bf2a5cf144ee1c7d091e926d1b16cf829060ede9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 400,
    "line": 374,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Multiplicity/Variant410ee9d78fd8577ca4ea6eb71199683b0f9b1bde15ffe24646145934e9da0c25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e1417f2fc1a79ad54a92a5e27be6f132bf8ad5af0beea087edfa8975f56fc7d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Multiplicity/Variant410ee9d78fd8577ca4ea6eb71199683b0f9b1bde15ffe24646145934e9da0c25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91606ced-9a98-40c8-fafa-22f996c42dd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 374–400.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem multiplicity_mk_eq_multiplicity
    [DecidableRel ((· ∣ ·) : Associates α → Associates α → Prop)] {a b : α} :
    multiplicity (Associates.mk a) (Associates.mk b) = multiplicity a b := by
  by_cases h : Finite a b
  · rw [← PartENat.natCast_get (finite_iff_dom.mp h)]
    refine'
        (multiplicity.unique
            (show Associates.mk a ^ (multiplicity a b).get h ∣ Associates.mk b from _) _).symm <;>
      rw [← Associates.mk_pow, Associates.mk_dvd_mk]
    · exact pow_multiplicity_dvd h
    · exact is_greatest
          ((PartENat.lt_coe_iff _ _).mpr (Exists.intro (finite_iff_dom.mp h) (Nat.lt_succ_self _)))
  · suffices ¬Finite (Associates.mk a) (Associates.mk b) by
      rw [finite_iff_dom, PartENat.not_dom_iff_eq_top] at h this
      rw [h, this]
    refine'
      not_finite_iff_forall.mpr fun n => by
        rw [← Associates.mk_pow, Associates.mk_dvd_mk]
        exact not_finite_iff_forall.mp h n
#align multiplicity.multiplicity_mk_eq_multiplicity multiplicity.multiplicity_mk_eq_multiplicity

end CommMonoidWithZero

section Semiring

variable [Semiring α] [DecidableRel ((· ∣ ·) : α → α → Prop)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Multiplicity/Variant410ee9d78fd8577ca4ea6eb71199683b0f9b1bde15ffe24646145934e9da0c25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Multiplicity/Variant410ee9d78fd8577ca4ea6eb71199683b0f9b1bde15ffe24646145934e9da0c25.lean#L374).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf2a5cf144ee1c7d091e926d1b16cf829060ede9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
