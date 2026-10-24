# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.SameCycle.Variant726594b615b4e2f8acae535a8bc03af55d6995b71d698e21623d06ae05f82e27.Set.Countable.exists_cycleOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d4fe04d-587f-e73b-52e9-9ae4ac8eb230",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.SameCycle.Variant726594b615b4e2f8acae535a8bc03af55d6995b71d698e21623d06ae05f82e27.Set.Countable.exists_cycleOn",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-samecycle-variant726594b--6948bd9d8e3e1a307836eda5",
  "source": {
    "blob": "2b37542d32b13f4895cc697a6c13254f7038e3ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1910,
    "line": 1890,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant2777fa0b2ffdf82bd25cc2206fa40150120b7be296bcc88f479326ac5bfbf6f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6948bd9d8e3e1a307836eda56233d91395c0216e7d133020d4d8e28457c60bca",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant2777fa0b2ffdf82bd25cc2206fa40150120b7be296bcc88f479326ac5bfbf6f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d4fe04d-587f-e73b-52e9-9ae4ac8eb230`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1890–1910.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.SameCycle.Variant726594b615b4e2f8acae535a8bc03af55d6995b71d698e21623d06ae05f82e27.Set.Countable.exists_cycleOn (hs : s.Countable) :
    ∃ f : Perm α, f.IsCycleOn s ∧ { x | f x ≠ x } ⊆ s := by
  classical
    obtain hs' | hs' := s.finite_or_infinite
    · refine'
        ⟨hs'.toFinset.toList.formPerm, _, fun x hx => by
          simpa using List.mem_of_formPerm_apply_ne _ _ hx⟩
      convert hs'.toFinset.nodup_toList.isCycleOn_formPerm
      simp
    haveI := hs.to_subtype
    haveI := hs'.to_subtype
    obtain ⟨f⟩ : Nonempty (ℤ ≃ s) := inferInstance
    refine'
      ⟨(Equiv.addRight 1).extendDomain f, _, fun x hx =>
        of_not_not fun h => hx <| Perm.extendDomain_apply_not_subtype _ _ h⟩
    convert Int.addRight_one_isCycle.isCycleOn.extendDomain f
    rw [Set.image_comp, Equiv.image_eq_preimage]
    ext
    simp
#align set.countable.exists_cycle_on Set.Countable.exists_cycleOn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant2777fa0b2ffdf82bd25cc2206fa40150120b7be296bcc88f479326ac5bfbf6f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant2777fa0b2ffdf82bd25cc2206fa40150120b7be296bcc88f479326ac5bfbf6f1.lean#L1890).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b37542d32b13f4895cc697a6c13254f7038e3ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
