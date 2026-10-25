# ltByCases

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c5444f60615b76fecb335ed2216ebb039156fb5c09699e55ca15a499b36315a1",
  "kind": "def",
  "lexical_name": "ltByCases",
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
  "slug": "ltbycases--54a16f543bd8295a5f6034fa",
  "source": {
    "blob": "b91f950c66540eb297c16e7f32c757d9685fb838",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 203,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:54a16f543bd8295a5f6034fa1c53090fd76e513b354bdf48dbf6f427a99854c0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c5444f60615b76fecb335ed2216ebb039156fb5c09699e55ca15a499b36315a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def ltByCases {a b : ℕ} {C : Sort u} (h₁ : a < b → C) (h₂ : a = b → C) (h₃ : b < a → C) :
    C :=
  Nat.ltGeByCases h₁ fun h₁ => Nat.ltGeByCases h₃ fun h => h₂ (Nat.le_antisymm h h₁)
#align nat.lt_by_cases Nat.ltByCases

#align nat.lt_trichotomy Nat.lt_trichotomy

#align nat.eq_or_lt_of_not_lt Nat.eq_or_lt_of_not_lt

#align nat.lt_succ_of_lt Nat.lt_succ_of_lt

#align nat.one_pos Nat.one_pos

#align nat.mul_le_mul_of_nonneg_left Nat.mul_le_mul_of_nonneg_left

#align nat.mul_le_mul_of_nonneg_right Nat.mul_le_mul_of_nonneg_right

#align nat.mul_lt_mul Nat.mul_lt_mulₓ

#align nat.mul_lt_mul' Nat.mul_lt_mul'ₓ

-- TODO: there are four variations, depending on which variables we assume to be nonneg
#align nat.mul_le_mul Nat.mul_le_mul

/-! bit0/bit1 properties -/
section bit
set_option linter.deprecated false

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b91f950c66540eb297c16e7f32c757d9685fb838` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
