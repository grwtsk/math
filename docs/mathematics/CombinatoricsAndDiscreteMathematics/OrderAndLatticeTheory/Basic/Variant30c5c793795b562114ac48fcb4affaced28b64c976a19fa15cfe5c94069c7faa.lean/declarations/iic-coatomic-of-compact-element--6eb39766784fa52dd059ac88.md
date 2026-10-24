# Iic_coatomic_of_compact_element

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c0912d7d3f561d0ce9aacece9428f1e2b332d1f3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 543,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/30/30c5c793795b562114ac48fcb4affaced28b64c976a19fa15cfe5c94069c7faa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3e5b416c-0582-96eb-b5ed-111880d20289",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f9d32d4b-0821-dc8a-d78a-b928ad0f3555",
  "kind": "theorem",
  "lexical_name": "Iic_coatomic_of_compact_element",
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
  "slug": "iic-coatomic-of-compact-element--6eb39766784fa52dd059ac88",
  "source": {
    "blob": "c0912d7d3f561d0ce9aacece9428f1e2b332d1f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 562,
    "line": 543,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant30c5c793795b562114ac48fcb4affaced28b64c976a19fa15cfe5c94069c7faa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6eb39766784fa52dd059ac88fd6216470e5faff09ade01a4ff0e6c4a0a6f26f6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant30c5c793795b562114ac48fcb4affaced28b64c976a19fa15cfe5c94069c7faa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9d32d4b-0821-dc8a-d78a-b928ad0f3555`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 543–562.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Iic_coatomic_of_compact_element {k : α} (h : IsCompactElement k) :
    IsCoatomic (Set.Iic k) := by
  constructor
  rintro ⟨b, hbk⟩
  obtain rfl | H := eq_or_ne b k
  · left; ext; simp only [Set.Iic.coe_top]
  right
  have ⟨a, ba, h⟩ := zorn_le_nonempty₀ (Set.Iio k) ?_ b (lt_of_le_of_ne hbk H)
  · refine ⟨⟨a, le_of_lt h.prop⟩, ⟨ne_of_lt h.prop, fun c hck => by_contradiction fun c₀ => ?_⟩, ba⟩
    cases h.eq_of_le (y := c.1) (lt_of_le_of_ne c.2 fun con ↦ c₀ (Subtype.ext con)) hck.le
    exact lt_irrefl _ hck
  · intro S SC cC I _
    by_cases hS : S.Nonempty
    · refine ⟨sSup S, IsCompactElement.directed_sSup_lt_of_lt h hS cC.directedOn SC, ?_⟩
      intro; apply le_sSup
    exact
      ⟨b, lt_of_le_of_ne hbk H, by
        simp only [Set.not_nonempty_iff_eq_empty.mp hS, Set.mem_empty_iff_false, forall_const,
          forall_prop_of_false, not_false_iff]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant30c5c793795b562114ac48fcb4affaced28b64c976a19fa15cfe5c94069c7faa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant30c5c793795b562114ac48fcb4affaced28b64c976a19fa15cfe5c94069c7faa.lean#L543).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0912d7d3f561d0ce9aacece9428f1e2b332d1f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
