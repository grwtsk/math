# rothNumberNat_le_ruzsaSzemerediNumberNat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "82722dbad7c77b0f4158ef68b5b9646f197d2ac7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 176,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/9467520be287170e89cad3c5645ed693adc3d7f369d2b77812c978ccd2dc1ad1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5de835e5-766c-131d-2dd3-6919add3d824",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ca221c64-5434-ebf6-5cd3-897a78b0509c",
  "kind": "lemma",
  "lexical_name": "rothNumberNat_le_ruzsaSzemerediNumberNat",
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
  "slug": "rothnumbernat-le-ruzsaszemeredinumbernat--7b1ee8ca02cfbcfe4624e78a",
  "source": {
    "blob": "82722dbad7c77b0f4158ef68b5b9646f197d2ac7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 176,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant9467520be287170e89cad3c5645ed693adc3d7f369d2b77812c978ccd2dc1ad1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b1ee8ca02cfbcfe4624e78ae28ee780026ecf3c7403d6c01cb9de64e1247500",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant9467520be287170e89cad3c5645ed693adc3d7f369d2b77812c978ccd2dc1ad1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca221c64-5434-ebf6-5cd3-897a78b0509c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rothNumberNat_le_ruzsaSzemerediNumberNat (n : ℕ) :
    (2 * n + 1) * rothNumberNat n ≤ ruzsaSzemerediNumberNat (6 * n + 3) := by
  let α := Fin (2 * n + 1)
  have : Nat.Coprime 2 (2 * n + 1) := by simp
  haveI : Fact (IsUnit (2 : Fin (2 * n + 1))) := ⟨by simpa using (ZMod.unitOfCoprime 2 this).isUnit⟩
  calc
    (2 * n + 1) * rothNumberNat n
    _ = Fintype.card α * addRothNumber (Iio (n : α)) := by
      rw [Fin.addRothNumber_eq_rothNumberNat le_rfl, Fintype.card_fin]
    _ ≤ Fintype.card α * addRothNumber (univ : Finset α) := by
      gcongr; exact subset_univ _
    _ ≤ ruzsaSzemerediNumber (Sum α (Sum α α)) := addRothNumber_le_ruzsaSzemerediNumber _
    _ = ruzsaSzemerediNumberNat (6 * n + 3) := by
      simp_rw [← ruzsaSzemerediNumberNat_card, Fintype.card_sum, α, Fintype.card_fin]
      ring_nf

/-- Lower bound on the **Ruzsa-Szemerédi problem** in terms of 3AP-free sets.

If there exists a 3AP-free subset of `[1, ..., (n - 3) / 6]` of size `m`, then there exists a graph
with `n` vertices and `(n / 3 - 2) * m` edges such that each edge belongs to exactly one triangle.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant9467520be287170e89cad3c5645ed693adc3d7f369d2b77812c978ccd2dc1ad1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant9467520be287170e89cad3c5645ed693adc3d7f369d2b77812c978ccd2dc1ad1.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82722dbad7c77b0f4158ef68b5b9646f197d2ac7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
