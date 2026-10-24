# socsN2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ae1cdcb9356debcf4910fd83b488e1e6f9812ac12438ba47af454b71840f31fb",
  "kind": "instance",
  "lexical_name": "socsN2",
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
  "slug": "socsn2--45633eeb1a7b02d7cdeac601",
  "source": {
    "blob": "0e151aa7aa22c5371a76d48edc6e8171b1b9e621",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 143,
    "path": "GRWTSK/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6361fd8c8f9012b2f8a562994826eec95ad14c5b1b1d660c2e342a83fd0a84ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:45633eeb1a7b02d7cdeac6011424112b2891d5138868e1270ad641ade6d4e5c6",
  "verification": {
    "reference": "docs/verification/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6361fd8c8f9012b2f8a562994826eec95ad14c5b1b1d660c2e342a83fd0a84ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ae1cdcb9356debcf4910fd83b488e1e6f9812ac12438ba47af454b71840f31fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance socsN2 : StrictOrderedCommSemiring (ℕ × ZMod 2) :=
  { Nxzmod2.csrN21, (inferInstance : PartialOrder (ℕ × ZMod 2)),
    (inferInstance : CommSemiring (ℕ × ZMod 2)),
    pullback_nonzero Prod.fst Prod.fst_zero
      Prod.fst_one with
    add_le_add_left := add_le_add_left
    le_of_add_le_add_left := le_of_add_le_add_left
    zero_le_one := zero_le_one
    mul_lt_mul_of_pos_left := mul_lt_mul_of_pos_left
    mul_lt_mul_of_pos_right := mul_lt_mul_of_pos_right }
#align counterexample.Nxzmod_2.socsN2 Counterexample.Nxzmod2.socsN2

end Nxzmod2

namespace ExL

open Nxzmod2 Subtype

/-- Initially, `L` was defined as the subsemiring closure of `(1,0)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6361fd8c8f9012b2f8a562994826eec95ad14c5b1b1d660c2e342a83fd0a84ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6361fd8c8f9012b2f8a562994826eec95ad14c5b1b1d660c2e342a83fd0a84ba.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e151aa7aa22c5371a76d48edc6e8171b1b9e621` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
