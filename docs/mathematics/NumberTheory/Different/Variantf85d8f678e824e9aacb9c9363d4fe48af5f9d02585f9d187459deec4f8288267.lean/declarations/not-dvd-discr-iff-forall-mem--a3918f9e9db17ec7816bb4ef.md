# not_dvd_discr_iff_forall_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:580fd486-99cc-195a-2ea8-9e2af0390813",
  "kind": "lemma",
  "lexical_name": "not_dvd_discr_iff_forall_mem",
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
  "slug": "not-dvd-discr-iff-forall-mem--a3918f9e9db17ec7816bb4ef",
  "source": {
    "blob": "c704435797008f41895577f65f1cf04d114bd5d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 210,
    "path": "GRWTSK/NumberTheory/Different/Variantf85d8f678e824e9aacb9c9363d4fe48af5f9d02585f9d187459deec4f8288267.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3918f9e9db17ec7816bb4ef24a4a0c1ea5a54c241f8683d976c140320d45b73",
  "verification": {
    "reference": "docs/verification/NumberTheory/Different/Variantf85d8f678e824e9aacb9c9363d4fe48af5f9d02585f9d187459deec4f8288267.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:580fd486-99cc-195a-2ea8-9e2af0390813`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma not_dvd_discr_iff_forall_mem [IsIntegralClosure 𝒪 ℤ K] {p : ℤ} (hp : Prime p) :
    ¬ p ∣ discr K ↔ ∀ (P : Ideal 𝒪) (_ : P.IsPrime), ↑p ∈ P →
      Algebra.IsUnramifiedAt ℤ P := by
  have := (IsIntegralClosure.algebraMap_injective 𝒪 ℤ K).isDomain
  have := IsIntegralClosure.isDedekindDomain ℤ ℚ K 𝒪
  have := CharZero.of_module (R := 𝒪) K
  rw [NumberField.not_dvd_discr_iff_forall_liesOver K 𝒪 hp]
  exact ⟨fun H P hP h ↦ H P (hP.isMaximal (by aesop))
    ((Ideal.liesOver_span_iff hP.ne_top hp).mpr h),
    fun H P _ h ↦ H P _ (h.1.le (Ideal.mem_span_singleton_self _))⟩

end NumberField
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Different/Variantf85d8f678e824e9aacb9c9363d4fe48af5f9d02585f9d187459deec4f8288267.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Different/Variantf85d8f678e824e9aacb9c9363d4fe48af5f9d02585f9d187459deec4f8288267.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c704435797008f41895577f65f1cf04d114bd5d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
