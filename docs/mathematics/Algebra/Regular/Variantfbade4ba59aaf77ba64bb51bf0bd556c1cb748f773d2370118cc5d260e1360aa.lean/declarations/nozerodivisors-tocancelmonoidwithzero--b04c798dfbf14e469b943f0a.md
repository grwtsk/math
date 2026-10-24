# NoZeroDivisors.toCancelMonoidWithZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8bb8742f4f35b5e2f228648f63011076a4e16287221310e6f187a0cd8afbbe7f",
  "kind": "abbrev",
  "lexical_name": "NoZeroDivisors.toCancelMonoidWithZero",
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
  "slug": "nozerodivisors-tocancelmonoidwithzero--b04c798dfbf14e469b943f0a",
  "source": {
    "blob": "bf997cd28aa71ef8acfd1195b96d00f0b2dcf50c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 54,
    "path": "GRWTSK/Algebra/Regular/Variantfbade4ba59aaf77ba64bb51bf0bd556c1cb748f773d2370118cc5d260e1360aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b04c798dfbf14e469b943f0af9965d3fcec3fbebc1e9727f50bc861ef238d0e1",
  "verification": {
    "reference": "docs/verification/Algebra/Regular/Variantfbade4ba59aaf77ba64bb51bf0bd556c1cb748f773d2370118cc5d260e1360aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8bb8742f4f35b5e2f228648f63011076a4e16287221310e6f187a0cd8afbbe7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev NoZeroDivisors.toCancelMonoidWithZero [Ring α] [NoZeroDivisors α] : CancelMonoidWithZero α :=
  { (by infer_instance : MonoidWithZero α) with
    mul_left_cancel_of_ne_zero := fun ha =>
      @IsRegular.left _ _ _ (isRegular_of_ne_zero' ha) _ _,
    mul_right_cancel_of_ne_zero := fun hb =>
      @IsRegular.right _ _ _ (isRegular_of_ne_zero' hb) _ _ }

/-- A commutative ring with no zero divisors is a `CancelCommMonoidWithZero`.

Note this is not an instance as it forms a typeclass loop. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Regular/Variantfbade4ba59aaf77ba64bb51bf0bd556c1cb748f773d2370118cc5d260e1360aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Regular/Variantfbade4ba59aaf77ba64bb51bf0bd556c1cb748f773d2370118cc5d260e1360aa.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf997cd28aa71ef8acfd1195b96d00f0b2dcf50c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
