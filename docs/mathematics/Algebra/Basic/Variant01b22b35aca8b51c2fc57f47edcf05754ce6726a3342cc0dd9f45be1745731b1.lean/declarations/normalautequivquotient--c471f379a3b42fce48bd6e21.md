# normalAutEquivQuotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cf9656bcffb0670d72387a66d33f2b3fe8ca5d0cf1005f826998aea3f0501337",
  "kind": "def",
  "lexical_name": "normalAutEquivQuotient",
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
  "slug": "normalautequivquotient--c471f379a3b42fce48bd6e21",
  "source": {
    "blob": "e5a3abbd8f68b79aec9433460e8bc5bb0f90f8fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 385,
    "line": 378,
    "path": "GRWTSK/Algebra/Basic/Variant01b22b35aca8b51c2fc57f47edcf05754ce6726a3342cc0dd9f45be1745731b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c471f379a3b42fce48bd6e21e8a784328b3a9aea4b7f2f73ec9bead8bfd898c9",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant01b22b35aca8b51c2fc57f47edcf05754ce6726a3342cc0dd9f45be1745731b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cf9656bcffb0670d72387a66d33f2b3fe8ca5d0cf1005f826998aea3f0501337`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 378–385.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def normalAutEquivQuotient [FiniteDimensional K L] [IsGalois K L]
    (H : Subgroup (L ≃ₐ[K] L)) [Subgroup.Normal H] :
    (L ≃ₐ[K] L) ⧸ H ≃* ((fixedField H) ≃ₐ[K] (fixedField H)) :=
  (QuotientGroup.quotientMulEquivOfEq ((fixingSubgroup_fixedField H).symm.trans
  (fixedField H).restrictNormalHom_ker.symm)).trans <|
  QuotientGroup.quotientKerEquivOfSurjective (restrictNormalHom (fixedField H)) <|
  restrictNormalHom_surjective L

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant01b22b35aca8b51c2fc57f47edcf05754ce6726a3342cc0dd9f45be1745731b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant01b22b35aca8b51c2fc57f47edcf05754ce6726a3342cc0dd9f45be1745731b1.lean#L378).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5a3abbd8f68b79aec9433460e8bc5bb0f90f8fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
