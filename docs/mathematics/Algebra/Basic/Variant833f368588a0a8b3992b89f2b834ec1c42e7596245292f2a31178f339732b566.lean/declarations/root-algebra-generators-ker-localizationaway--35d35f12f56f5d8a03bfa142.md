# _root_.Algebra.Generators.ker_localizationAway

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "66f0b12387b1fe90f3998d0165cca79f67f746b1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 223,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/83/833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:80718702-ecd7-0b8c-f968-2efdb2216c97",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3171b9f4-843e-d5ad-7fa0-2a010d1b9aa8",
  "kind": "lemma",
  "lexical_name": "_root_.Algebra.Generators.ker_localizationAway",
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
  "slug": "root-algebra-generators-ker-localizationaway--35d35f12f56f5d8a03bfa142",
  "source": {
    "blob": "66f0b12387b1fe90f3998d0165cca79f67f746b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 223,
    "path": "GRWTSK/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35d35f12f56f5d8a03bfa1422f6bad6e816b428172ba83baf317a1a2f7cc4835",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3171b9f4-843e-d5ad-7fa0-2a010d1b9aa8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.Algebra.Generators.ker_localizationAway :
    (Generators.localizationAway S r).ker = Ideal.span { C r * X () - 1 } := by
  have : aeval (S₁ := S) (Generators.localizationAway S r).val =
      (mvPolynomialQuotientEquiv S r).toAlgHom.comp
        (Ideal.Quotient.mkₐ R (Ideal.span {C r * X () - 1})) := by
    ext x
    simp only [aeval_X, Generators.localizationAway_val, AlgHom.coe_comp,
      AlgEquiv.coe_toAlgHom, Ideal.Quotient.mkₐ_eq_mk, Function.comp_apply]
    rw [IsLocalization.Away.mvPolynomialQuotientEquiv_apply, aeval_X]
  rw [Generators.ker_eq_ker_aeval_val, this, ← RingHom.ker_coe_toRingHom, AlgHom.comp_toRingHom,
    ← RingHom.comap_ker]
  simp only [AlgEquiv.toAlgHom_toRingHom]
  change Ideal.comap _ (RingHom.ker (mvPolynomialQuotientEquiv S r)) = Ideal.span {C r * X () - 1}
  simp [RingHom.ker_equiv, ← RingHom.ker_eq_comap_bot]

variable (S) in
/-- If `S` is the localization of `R` away from `r`, we can construct a natural
presentation of `S` as `R`-algebra with a single generator `X` and the relation `r * X - 1 = 0`. -/
@[simps relation]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66f0b12387b1fe90f3998d0165cca79f67f746b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
