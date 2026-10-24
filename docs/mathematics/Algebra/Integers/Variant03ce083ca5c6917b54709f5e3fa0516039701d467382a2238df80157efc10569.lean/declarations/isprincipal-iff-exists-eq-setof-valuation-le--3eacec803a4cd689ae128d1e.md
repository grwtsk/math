# isPrincipal_iff_exists_eq_setOf_valuation_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ec8fbedbe1d92e0d1d16a8d1c0bf027a52129059",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 201,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/03ce083ca5c6917b54709f5e3fa0516039701d467382a2238df80157efc10569.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f4d6c9a3-428c-13d4-754d-e14c19123ad3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1309c04a-c363-34f2-7693-0b61005f1ba2",
  "kind": "lemma",
  "lexical_name": "isPrincipal_iff_exists_eq_setOf_valuation_le",
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
  "slug": "isprincipal-iff-exists-eq-setof-valuation-le--3eacec803a4cd689ae128d1e",
  "source": {
    "blob": "ec8fbedbe1d92e0d1d16a8d1c0bf027a52129059",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 201,
    "path": "GRWTSK/Algebra/Integers/Variant03ce083ca5c6917b54709f5e3fa0516039701d467382a2238df80157efc10569.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3eacec803a4cd689ae128d1eedbfac7f654866b78859951cca01dbeeb3c3fb92",
  "verification": {
    "reference": "docs/verification/Algebra/Integers/Variant03ce083ca5c6917b54709f5e3fa0516039701d467382a2238df80157efc10569.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1309c04a-c363-34f2-7693-0b61005f1ba2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isPrincipal_iff_exists_eq_setOf_valuation_le (hv : Integers v O) {I : Ideal O} :
    I.IsPrincipal ↔ ∃ x, (I : Set O) = {y | v (algebraMap O F y) ≤ v (algebraMap O F x)} := by
  rw [isPrincipal_iff_exists_isGreatest hv]
  constructor <;> rintro ⟨x, hx⟩
  · obtain ⟨a, ha, rfl⟩ : ∃ a ∈ I, (v ∘ algebraMap O F) a = x := by simpa using hx.left
    refine ⟨a, ?_⟩
    ext b
    simp only [SetLike.mem_coe, mem_setOf_eq]
    constructor <;> intro h
    · exact hx.right (Set.mem_image_of_mem _ h)
    · rw [le_iff_dvd hv] at h
      exact Ideal.mem_of_dvd I h ha
  · refine ⟨v (algebraMap O F x), Set.mem_image_of_mem _ ?_, ?_⟩
    · simp [hx]
    · simp [hx, mem_upperBounds]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Integers/Variant03ce083ca5c6917b54709f5e3fa0516039701d467382a2238df80157efc10569.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Integers/Variant03ce083ca5c6917b54709f5e3fa0516039701d467382a2238df80157efc10569.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec8fbedbe1d92e0d1d16a8d1c0bf027a52129059` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
