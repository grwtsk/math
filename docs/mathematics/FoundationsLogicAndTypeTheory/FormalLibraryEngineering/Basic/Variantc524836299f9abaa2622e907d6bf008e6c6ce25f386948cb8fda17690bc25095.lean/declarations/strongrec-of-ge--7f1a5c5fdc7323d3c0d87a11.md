# strongRec_of_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "df7c0eacc14bcc69682ca735eb8181e117ba1f37",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 39,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c5/c524836299f9abaa2622e907d6bf008e6c6ce25f386948cb8fda17690bc25095.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4cc69c75-d6de-b3fc-257e-f578a0a2c30d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e2d81670-6fff-e4b4-d768-01088a80a476",
  "kind": "lemma",
  "lexical_name": "strongRec_of_ge",
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
  "slug": "strongrec-of-ge--7f1a5c5fdc7323d3c0d87a11",
  "source": {
    "blob": "df7c0eacc14bcc69682ca735eb8181e117ba1f37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 39,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc524836299f9abaa2622e907d6bf008e6c6ce25f386948cb8fda17690bc25095.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f1a5c5fdc7323d3c0d87a1174cef759206ae517e2d0d123b4b008b7904f760e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc524836299f9abaa2622e907d6bf008e6c6ce25f386948cb8fda17690bc25095.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2d81670-6fff-e4b4-d768-01088a80a476`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma strongRec_of_ge :
    ∀ hn : m ≤ n, m.strongRec lt ge n = ge n hn fun k _ ↦ m.strongRec lt ge k := by
  refine m.strongRec (fun n hnm hmn ↦ (Int.not_lt.mpr hmn hnm).elim) (fun n _ ih hn ↦ ?_) n
  rw [Int.strongRec, dite_eq_right (Int.not_lt.mpr hn)]
  congr; revert ih
  refine n.inductionOn' m (fun _ ↦ ?_) (fun k hmk ih' ih ↦ ?_) (fun k hkm ih' _ ↦ ?_) <;> ext l hl
  · rw [inductionOn'_self, strongRec_of_lt hl]
  · rw [inductionOn'_add_one hmk]; split_ifs with hlm
    · rw [strongRec_of_lt hlm]
    · rw [ih' fun l hl ↦ ih l (Int.lt_trans hl k.lt_succ), ih _ hl]
  · rw [inductionOn'_sub_one hkm, ih']
    exact fun l hlk hml ↦ (Int.not_lt.mpr hkm <| Int.lt_of_le_of_lt hml hlk).elim

end strongRec

/-! ### nat abs -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc524836299f9abaa2622e907d6bf008e6c6ce25f386948cb8fda17690bc25095.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc524836299f9abaa2622e907d6bf008e6c6ce25f386948cb8fda17690bc25095.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df7c0eacc14bcc69682ca735eb8181e117ba1f37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
