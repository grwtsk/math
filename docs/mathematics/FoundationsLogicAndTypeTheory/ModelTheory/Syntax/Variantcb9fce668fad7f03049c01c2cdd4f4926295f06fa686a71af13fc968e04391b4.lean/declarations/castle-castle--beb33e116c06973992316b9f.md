# castLE_castLE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c685e535-a615-46e4-8858-1f3266eddc44",
  "kind": "theorem",
  "lexical_name": "castLE_castLE",
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
  "slug": "castle-castle--beb33e116c06973992316b9f",
  "source": {
    "blob": "3e5c29613d9fe3c4c1ec28a8c11432152cf673e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 478,
    "line": 465,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Syntax/Variantcb9fce668fad7f03049c01c2cdd4f4926295f06fa686a71af13fc968e04391b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:beb33e116c06973992316b9f8305bb6c285d7c140ad465e784f7caba4a5fb06a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Syntax/Variantcb9fce668fad7f03049c01c2cdd4f4926295f06fa686a71af13fc968e04391b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c685e535-a615-46e4-8858-1f3266eddc44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 465–478.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem castLE_castLE {k m n} (km : k ≤ m) (mn : m ≤ n) (φ : L.BoundedFormula α k) :
    (φ.castLE km).castLE mn = φ.castLE (km.trans mn) := by
  revert m n
  induction' φ with _ _ _ _ _ _ _ _ _ _ _ ih1 ih2 _ _ ih3 <;> intro m n km mn
  · rfl
  · simp
  · simp only [castLE, eq_self_iff_true, heq_iff_eq, true_and_iff]
    rw [← Function.comp.assoc, Term.relabel_comp_relabel]
    simp
  · simp [ih1, ih2]
  · simp only [castLE, ih3]
#align first_order.language.bounded_formula.cast_le_cast_le FirstOrder.Language.BoundedFormula.castLE_castLE

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Syntax/Variantcb9fce668fad7f03049c01c2cdd4f4926295f06fa686a71af13fc968e04391b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Syntax/Variantcb9fce668fad7f03049c01c2cdd4f4926295f06fa686a71af13fc968e04391b4.lean#L465).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e5c29613d9fe3c4c1ec28a8c11432152cf673e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
