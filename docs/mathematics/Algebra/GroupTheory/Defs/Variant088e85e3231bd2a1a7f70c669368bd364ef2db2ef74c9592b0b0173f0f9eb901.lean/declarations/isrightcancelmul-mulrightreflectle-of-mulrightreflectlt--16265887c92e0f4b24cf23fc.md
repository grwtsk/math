# IsRightCancelMul.mulRightReflectLE_of_mulRightReflectLT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d83cc130ba9dab911b09633c3ef2a01fc4e34c674fc95143ef7f45c9cc0d78f9",
  "kind": "instance",
  "lexical_name": "IsRightCancelMul.mulRightReflectLE_of_mulRightReflectLT",
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
  "slug": "isrightcancelmul-mulrightreflectle-of-mulrightreflectlt--16265887c92e0f4b24cf23fc",
  "source": {
    "blob": "ad5e93e3df9831a5abd664c4f9773e2abe7888b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 590,
    "line": 584,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant088e85e3231bd2a1a7f70c669368bd364ef2db2ef74c9592b0b0173f0f9eb901.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:16265887c92e0f4b24cf23fcd4e3f867a4291c1a716d35eaff69d37e0e2ffc3e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant088e85e3231bd2a1a7f70c669368bd364ef2db2ef74c9592b0b0173f0f9eb901.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d83cc130ba9dab911b09633c3ef2a01fc4e34c674fc95143ef7f45c9cc0d78f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 584–590.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance IsRightCancelMul.mulRightReflectLE_of_mulRightReflectLT
    [Mul N] [IsRightCancelMul N] [PartialOrder N] [MulRightReflectLT N] :
    MulRightReflectLE N where
  le_of_mul_le_mul_right' := contravariant_le_iff_contravariant_lt_and_eq N N _ |>.mpr
    ⟨‹MulRightReflectLT N›.elim, fun _ ↦ mul_right_cancel⟩ _

end Variants
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant088e85e3231bd2a1a7f70c669368bd364ef2db2ef74c9592b0b0173f0f9eb901.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant088e85e3231bd2a1a7f70c669368bd364ef2db2ef74c9592b0b0173f0f9eb901.lean#L584).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad5e93e3df9831a5abd664c4f9773e2abe7888b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
