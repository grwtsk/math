# isOrderedCancelMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:736cf74c1159d72afea82ce8b002f4c4cd36abb5cd274feba8227d2f92031fa3",
  "kind": "instance",
  "lexical_name": "isOrderedCancelMonoid",
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
  "slug": "isorderedcancelmonoid--e1b001fa4f286aa3a0a69850",
  "source": {
    "blob": "b9bf21ef8e856b21033a9338693fea2830bb1e7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 51,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Pi/Variantd51c693b7180c36f54349b7f81561dd785d4ee08238c831e57dba894d6219adc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e1b001fa4f286aa3a0a6985044df39b234f5c6ac7ad0d9f158abecc0211477fa",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Pi/Variantd51c693b7180c36f54349b7f81561dd785d4ee08238c831e57dba894d6219adc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:736cf74c1159d72afea82ce8b002f4c4cd36abb5cd274feba8227d2f92031fa3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isOrderedCancelMonoid [∀ i, CommMonoid <| f i] [∀ i, PartialOrder <| f i]
    [∀ i, IsOrderedCancelMonoid <| f i] :
    IsOrderedCancelMonoid (∀ i : I, f i) where
  le_of_mul_le_mul_left _ _ _ h i := le_of_mul_le_mul_left' (h i)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Pi/Variantd51c693b7180c36f54349b7f81561dd785d4ee08238c831e57dba894d6219adc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Pi/Variantd51c693b7180c36f54349b7f81561dd785d4ee08238c831e57dba894d6219adc.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9bf21ef8e856b21033a9338693fea2830bb1e7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
