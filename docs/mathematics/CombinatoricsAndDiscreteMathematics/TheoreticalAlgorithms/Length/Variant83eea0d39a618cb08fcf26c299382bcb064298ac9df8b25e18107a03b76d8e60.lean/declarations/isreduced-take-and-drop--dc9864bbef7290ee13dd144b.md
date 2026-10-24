# isReduced_take_and_drop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3a8c79a8634113899359674f1028b71702cef5b7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 224,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/83/83eea0d39a618cb08fcf26c299382bcb064298ac9df8b25e18107a03b76d8e60.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dcf54eb7-09f0-fcce-e640-a16d1dd31b8f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9b1184c6-0433-a3d2-8b66-89245c5b8c00",
  "kind": "theorem",
  "lexical_name": "isReduced_take_and_drop",
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
  "slug": "isreduced-take-and-drop--dc9864bbef7290ee13dd144b",
  "source": {
    "blob": "3a8c79a8634113899359674f1028b71702cef5b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 224,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant83eea0d39a618cb08fcf26c299382bcb064298ac9df8b25e18107a03b76d8e60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc9864bbef7290ee13dd144b1760cd6f4c6a30feb563aba1cf6cd59985eda4dc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant83eea0d39a618cb08fcf26c299382bcb064298ac9df8b25e18107a03b76d8e60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b1184c6-0433-a3d2-8b66-89245c5b8c00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem isReduced_take_and_drop {ω : List B} (hω : cs.IsReduced ω) (j : ℕ) :
    cs.IsReduced (ω.take j) ∧ cs.IsReduced (ω.drop j) := by
  have h₁ : ℓ (π (ω.take j)) ≤ (ω.take j).length    := cs.length_wordProd_le (ω.take j)
  have h₂ : ℓ (π (ω.drop j)) ≤ (ω.drop j).length    := cs.length_wordProd_le (ω.drop j)
  have h₃ := calc
    (ω.take j).length + (ω.drop j).length
    _ = ω.length                             := by rw [← List.length_append, ω.take_append_drop j]
    _ = ℓ (π ω)                              := hω.symm
    _ = ℓ (π (ω.take j) * π (ω.drop j))      := by rw [← cs.wordProd_append, ω.take_append_drop j]
    _ ≤ ℓ (π (ω.take j)) + ℓ (π (ω.drop j))  := cs.length_mul_le _ _
  unfold IsReduced
  omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant83eea0d39a618cb08fcf26c299382bcb064298ac9df8b25e18107a03b76d8e60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant83eea0d39a618cb08fcf26c299382bcb064298ac9df8b25e18107a03b76d8e60.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a8c79a8634113899359674f1028b71702cef5b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
