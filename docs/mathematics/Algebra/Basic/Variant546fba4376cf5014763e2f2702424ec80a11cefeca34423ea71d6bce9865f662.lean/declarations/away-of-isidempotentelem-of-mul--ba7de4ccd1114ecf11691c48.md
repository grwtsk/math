# away_of_isIdempotentElem_of_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8bed43f5f6144ba0ab91e399cabe5050d7f4fb05",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 398,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/54/546fba4376cf5014763e2f2702424ec80a11cefeca34423ea71d6bce9865f662.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c521472d-37d7-3ce1-e849-97b0fde5ea7e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:15f01221-88a4-b02f-4c1f-5fa393255a72",
  "kind": "lemma",
  "lexical_name": "away_of_isIdempotentElem_of_mul",
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
  "slug": "away-of-isidempotentelem-of-mul--ba7de4ccd1114ecf11691c48",
  "source": {
    "blob": "8bed43f5f6144ba0ab91e399cabe5050d7f4fb05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 410,
    "line": 398,
    "path": "GRWTSK/Algebra/Basic/Variant546fba4376cf5014763e2f2702424ec80a11cefeca34423ea71d6bce9865f662.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba7de4ccd1114ecf11691c48ad52ecf13e77cf485826f0dd70d7f12c9268746f",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant546fba4376cf5014763e2f2702424ec80a11cefeca34423ea71d6bce9865f662.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15f01221-88a4-b02f-4c1f-5fa393255a72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 398–410.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma away_of_isIdempotentElem_of_mul
    {e : R} (he : IsIdempotentElem e)
    (H : ∀ x y, algebraMap R S x = algebraMap R S y ↔ e * x = e * y)
    (H' : Function.Surjective (algebraMap R S)) :
    IsLocalization.Away e S where
  map_units r := by
    obtain ⟨r, n, rfl⟩ := r
    simp [show algebraMap R S e = 1 by rw [← (algebraMap R S).map_one, H, mul_one, he]]
  surj z := by
    obtain ⟨z, rfl⟩ := H' z
    exact ⟨⟨z, 1⟩, by simp⟩
  exists_of_eq {x y} h := ⟨⟨e, Submonoid.mem_powers e⟩, (H x y).mp h⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant546fba4376cf5014763e2f2702424ec80a11cefeca34423ea71d6bce9865f662.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant546fba4376cf5014763e2f2702424ec80a11cefeca34423ea71d6bce9865f662.lean#L398).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bed43f5f6144ba0ab91e399cabe5050d7f4fb05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
