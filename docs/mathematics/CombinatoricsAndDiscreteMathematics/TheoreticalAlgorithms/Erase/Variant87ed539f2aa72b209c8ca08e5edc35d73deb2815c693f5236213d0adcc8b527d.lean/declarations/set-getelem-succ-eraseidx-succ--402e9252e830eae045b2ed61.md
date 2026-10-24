# set_getElem_succ_eraseIdx_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a06bcbce-f085-5e90-93a5-3a37afdd21ca",
  "kind": "theorem",
  "lexical_name": "set_getElem_succ_eraseIdx_succ",
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
  "slug": "set-getelem-succ-eraseidx-succ--402e9252e830eae045b2ed61",
  "source": {
    "blob": "e4d2441eb5600cb48cf05e1734e8aafd652d1c11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 175,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant87ed539f2aa72b209c8ca08e5edc35d73deb2815c693f5236213d0adcc8b527d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:402e9252e830eae045b2ed6164b0576db249a4446954122f5401db230c7a8c6d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant87ed539f2aa72b209c8ca08e5edc35d73deb2815c693f5236213d0adcc8b527d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a06bcbce-f085-5e90-93a5-3a37afdd21ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem set_getElem_succ_eraseIdx_succ
    {l : List α} {i : Nat} (h : i + 1 < l.length) :
    (l.eraseIdx (i + 1)).set i l[i + 1] = l.eraseIdx i := by
  apply ext_getElem
  · simp only [length_set, length_eraseIdx, h, ↓reduceIte]
    rw [if_pos]
    omega
  · intro n h₁ h₂
    simp [getElem_set, getElem_eraseIdx]
    split
    · split
      · omega
      · simp_all
    · split
      · split
        · rfl
        · omega
      · have t : ¬ n < i := by omega
        simp [t]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant87ed539f2aa72b209c8ca08e5edc35d73deb2815c693f5236213d0adcc8b527d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant87ed539f2aa72b209c8ca08e5edc35d73deb2815c693f5236213d0adcc8b527d.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4d2441eb5600cb48cf05e1734e8aafd652d1c11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
