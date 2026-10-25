# triplewise_iff_getElem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4ec7fd52-bcf8-d8de-174e-dac6e7aaf832",
  "kind": "lemma",
  "lexical_name": "triplewise_iff_getElem",
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
  "slug": "triplewise-iff-getelem--45c9433cf8f034e50b1fcf01",
  "source": {
    "blob": "95d7f2d45eabc6051a045f6bebae20b0f1302c13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 80,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Triplewise/Variant3a3e51458d7aed4f35eb32dcef00ba2231f782495f1e7e8248abcf1c1b5f6d02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45c9433cf8f034e50b1fcf018ad43724b08d73f27a606fe8081209d2dbea0d6c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Triplewise/Variant3a3e51458d7aed4f35eb32dcef00ba2231f782495f1e7e8248abcf1c1b5f6d02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ec7fd52-bcf8-d8de-174e-dac6e7aaf832`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma triplewise_iff_getElem : l.Triplewise p ↔ ∀ i j k (hij : i < j) (hjk : j < k)
    (hk : k < l.length), p l[i] l[j] l[k] := by
  induction l with
  | nil => simp
  | cons head tail ih =>
    simp only [triplewise_cons, length_cons, pairwise_iff_getElem, ih]
    refine ⟨fun ⟨hh, ht⟩ i j k hij hjk hk ↦ ?_,
            fun h ↦ ⟨fun i j hi hj hij ↦ ?_, fun i j k hij hjk hk ↦ ?_⟩⟩
    · rcases i with - | i <;> rcases j with - | j
      · simp at hij
      · rcases k with - | k
        · omega
        · simpa using hh j k (by omega) (by omega) (by omega)
      · simp at hij
      · rcases k with - | k
        · omega
        · simpa using ht i j k (by omega) (by omega) (by omega)
    · simpa using h 0 (i + 1) (j + 1) (by omega) (by omega) (by omega)
    · simpa using h (i + 1) (j + 1) (k + 1) (by omega) (by omega) (by omega)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Triplewise/Variant3a3e51458d7aed4f35eb32dcef00ba2231f782495f1e7e8248abcf1c1b5f6d02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Triplewise/Variant3a3e51458d7aed4f35eb32dcef00ba2231f782495f1e7e8248abcf1c1b5f6d02.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95d7f2d45eabc6051a045f6bebae20b0f1302c13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
