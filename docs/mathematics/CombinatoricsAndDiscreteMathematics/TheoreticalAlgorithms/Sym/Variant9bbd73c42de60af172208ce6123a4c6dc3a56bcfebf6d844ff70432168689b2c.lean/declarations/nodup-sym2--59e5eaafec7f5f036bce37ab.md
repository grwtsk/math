# Nodup.sym2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:728500bd-7937-f213-251a-e000359ea208",
  "kind": "theorem",
  "lexical_name": "Nodup.sym2",
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
  "slug": "nodup-sym2--59e5eaafec7f5f036bce37ab",
  "source": {
    "blob": "d89879815d5c64a01e53258b5980df628c8da158",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 108,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant9bbd73c42de60af172208ce6123a4c6dc3a56bcfebf6d844ff70432168689b2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59e5eaafec7f5f036bce37abc79bf9f1821d60d09de7c563a3e3e0f2a8a9e96b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant9bbd73c42de60af172208ce6123a4c6dc3a56bcfebf6d844ff70432168689b2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:728500bd-7937-f213-251a-e000359ea208`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Nodup.sym2 {xs : List α} (h : xs.Nodup) : xs.sym2.Nodup := by
  induction xs with
  | nil => simp only [List.sym2, nodup_nil]
  | cons x xs ih =>
    rw [List.sym2]
    specialize ih h.of_cons
    rw [nodup_cons] at h
    refine Nodup.append (Nodup.cons ?notmem (h.2.map ?inj)) ih ?disj
    case disj =>
      intro z hz hz'
      simp only [mem_cons, mem_map] at hz
      obtain ⟨_, (rfl | _), rfl⟩ := hz
        <;> simp [left_mem_of_mk_mem_sym2 hz'] at h
    case notmem =>
      intro h'
      simp only [h.1, mem_map, Sym2.eq_iff, true_and, or_self, exists_eq_right] at h'
    case inj =>
      intro a b
      simp only [Sym2.eq_iff, true_and]
      rintro (rfl | ⟨rfl, rfl⟩) <;> rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant9bbd73c42de60af172208ce6123a4c6dc3a56bcfebf6d844ff70432168689b2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant9bbd73c42de60af172208ce6123a4c6dc3a56bcfebf6d844ff70432168689b2c.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d89879815d5c64a01e53258b5980df628c8da158` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
