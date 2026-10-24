# mulIndicator_iInter_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:68de2f57-1489-9937-20a3-01f5bb2c4441",
  "kind": "lemma",
  "lexical_name": "mulIndicator_iInter_apply",
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
  "slug": "mulindicator-iinter-apply--03a7a2f8e1f043c805ce5b03",
  "source": {
    "blob": "ffcdb2466bfb2d38a7ab7fa36509b0d6ad153b20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 900,
    "line": 880,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/IndicatorFunction/Variant2138e21a14f1a5c79b98e977a31e9658f75f23e11b1940d6c7c93a6719c63408.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03a7a2f8e1f043c805ce5b03246d39baa288d29663ebda9c38ec2373de6d6b3e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/IndicatorFunction/Variant2138e21a14f1a5c79b98e977a31e9658f75f23e11b1940d6c7c93a6719c63408.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68de2f57-1489-9937-20a3-01f5bb2c4441`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 880–900.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[to_additive] lemma mulIndicator_iInter_apply {ι : Sort*} {M : Type*} [Nonempty ι]
    [CompleteLattice M] [One M] (h1 : (⊥ : M) = 1) (s : ι → Set α) (f : α → M) (x : α) :
    mulIndicator (⋂ i, s i) f x = ⨅ i, mulIndicator (s i) f x := by
  by_cases hx : x ∈ ⋂ i, s i
  · rw [mulIndicator_of_mem hx]
    rw [mem_iInter] at hx
    refine le_antisymm ?_ (by simp only [mulIndicator_of_mem (hx _), ciInf_const, le_refl])
    exact le_iInf (fun j ↦ by simp only [mulIndicator_of_mem (hx j), le_refl])
  · rw [mulIndicator_of_not_mem hx]
    simp only [mem_iInter, not_exists, not_forall] at hx
    rcases hx with ⟨j, hj⟩
    refine le_antisymm (by simp only [← h1, le_iInf_iff, bot_le, forall_const]) ?_
    simpa [mulIndicator_of_not_mem hj] using (iInf_le (fun i ↦ (s i).mulIndicator f) j) x

end Order

section CanonicallyOrderedMonoid

variable [CanonicallyOrderedMonoid M]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/IndicatorFunction/Variant2138e21a14f1a5c79b98e977a31e9658f75f23e11b1940d6c7c93a6719c63408.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/IndicatorFunction/Variant2138e21a14f1a5c79b98e977a31e9658f75f23e11b1940d6c7c93a6719c63408.lean#L880).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffcdb2466bfb2d38a7ab7fa36509b0d6ad153b20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
