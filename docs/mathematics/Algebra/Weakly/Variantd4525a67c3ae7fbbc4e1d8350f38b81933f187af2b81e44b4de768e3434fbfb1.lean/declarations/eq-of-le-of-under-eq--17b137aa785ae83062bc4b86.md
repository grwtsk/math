# eq_of_le_of_under_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ec2607928279b60b2eacaf26b7ce5b7ca07739cd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 146,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d4525a67c3ae7fbbc4e1d8350f38b81933f187af2b81e44b4de768e3434fbfb1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ca1bb6ab-a7ea-ffca-dc7b-614d339c7e92",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:15267ce6-85c0-4910-ed17-a5a47e8bda23",
  "kind": "lemma",
  "lexical_name": "eq_of_le_of_under_eq",
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
  "slug": "eq-of-le-of-under-eq--17b137aa785ae83062bc4b86",
  "source": {
    "blob": "ec2607928279b60b2eacaf26b7ce5b7ca07739cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 146,
    "path": "GRWTSK/Algebra/Weakly/Variantd4525a67c3ae7fbbc4e1d8350f38b81933f187af2b81e44b4de768e3434fbfb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17b137aa785ae83062bc4b865549e23c5462981488a277039e1e9a7ab19dc665",
  "verification": {
    "reference": "docs/verification/Algebra/Weakly/Variantd4525a67c3ae7fbbc4e1d8350f38b81933f187af2b81e44b4de768e3434fbfb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15267ce6-85c0-4910-ed17-a5a47e8bda23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eq_of_le_of_under_eq {P Q : Ideal S} [P.IsPrime] [Q.IsPrime]
    (h₁ : P ≤ Q) (h₂ : P.under R = Q.under R) [WeaklyQuasiFiniteAt R Q] :
    P = Q := by
  have : (P.map (Ideal.Quotient.mk ((Q.under R).map (algebraMap R S)))).IsPrime :=
    Ideal.map_isPrime_of_surjective Ideal.Quotient.mk_surjective
    (by simpa [← h₂] using Ideal.map_comap_le)
  have := QuasiFiniteAt.eq_of_le_of_under_eq (R := R)
    (P := P.map (Ideal.Quotient.mk ((Q.under R).map (algebraMap R S))))
    (Q := Q.map (Ideal.Quotient.mk ((Q.under R).map (algebraMap R S))))
    (Ideal.map_mono h₁) (by
      rw [← Ideal.under_under (B := S), ← Ideal.under_under (A := R) (B := S) (C := S ⧸ _)]
      dsimp [Ideal.under] at h₂ ⊢
      simp [Ideal.map_comap_le]
      simp [Ideal.map_comap_le, ← h₂])
  replace this := (Ideal.comap_map_of_surjective _ Ideal.Quotient.mk_surjective _).symm.trans
    congr($(this).comap _)
  simp [Ideal.comap_map_of_surjective _ Ideal.Quotient.mk_surjective,
    ← RingHom.ker_eq_comap_bot, Ideal.map_comap_le] at this
  simpa [Ideal.map_comap_le, ← h₂] using this

open _root_.TensorProduct in
/-- Use `Algebra.QuasiFiniteAt.baseChange` instead for `Algebra.QuasiFiniteAt R p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Weakly/Variantd4525a67c3ae7fbbc4e1d8350f38b81933f187af2b81e44b4de768e3434fbfb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Weakly/Variantd4525a67c3ae7fbbc4e1d8350f38b81933f187af2b81e44b4de768e3434fbfb1.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec2607928279b60b2eacaf26b7ce5b7ca07739cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
