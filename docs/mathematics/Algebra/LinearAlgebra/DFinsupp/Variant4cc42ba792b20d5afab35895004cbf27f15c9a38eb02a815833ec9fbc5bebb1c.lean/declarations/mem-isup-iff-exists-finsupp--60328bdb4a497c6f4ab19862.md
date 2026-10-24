# mem_iSup_iff_exists_finsupp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8aafa0e9767e7b18c16d149500f8919627d64644",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 427,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4cc42ba792b20d5afab35895004cbf27f15c9a38eb02a815833ec9fbc5bebb1c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d7135788-2791-a27c-3c44-56a4776e0f28",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fafd1a7b-9b1a-2ba8-8ee0-1511d7767497",
  "kind": "lemma",
  "lexical_name": "mem_iSup_iff_exists_finsupp",
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
  "slug": "mem-isup-iff-exists-finsupp--60328bdb4a497c6f4ab19862",
  "source": {
    "blob": "8aafa0e9767e7b18c16d149500f8919627d64644",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 436,
    "line": 427,
    "path": "GRWTSK/Algebra/LinearAlgebra/DFinsupp/Variant4cc42ba792b20d5afab35895004cbf27f15c9a38eb02a815833ec9fbc5bebb1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60328bdb4a497c6f4ab198627a860af5e4209662099baa44dee088bc9528ae54",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/DFinsupp/Variant4cc42ba792b20d5afab35895004cbf27f15c9a38eb02a815833ec9fbc5bebb1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fafd1a7b-9b1a-2ba8-8ee0-1511d7767497`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 427–436.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_iSup_iff_exists_finsupp (p : ι → Submodule R N) (x : N) :
    x ∈ iSup p ↔ ∃ (f : ι →₀ N), (∀ i, f i ∈ p i) ∧ (f.sum fun _i xi ↦ xi) = x := by
  classical
  rw [mem_iSup_iff_exists_dfinsupp']
  refine ⟨fun ⟨f, hf⟩ ↦ ⟨⟨f.support, fun i ↦ (f i : N), by simp⟩, by simp, hf⟩, ?_⟩
  rintro ⟨f, hf, rfl⟩
  refine ⟨DFinsupp.mk f.support fun i ↦ ⟨f i, hf i⟩, Finset.sum_congr ?_ fun i hi ↦ ?_⟩
  · ext; simp [mk_eq_zero]
  · simp [Finsupp.mem_support_iff.mp hi]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/DFinsupp/Variant4cc42ba792b20d5afab35895004cbf27f15c9a38eb02a815833ec9fbc5bebb1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/DFinsupp/Variant4cc42ba792b20d5afab35895004cbf27f15c9a38eb02a815833ec9fbc5bebb1c.lean#L427).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8aafa0e9767e7b18c16d149500f8919627d64644` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
