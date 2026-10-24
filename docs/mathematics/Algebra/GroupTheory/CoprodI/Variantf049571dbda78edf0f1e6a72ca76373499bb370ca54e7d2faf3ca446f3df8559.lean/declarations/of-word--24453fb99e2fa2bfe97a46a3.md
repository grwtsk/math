# of_word

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d92d089-4f3b-31be-3f2b-0908b5e87f3d",
  "kind": "theorem",
  "lexical_name": "of_word",
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
  "slug": "of-word--24453fb99e2fa2bfe97a46a3",
  "source": {
    "blob": "faae9fbe0da89dd14edad39462e48e55bb4b8171",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 711,
    "line": 690,
    "path": "GRWTSK/Algebra/GroupTheory/CoprodI/Variantf049571dbda78edf0f1e6a72ca76373499bb370ca54e7d2faf3ca446f3df8559.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24453fb99e2fa2bfe97a46a352306c22af19b1abab16a1d8279da5206158530d",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/CoprodI/Variantf049571dbda78edf0f1e6a72ca76373499bb370ca54e7d2faf3ca446f3df8559.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d92d089-4f3b-31be-3f2b-0908b5e87f3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 690–711.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_word (w : Word M) (h : w ≠ empty) : ∃ (i j : _) (w' : NeWord M i j), w'.toWord = w := by
  suffices ∃ (i j : _) (w' : NeWord M i j), w'.toWord.toList = w.toList by
    rcases this with ⟨i, j, w, h⟩
    refine ⟨i, j, w, ?_⟩
    ext
    rw [h]
  obtain ⟨l, hnot1, hchain⟩ := w
  induction l with
  | nil => contradiction
  | cons x l hi =>
    rw [List.forall_mem_cons] at hnot1
    rcases l with - | ⟨y, l⟩
    · refine ⟨x.1, x.1, singleton x.2 hnot1.1, ?_⟩
      simp [toWord]
    · rw [List.isChain_cons_cons] at hchain
      specialize hi hnot1.2 hchain.2 (by rintro ⟨rfl⟩)
      obtain ⟨i, j, w', hw' : w'.toList = y::l⟩ := hi
      obtain rfl : y = ⟨i, w'.head⟩ := by simpa [hw'] using w'.toList_head?
      refine ⟨x.1, j, append (singleton x.2 hnot1.1) hchain.1 w', ?_⟩
      simpa [toWord] using hw'

/-- A non-empty reduced word determines an element of the free product, given by multiplication. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/CoprodI/Variantf049571dbda78edf0f1e6a72ca76373499bb370ca54e7d2faf3ca446f3df8559.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/CoprodI/Variantf049571dbda78edf0f1e6a72ca76373499bb370ca54e7d2faf3ca446f3df8559.lean#L690).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `faae9fbe0da89dd14edad39462e48e55bb4b8171` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
