# isLocalHom_singleOneRingHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ae8b146b42f3072b96ed4f410d172a8f1a5a2fd14edf92b50d896a4b3d72a29",
  "kind": "instance",
  "lexical_name": "isLocalHom_singleOneRingHom",
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
  "slug": "islocalhom-singleoneringhom--78cf37016743727ea6cef26f",
  "source": {
    "blob": "2e737d979213502792bd6d26fb6def1cf6ffe393",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 754,
    "line": 743,
    "path": "GRWTSK/Algebra/Defs/Variantd7abe0e313e33f19e64c82ff70d5cc2bcbbd9d61080c91de3b74d0dde24e0c44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:78cf37016743727ea6cef26f9358c019eacaac97c0c5c646840069490cca1ce8",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variantd7abe0e313e33f19e64c82ff70d5cc2bcbbd9d61080c91de3b74d0dde24e0c44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ae8b146b42f3072b96ed4f410d172a8f1a5a2fd14edf92b50d896a4b3d72a29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 743–754.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isLocalHom_singleOneRingHom : IsLocalHom (singleOneRingHom (R := R) (M := M)) where
  map_nonunit := by
    simp_rw [isUnit_iff_exists]
    rintro a ⟨x, hax, hxa⟩
    refine ⟨x.coeff 1, ?_, ?_⟩
    · simpa [coeff_single_one_mul] using congr(($hax).coeff 1)
    · simpa [coeff_mul_single_one] using congr(($hxa).coeff 1)

variable (M) in
/-- The trivial monoid algebra is the base ring. -/
@[to_additive (dont_translate := R) (attr := simps! apply)
/-- The trivial additive monoid algebra is the base ring. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variantd7abe0e313e33f19e64c82ff70d5cc2bcbbd9d61080c91de3b74d0dde24e0c44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variantd7abe0e313e33f19e64c82ff70d5cc2bcbbd9d61080c91de3b74d0dde24e0c44.lean#L743).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e737d979213502792bd6d26fb6def1cf6ffe393` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
