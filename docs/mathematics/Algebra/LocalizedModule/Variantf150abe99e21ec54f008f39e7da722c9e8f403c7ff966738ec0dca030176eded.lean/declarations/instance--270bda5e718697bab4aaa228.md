# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd4fb246cbadd828226acfcaa095e8e9d180b395646923a69dd6375682fcf929",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--270bda5e718697bab4aaa228",
  "source": {
    "blob": "81e924b6b9f68408e318b24af5f4c48c2a395a45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 448,
    "line": 431,
    "path": "GRWTSK/Algebra/LocalizedModule/Variantf150abe99e21ec54f008f39e7da722c9e8f403c7ff966738ec0dca030176eded.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:270bda5e718697bab4aaa228e86922ab0427a9fbd02534a78ce77d21849296a0",
  "verification": {
    "reference": "docs/verification/Algebra/LocalizedModule/Variantf150abe99e21ec54f008f39e7da722c9e8f403c7ff966738ec0dca030176eded.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd4fb246cbadd828226acfcaa095e8e9d180b395646923a69dd6375682fcf929`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 431–448.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance {A : Type*} [Semiring A] [Algebra R A] :
    Algebra (Localization S) (LocalizedModule S A) :=
  Algebra.ofModule
    (by
      intro r x₁ x₂
      obtain ⟨y, s, rfl : IsLocalization.mk' _ y s = r⟩ := IsLocalization.mk'_surjective S r
      obtain ⟨⟨a₁, s₁⟩, rfl : mk a₁ s₁ = x₁⟩ := Quotient.exists_rep x₁
      obtain ⟨⟨a₂, s₂⟩, rfl : mk a₂ s₂ = x₂⟩ := Quotient.exists_rep x₂
      rw [mk_mul_mk, ← Localization.mk_eq_mk', mk_smul_mk, mk_smul_mk, mk_mul_mk, mul_assoc,
        smul_mul_assoc])
    (by
      intro r x₁ x₂
      obtain ⟨y, s, rfl : IsLocalization.mk' _ y s = r⟩ := IsLocalization.mk'_surjective S r
      obtain ⟨⟨a₁, s₁⟩, rfl : mk a₁ s₁ = x₁⟩ := Quotient.exists_rep x₁
      obtain ⟨⟨a₂, s₂⟩, rfl : mk a₂ s₂ = x₂⟩ := Quotient.exists_rep x₂
      rw [mk_mul_mk, ← Localization.mk_eq_mk', mk_smul_mk, mk_smul_mk, mk_mul_mk, mul_left_comm,
        mul_smul_comm])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LocalizedModule/Variantf150abe99e21ec54f008f39e7da722c9e8f403c7ff966738ec0dca030176eded.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LocalizedModule/Variantf150abe99e21ec54f008f39e7da722c9e8f403c7ff966738ec0dca030176eded.lean#L431).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81e924b6b9f68408e318b24af5f4c48c2a395a45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
