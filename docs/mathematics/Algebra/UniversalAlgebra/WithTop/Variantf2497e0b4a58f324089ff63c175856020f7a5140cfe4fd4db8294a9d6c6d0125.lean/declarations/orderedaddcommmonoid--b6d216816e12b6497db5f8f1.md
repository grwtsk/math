# orderedAddCommMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a4cd55013fbc39819264db9a883d30c119f1e01946c0e9d68ed8f3ced29b463f",
  "kind": "instance",
  "lexical_name": "orderedAddCommMonoid",
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
  "slug": "orderedaddcommmonoid--b6d216816e12b6497db5f8f1",
  "source": {
    "blob": "8d6f1189ae7ed2ec1ee196becf46c7f8b7d6c6a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 373,
    "line": 365,
    "path": "GRWTSK/Algebra/UniversalAlgebra/WithTop/Variantf2497e0b4a58f324089ff63c175856020f7a5140cfe4fd4db8294a9d6c6d0125.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b6d216816e12b6497db5f8f16ade8114bbd7a432dad0fbc7c2b88e2f04f2bb0a",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/WithTop/Variantf2497e0b4a58f324089ff63c175856020f7a5140cfe4fd4db8294a9d6c6d0125.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a4cd55013fbc39819264db9a883d30c119f1e01946c0e9d68ed8f3ced29b463f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 365–373.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance orderedAddCommMonoid [OrderedAddCommMonoid α] : OrderedAddCommMonoid (WithTop α) :=
  { WithTop.partialOrder, WithTop.addCommMonoid with
    add_le_add_left := by
      rintro a b h (_ | c); · simp [none_eq_top]
      rcases b with (_ | b); · simp [none_eq_top]
      rcases le_coe_iff.1 h with ⟨a, rfl, _⟩
      simp only [some_eq_coe, ← coe_add, coe_le_coe] at h ⊢
      exact add_le_add_left h c }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/WithTop/Variantf2497e0b4a58f324089ff63c175856020f7a5140cfe4fd4db8294a9d6c6d0125.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/WithTop/Variantf2497e0b4a58f324089ff63c175856020f7a5140cfe4fd4db8294a9d6c6d0125.lean#L365).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d6f1189ae7ed2ec1ee196becf46c7f8b7d6c6a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
