# HasLines.card_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "34ff37de56738c85768cf7d7eddb4f4d83e78c7b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 227,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1b/1b8cab695d363cfe58a56c821883a6fe97c6dd7ba726ad6e080c2fc0b6fad585.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9af1d557-bbe7-3105-db6e-02807a550e9f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6bdbc914-1aee-f9ab-4be0-e59799488c16",
  "kind": "theorem",
  "lexical_name": "HasLines.card_le",
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
  "slug": "haslines-card-le--e67ed281baa4108cfcdfe4fd",
  "source": {
    "blob": "34ff37de56738c85768cf7d7eddb4f4d83e78c7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 227,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Configuration/Variant1b8cab695d363cfe58a56c821883a6fe97c6dd7ba726ad6e080c2fc0b6fad585.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e67ed281baa4108cfcdfe4fde522e30179e16ec361a14215aeb0e4dbdfee8f30",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Configuration/Variant1b8cab695d363cfe58a56c821883a6fe97c6dd7ba726ad6e080c2fc0b6fad585.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6bdbc914-1aee-f9ab-4be0-e59799488c16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasLines.card_le [HasLines P L] [Fintype P] [Fintype L] :
    Fintype.card P ≤ Fintype.card L := by
  classical
  by_contra hc₂
  obtain ⟨f, hf₁, hf₂⟩ := Nondegenerate.exists_injective_of_card_le (le_of_not_le hc₂)
  have :=
    calc
      ∑ p, lineCount L p = ∑ l, pointCount P l := sum_lineCount_eq_sum_pointCount P L
      _ ≤ ∑ l, lineCount L (f l) :=
        (Finset.sum_le_sum fun l _ => HasLines.pointCount_le_lineCount (hf₂ l))
      _ = ∑ p in Finset.univ.image f, lineCount L p :=
        (Finset.sum_bij (fun l _ => f l) (fun l hl => Finset.mem_image_of_mem f hl)
          (fun l _ => rfl) (fun l₁ l₂ hl₁ hl₂ hl₃ => hf₁ hl₃) fun p => by
          rw [Finset.mem_image]
          exact fun ⟨a, ⟨h, h'⟩⟩ => ⟨a, ⟨h, h'.symm⟩⟩)
      _ < ∑ p, lineCount L p := by
        obtain ⟨p, hp⟩ := not_forall.mp (mt (Fintype.card_le_of_surjective f) hc₂)
        refine'
          Finset.sum_lt_sum_of_subset (Finset.univ.image f).subset_univ (Finset.mem_univ p) _ _
            fun p _ _ => zero_le (lineCount L p)
        · simpa only [Finset.mem_image, exists_prop, Finset.mem_univ, true_and_iff]
        · rw [lineCount, Nat.card_eq_fintype_card, Fintype.card_pos_iff]
          obtain ⟨l, _⟩ := @exists_line P L _ _ p
          exact
            let this := not_exists.mp hp l
            ⟨⟨mkLine this, (mkLine_ax this).2⟩⟩
  exact lt_irrefl _ this
#align configuration.has_lines.card_le Configuration.HasLines.card_le

/-- If a nondegenerate configuration has a unique point on any two lines, then `|L| ≤ |P|`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Configuration/Variant1b8cab695d363cfe58a56c821883a6fe97c6dd7ba726ad6e080c2fc0b6fad585.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Configuration/Variant1b8cab695d363cfe58a56c821883a6fe97c6dd7ba726ad6e080c2fc0b6fad585.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34ff37de56738c85768cf7d7eddb4f4d83e78c7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
