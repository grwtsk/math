# exists_awayMap_bijective_of_residueField_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eb061760-7aad-3a83-e561-f8341594e3bc",
  "kind": "lemma",
  "lexical_name": "exists_awayMap_bijective_of_residueField_surjective",
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
  "slug": "exists-awaymap-bijective-of-residuefield-surjective--0c9d2791ec84dc58dba03225",
  "source": {
    "blob": "600f2e01ed634b7712fe5b0051d6dcf9488a2d94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 301,
    "path": "GRWTSK/Algebra/LocalRing/Variant737043ae176e481ba9e7e97731bda7f057578b91ac8af34e468bc6d352763ebc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c9d2791ec84dc58dba032258481aad7ece715748ab53bf46bcdde9afa248310",
  "verification": {
    "reference": "docs/verification/Algebra/LocalRing/Variant737043ae176e481ba9e7e97731bda7f057578b91ac8af34e468bc6d352763ebc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb061760-7aad-3a83-e561-f8341594e3bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 301–313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_awayMap_bijective_of_residueField_surjective
    [Module.Finite R S] [FaithfulSMul R S] [q.LiesOver p] [Algebra.IsUnramifiedAt R q]
    [Algebra (Localization.AtPrime p) (Localization.AtPrime q)]
    [IsScalarTower R (Localization.AtPrime p) (Localization.AtPrime q)]
    (H : Function.Surjective (algebraMap p.ResidueField q.ResidueField)) :
    ∃ r ∉ p, ∀ r', r ∣ r' → Function.Bijective (awayMap (algebraMap R S) r') :=
  exists_awayMap_bijective_of_localRingHom_bijective hq (by simpa using! Submodule.fg_bot)
    ⟨localRingHom_injective_of_primesOver_eq_singleton hq,
      localRingHom_surjective_of_primesOver_eq_singleton hq H⟩

end Localization

end UniquePrimeOver
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LocalRing/Variant737043ae176e481ba9e7e97731bda7f057578b91ac8af34e468bc6d352763ebc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LocalRing/Variant737043ae176e481ba9e7e97731bda7f057578b91ac8af34e468bc6d352763ebc.lean#L301).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `600f2e01ed634b7712fe5b0051d6dcf9488a2d94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
