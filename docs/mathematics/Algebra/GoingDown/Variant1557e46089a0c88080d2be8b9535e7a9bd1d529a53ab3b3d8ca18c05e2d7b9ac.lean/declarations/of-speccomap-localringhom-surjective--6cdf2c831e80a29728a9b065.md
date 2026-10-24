# of_specComap_localRingHom_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "300141414c9b80cc209083d2b27ec52c8db6c83d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 103,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/15/1557e46089a0c88080d2be8b9535e7a9bd1d529a53ab3b3d8ca18c05e2d7b9ac.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:791a13db-4dcc-8b25-1a41-73164d9b29ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:62f9f663-4ab2-6b94-2567-92515e0f1ea3",
  "kind": "lemma",
  "lexical_name": "of_specComap_localRingHom_surjective",
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
  "slug": "of-speccomap-localringhom-surjective--6cdf2c831e80a29728a9b065",
  "source": {
    "blob": "300141414c9b80cc209083d2b27ec52c8db6c83d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 103,
    "path": "GRWTSK/Algebra/GoingDown/Variant1557e46089a0c88080d2be8b9535e7a9bd1d529a53ab3b3d8ca18c05e2d7b9ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6cdf2c831e80a29728a9b065ef7e3de538b614951a63936023c8c27931317427",
  "verification": {
    "reference": "docs/verification/Algebra/GoingDown/Variant1557e46089a0c88080d2be8b9535e7a9bd1d529a53ab3b3d8ca18c05e2d7b9ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62f9f663-4ab2-6b94-2567-92515e0f1ea3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma of_specComap_localRingHom_surjective
    (H : ∀ (P : Ideal S) [P.IsPrime], Function.Surjective
      (Localization.localRingHom (P.under R) P (algebraMap R S) rfl).specComap) :
    Algebra.HasGoingDown R S where
  exists_ideal_le_liesOver_of_lt {p} _ Q _ hlt := by
    let pl : Ideal (Localization.AtPrime <| Q.under R) := p.map (algebraMap R _)
    have : pl.IsPrime :=
      Ideal.isPrime_map_of_isLocalizationAtPrime (Q.under R) hlt.le
    obtain ⟨⟨Pl, _⟩, hl⟩ := H Q ⟨pl, inferInstance⟩
    refine ⟨Pl.under S, ?_, Ideal.IsPrime.under S Pl, ⟨?_⟩⟩
    · exact (IsLocalization.AtPrime.orderIsoOfPrime _ Q ⟨Pl, inferInstance⟩).2.2
    · replace hl : Pl.under _ = pl := by simpa using hl
      rw [Ideal.under_under, ← Ideal.under_under (B := (Localization.AtPrime <| Q.under R)) Pl, hl,
        Ideal.under_map_of_isLocalizationAtPrime (Q.under R) hlt.le]

/-- Flat algebras satisfy the going down property. -/
@[stacks 00HS]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GoingDown/Variant1557e46089a0c88080d2be8b9535e7a9bd1d529a53ab3b3d8ca18c05e2d7b9ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GoingDown/Variant1557e46089a0c88080d2be8b9535e7a9bd1d529a53ab3b3d8ca18c05e2d7b9ac.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `300141414c9b80cc209083d2b27ec52c8db6c83d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
