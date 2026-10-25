# mul_not_equiv_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6479390906c2ad14867161724a02dfa9cbe16b9f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 539,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/73/7366f650cf3f23693c7286ff3682df72605b002f8111ad5da86508af525b20d3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ac04ce10-6716-bb68-6a7e-e6196a8db659",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5599079f-5a8d-de21-3b05-6eecc52b6aed",
  "kind": "theorem",
  "lexical_name": "mul_not_equiv_zero",
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
  "slug": "mul-not-equiv-zero--6007bbcaa351d8c9488f7988",
  "source": {
    "blob": "6479390906c2ad14867161724a02dfa9cbe16b9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 557,
    "line": 539,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CauSeq/Variant7366f650cf3f23693c7286ff3682df72605b002f8111ad5da86508af525b20d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6007bbcaa351d8c9488f79882274ab47d9126150fb194276121e0af3f807853c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/CauSeq/Variant7366f650cf3f23693c7286ff3682df72605b002f8111ad5da86508af525b20d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5599079f-5a8d-de21-3b05-6eecc52b6aed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 539–557.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_not_equiv_zero {f g : CauSeq _ abv} (hf : ¬f ≈ 0) (hg : ¬g ≈ 0) : ¬f * g ≈ 0 :=
  fun (this : LimZero (f * g - 0)) => by
  have hlz : LimZero (f * g) := by simpa
  have hf' : ¬LimZero f := by simpa using show ¬LimZero (f - 0) from hf
  have hg' : ¬LimZero g := by simpa using show ¬LimZero (g - 0) from hg
  rcases abv_pos_of_not_limZero hf' with ⟨a1, ha1, N1, hN1⟩
  rcases abv_pos_of_not_limZero hg' with ⟨a2, ha2, N2, hN2⟩
  have : 0 < a1 * a2 := mul_pos ha1 ha2
  cases' hlz _ this with N hN
  let i := max N (max N1 N2)
  have hN' := hN i (le_max_left _ _)
  have hN1' := hN1 i (le_trans (le_max_left _ _) (le_max_right _ _))
  have hN1' := hN2 i (le_trans (le_max_right _ _) (le_max_right _ _))
  apply not_le_of_lt hN'
  change _ ≤ abv (_ * _)
  rw [abv_mul abv]
  gcongr
#align cau_seq.mul_not_equiv_zero CauSeq.mul_not_equiv_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/CauSeq/Variant7366f650cf3f23693c7286ff3682df72605b002f8111ad5da86508af525b20d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CauSeq/Variant7366f650cf3f23693c7286ff3682df72605b002f8111ad5da86508af525b20d3.lean#L539).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6479390906c2ad14867161724a02dfa9cbe16b9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
