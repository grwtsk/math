# le_limsup_iff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f5b39dba-4637-fbb9-b36b-aba36e5a5246",
  "kind": "lemma",
  "lexical_name": "le_limsup_iff'",
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
  "slug": "le-limsup-iff--a0c60e77781c32f1e872c6b0",
  "source": {
    "blob": "c0c5a8bc2d9b27dfadc6b87b00f4c1d767d29a57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 723,
    "line": 713,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LiminfLimsup/Variantd3a4f458546b16d3cb9bdebffdc15bf746f979d361197f94e31ec424cb04c402.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0c60e77781c32f1e872c6b0ae39108db4c62c11318df3e2f3be3cfb6bca61f0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LiminfLimsup/Variantd3a4f458546b16d3cb9bdebffdc15bf746f979d361197f94e31ec424cb04c402.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5b39dba-4637-fbb9-b36b-aba36e5a5246`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 713–723.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma le_limsup_iff' [DenselyOrdered β] {x : β}
    (h₁ : f.IsCoboundedUnder (· ≤ ·) u := by isBoundedDefault)
    (h₂ : f.IsBoundedUnder (· ≤ ·) u := by isBoundedDefault) :
    x ≤ limsup u f ↔ ∀ y < x, ∃ᶠ a in f, y ≤ u a := by
  refine ⟨fun h _ h' ↦ (frequently_lt_of_lt_limsup h₁ (h'.trans_le h)).mono fun _ ↦ le_of_lt, ?_⟩
  rw [← forall_lt_iff_le]
  intro h y y_x
  obtain ⟨z, y_z, z_x⟩ := exists_between y_x
  exact y_z.trans_le (le_limsup_of_frequently_le (h z z_x) h₂)

@[to_dual self (reorder := u v, h₁ h₂)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LiminfLimsup/Variantd3a4f458546b16d3cb9bdebffdc15bf746f979d361197f94e31ec424cb04c402.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LiminfLimsup/Variantd3a4f458546b16d3cb9bdebffdc15bf746f979d361197f94e31ec424cb04c402.lean#L713).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0c5a8bc2d9b27dfadc6b87b00f4c1d767d29a57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
