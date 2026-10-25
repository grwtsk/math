# age.countable_quotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:76960db2-ccf2-4e56-ddb4-461628792fc2",
  "kind": "theorem",
  "lexical_name": "age.countable_quotient",
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
  "slug": "age-countable-quotient--a061b6a74ff6b09c2b94ec46",
  "source": {
    "blob": "fc8056b51ff7ff258459ee27596df5dcc0338ab2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 190,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Fraisse/Variantca33e28876753735bb11744f4e3b38f6683ab6397e432448b0a180ace686d86e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a061b6a74ff6b09c2b94ec4660707b5e4ac64fbec40f683ffd65d411fd100842",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Fraisse/Variantca33e28876753735bb11744f4e3b38f6683ab6397e432448b0a180ace686d86e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76960db2-ccf2-4e56-ddb4-461628792fc2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem age.countable_quotient [h : Countable M] : (Quotient.mk' '' L.age M).Countable := by
  classical
  refine (congr_arg _ (Set.ext <| Quotient.forall.2 fun N => ?_)).mp
    (countable_range fun s : Finset M => ⟦⟨closure L (s : Set M), inferInstance⟩⟧)
  constructor
  · rintro ⟨s, hs⟩
    use Bundled.of (closure L (s : Set M))
    exact ⟨⟨(fg_iff_structure_fg _).1 (fg_closure s.finite_toSet), ⟨Substructure.subtype _⟩⟩, hs⟩
  · simp only [mem_range, Quotient.eq]
    rintro ⟨P, ⟨⟨s, hs⟩, ⟨PM⟩⟩, hP2⟩
    refine ⟨s.image PM, Setoid.trans (b := P) ?_ <| Quotient.exact hP2⟩
    rw [← Embedding.coe_toHom, Finset.coe_image, closure_image PM.toHom, hs, ← Hom.range_eq_map]
    exact ⟨PM.equivRange.symm⟩

-- This is not a simp-lemma because it does not apply to itself.
/-- The age of a direct limit of structures is the union of the ages of the structures. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Fraisse/Variantca33e28876753735bb11744f4e3b38f6683ab6397e432448b0a180ace686d86e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Fraisse/Variantca33e28876753735bb11744f4e3b38f6683ab6397e432448b0a180ace686d86e.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc8056b51ff7ff258459ee27596df5dcc0338ab2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
