# gradedMonoid_eq_of_cast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1af2cc80-8884-18ca-c14c-e77a6cccf266",
  "kind": "theorem",
  "lexical_name": "gradedMonoid_eq_of_cast",
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
  "slug": "gradedmonoid-eq-of-cast--a67a0a2a4cccb9a732874087",
  "source": {
    "blob": "1ab26fd50d7f60d5eed884295f4c918114919dd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 418,
    "line": 412,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantd8b7f34cf8a05d40d0006923394300e19e8582c5f222a4b74a6125dc44cdfc62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a67a0a2a4cccb9a7328740871c7b8b14b52addb8829e2d05ee86d5ca46fcf01f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantd8b7f34cf8a05d40d0006923394300e19e8582c5f222a4b74a6125dc44cdfc62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1af2cc80-8884-18ca-c14c-e77a6cccf266`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 412–418.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gradedMonoid_eq_of_cast {Γ : Subgroup SL(2, ℤ)} {a b : GradedMonoid (ModularForm Γ)}
    (h : a.fst = b.fst) (h2 : mcast h a.snd = b.snd) : a = b := by
  obtain ⟨i, a⟩ := a
  obtain ⟨j, b⟩ := b
  cases h
  exact congr_arg _ h2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantd8b7f34cf8a05d40d0006923394300e19e8582c5f222a4b74a6125dc44cdfc62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantd8b7f34cf8a05d40d0006923394300e19e8582c5f222a4b74a6125dc44cdfc62.lean#L412).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ab26fd50d7f60d5eed884295f4c918114919dd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
