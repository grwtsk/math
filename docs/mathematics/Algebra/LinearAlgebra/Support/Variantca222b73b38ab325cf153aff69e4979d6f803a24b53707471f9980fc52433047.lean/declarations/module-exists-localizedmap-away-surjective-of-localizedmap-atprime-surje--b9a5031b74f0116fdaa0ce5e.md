# Module.exists_localizedMap_away_surjective_of_localizedMap_atPrime_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ae29451a-4015-0f88-48bf-02c36ba17d2a",
  "kind": "lemma",
  "lexical_name": "Module.exists_localizedMap_away_surjective_of_localizedMap_atPrime_surjective",
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
  "slug": "module-exists-localizedmap-away-surjective-of-localizedmap-atprime-surje--b9a5031b74f0116fdaa0ce5e",
  "source": {
    "blob": "bd342f966bb6ed409a6ca538a13a7883fb33050a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 251,
    "path": "GRWTSK/Algebra/LinearAlgebra/Support/Variantca222b73b38ab325cf153aff69e4979d6f803a24b53707471f9980fc52433047.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9a5031b74f0116fdaa0ce5e4efaa3a89d661159584275217257bf0f7ca8bcb8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Support/Variantca222b73b38ab325cf153aff69e4979d6f803a24b53707471f9980fc52433047.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae29451a-4015-0f88-48bf-02c36ba17d2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Module.exists_localizedMap_away_surjective_of_localizedMap_atPrime_surjective (p : Ideal R)
    [p.IsPrime] (φ : N →ₗ[R] M) (hφ : Function.Surjective (LocalizedModule.map p.primeCompl φ)) :
    ∃ a ∉ p, Function.Surjective (LocalizedModule.map (Submonoid.powers a) φ) := by
  simp_rw [φ.localizedMap_surjective_iff_subsingleton_localized_coker] at hφ ⊢
  exact LocalizedModule.exists_subsingleton_away p

/-- `Supp(M/IM) = Supp(M) ∩ Z(I)`. -/
@[stacks 00L3 "(1)"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Support/Variantca222b73b38ab325cf153aff69e4979d6f803a24b53707471f9980fc52433047.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Support/Variantca222b73b38ab325cf153aff69e4979d6f803a24b53707471f9980fc52433047.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd342f966bb6ed409a6ca538a13a7883fb33050a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
