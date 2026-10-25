# Indep.exists_insert_of_encard_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:339f5225-14ca-ee71-dfd8-f9135e7f8241",
  "kind": "lemma",
  "lexical_name": "Indep.exists_insert_of_encard_lt",
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
  "slug": "indep-exists-insert-of-encard-lt--98f9afbabea6cd3e064e0134",
  "source": {
    "blob": "4eb4041aa11a9725bed602b64d2b72a7a242660c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 499,
    "line": 491,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ENat/Variant1f25af4c44ba9196949670ea6c588386193c46a0bd7ae929e96d2cfd148ff81c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98f9afbabea6cd3e064e01340351af435d0cf4e72b507e7f1ee89966c61f62b9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ENat/Variant1f25af4c44ba9196949670ea6c588386193c46a0bd7ae929e96d2cfd148ff81c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:339f5225-14ca-ee71-dfd8-f9135e7f8241`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 491–499.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Indep.exists_insert_of_encard_lt {I J : Set α} (hI : M.Indep I) (hJ : M.Indep J)
    (hcard : I.encard < J.encard) : ∃ e ∈ J \ I, M.Indep (insert e I) := by
  have hIfin : I.Finite := encard_lt_top_iff.1 <| hcard.trans_le le_top
  rw [← hI.eRk_eq_encard, ← hJ.eRk_eq_encard] at hcard
  obtain ⟨e, he, hIe⟩ := exists_eRk_insert_eq_add_one_of_lt hcard
  refine ⟨e, he, ?_⟩
  rw [indep_iff_eRk_eq_encard_of_finite (hIfin.insert e), hIe, encard_insert_of_notMem he.2,
    hI.eRk_eq_encard]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ENat/Variant1f25af4c44ba9196949670ea6c588386193c46a0bd7ae929e96d2cfd148ff81c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ENat/Variant1f25af4c44ba9196949670ea6c588386193c46a0bd7ae929e96d2cfd148ff81c.lean#L491).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4eb4041aa11a9725bed602b64d2b72a7a242660c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
