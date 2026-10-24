# exists_supIrred_decomposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dbde6a19-ea25-8dbe-b445-a5e75425f0d5",
  "kind": "theorem",
  "lexical_name": "exists_supIrred_decomposition",
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
  "slug": "exists-supirred-decomposition--78e77b878b9e59e980962d0c",
  "source": {
    "blob": "55d9c94b47b64be2ae9e0f31238eb8889bb84cc3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 142,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Irreducible/Variante2ac08363385e3f7abd911294baadaa5f28cb64ecd8ba87f38c038dfe141d345.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78e77b878b9e59e980962d0c896104cf430e31c5c2d116f1ed2870566b366b4c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Irreducible/Variante2ac08363385e3f7abd911294baadaa5f28cb64ecd8ba87f38c038dfe141d345.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dbde6a19-ea25-8dbe-b445-a5e75425f0d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_supIrred_decomposition (a : α) :
    ∃ s : Finset α, s.sup id = a ∧ ∀ ⦃b⦄, b ∈ s → SupIrred b := by
  classical
  apply WellFoundedLT.induction a _
  clear a
  rintro a ih
  by_cases ha : SupIrred a
  · exact ⟨{a}, by simp [ha]⟩
  rw [not_supIrred] at ha
  obtain ha | ⟨b, c, rfl, hb, hc⟩ := ha
  · exact ⟨∅, by simp [ha.eq_bot]⟩
  obtain ⟨s, rfl, hs⟩ := ih _ hb
  obtain ⟨t, rfl, ht⟩ := ih _ hc
  exact ⟨s ∪ t, sup_union, forall_mem_union.2 ⟨hs, ht⟩⟩

end SemilatticeSup

section SemilatticeSup

variable [SemilatticeSup α]

@[to_dual (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Irreducible/Variante2ac08363385e3f7abd911294baadaa5f28cb64ecd8ba87f38c038dfe141d345.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Irreducible/Variante2ac08363385e3f7abd911294baadaa5f28cb64ecd8ba87f38c038dfe141d345.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55d9c94b47b64be2ae9e0f31238eb8889bb84cc3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
