# QuasiFiniteAt.of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d7824fbc-d650-ad00-401e-e4d07129b752",
  "kind": "lemma",
  "lexical_name": "QuasiFiniteAt.of_le",
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
  "slug": "quasifiniteat-of-le--41a9e94a85325e8a14c42f2e",
  "source": {
    "blob": "9ed1801f1080a895155a326863bbcc599715c411",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 431,
    "line": 419,
    "path": "GRWTSK/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41a9e94a85325e8a14c42f2ead1d51c6f2fdb8dad587b5437deaf18681c3b9fe",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7824fbc-d650-ad00-401e-e4d07129b752`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 419–431.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma QuasiFiniteAt.of_le {P Q : Ideal S} [P.IsPrime] [Q.IsPrime]
    (h₁ : P ≤ Q) [QuasiFiniteAt R Q] :
    QuasiFiniteAt R P := by
  let f : Localization.AtPrime Q →ₐ[R] Localization.AtPrime P :=
    IsLocalization.liftAlgHom (M := Q.primeCompl) (f := IsScalarTower.toAlgHom _ _ _) <| by
      simp only [IsScalarTower.coe_toAlgHom', Subtype.forall, Ideal.mem_primeCompl_iff]
      exact fun a ha ↦ IsLocalization.map_units (M := P.primeCompl) _ ⟨a, fun h ↦ ha (h₁ h)⟩
  refine .of_forall_exists_mul_mem_range f fun x ↦ ?_
  obtain ⟨x, ⟨s, hs⟩, rfl⟩ := IsLocalization.exists_mk'_eq P.primeCompl x
  exact ⟨algebraMap _ _ s, by simpa [f] using IsLocalization.map_units _ ⟨s, hs⟩,
    algebraMap _ _ x, by simp [f]⟩

omit [Algebra S T] in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean#L419).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ed1801f1080a895155a326863bbcc599715c411` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
