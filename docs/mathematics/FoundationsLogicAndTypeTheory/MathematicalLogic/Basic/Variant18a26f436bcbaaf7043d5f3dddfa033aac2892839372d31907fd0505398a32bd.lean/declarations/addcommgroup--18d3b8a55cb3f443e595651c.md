# addCommGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:78f84626e940e0900d03e7620aa34a3253f837e395ea4cf0e71514c080c5d13a",
  "kind": "instance",
  "lexical_name": "addCommGroup",
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
  "slug": "addcommgroup--18d3b8a55cb3f443e595651c",
  "source": {
    "blob": "5f41b91caa4b5ed11a78925f5fe70ba3eff99d13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 337,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant18a26f436bcbaaf7043d5f3dddfa033aac2892839372d31907fd0505398a32bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:18d3b8a55cb3f443e595651cc557d12282ee34f7693bb31cf8a71c6fbb51d2eb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant18a26f436bcbaaf7043d5f3dddfa033aac2892839372d31907fd0505398a32bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:78f84626e940e0900d03e7620aa34a3253f837e395ea4cf0e71514c080c5d13a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 337–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance addCommGroup : AddCommGroup Surreal where
  add := (· + ·)
  add_assoc := by rintro ⟨_⟩ ⟨_⟩ ⟨_⟩; exact Quotient.sound add_assoc_equiv
  zero := 0
  zero_add := by rintro ⟨a⟩; exact Quotient.sound (zero_add_equiv a)
  add_zero := by rintro ⟨a⟩; exact Quotient.sound (add_zero_equiv a)
  neg := Neg.neg
  neg_add_cancel := by rintro ⟨a⟩; exact Quotient.sound (neg_add_cancel_equiv a)
  add_comm := by rintro ⟨_⟩ ⟨_⟩; exact Quotient.sound add_comm_equiv
  nsmul := nsmulRec
  zsmul := zsmulRec

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant18a26f436bcbaaf7043d5f3dddfa033aac2892839372d31907fd0505398a32bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant18a26f436bcbaaf7043d5f3dddfa033aac2892839372d31907fd0505398a32bd.lean#L337).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f41b91caa4b5ed11a78925f5fe70ba3eff99d13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
