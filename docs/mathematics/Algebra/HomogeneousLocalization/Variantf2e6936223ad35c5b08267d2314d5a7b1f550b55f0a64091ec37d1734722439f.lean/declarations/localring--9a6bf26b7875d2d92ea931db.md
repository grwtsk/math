# localRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:35ce3f1f96726a27eee84417d5104bc6e850ac15fe20b1e0d54657a86eb1203a",
  "kind": "instance",
  "lexical_name": "localRing",
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
  "slug": "localring--9a6bf26b7875d2d92ea931db",
  "source": {
    "blob": "08330c9a3773dbf36555fa72a6c31ebee455915e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 609,
    "line": 581,
    "path": "GRWTSK/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9a6bf26b7875d2d92ea931db8482bb77e8d72970d64e0f39edc3f6780929f5ee",
  "verification": {
    "reference": "docs/verification/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:35ce3f1f96726a27eee84417d5104bc6e850ac15fe20b1e0d54657a86eb1203a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 581–609.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance localRing : LocalRing (HomogeneousLocalization.AtPrime 𝒜 𝔭) :=
  LocalRing.of_isUnit_or_isUnit_one_sub_self fun a => by
    simp only [← isUnit_iff_isUnit_val, sub_val, one_val]
    induction' a using Quotient.inductionOn' with a
    simp only [HomogeneousLocalization.val_mk'']
    by_cases mem1 : a.num.1 ∈ 𝔭
    · right
      have : a.den.1 - a.num.1 ∈ 𝔭.primeCompl := fun h =>
        a.den_mem (sub_add_cancel a.den.val a.num.val ▸ Ideal.add_mem _ h mem1 : a.den.1 ∈ 𝔭)
      apply isUnit_of_mul_eq_one _ (Localization.mk a.den.1 ⟨a.den.1 - a.num.1, this⟩)
      simp only [sub_mul, Localization.mk_mul, one_mul, Localization.sub_mk, Submonoid.coe_mul]
      convert Localization.mk_self (M := A) _
      simp only [Submonoid.coe_mul]
      ring
    · left
      change _ ∈ 𝔭.primeCompl at mem1
      apply isUnit_of_mul_eq_one _ (Localization.mk a.den.1 ⟨a.num.1, mem1⟩)
      rw [Localization.mk_mul]
      convert Localization.mk_self (M := A) _
      rw [mul_comm]
      rfl

end

section

variable (𝒜) (f : A)

/-- Localizing away from powers of `f` homogeneously. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean#L581).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08330c9a3773dbf36555fa72a6c31ebee455915e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
