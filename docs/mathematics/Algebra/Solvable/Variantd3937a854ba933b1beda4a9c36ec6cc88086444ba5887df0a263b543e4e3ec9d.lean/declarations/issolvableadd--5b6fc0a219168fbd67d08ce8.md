# isSolvableAdd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f77db76f70d0f383277b9556c2a8316591c8a48a45baa9e20dcdf05ce9bd9cd6",
  "kind": "instance",
  "lexical_name": "isSolvableAdd",
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
  "slug": "issolvableadd--5b6fc0a219168fbd67d08ce8",
  "source": {
    "blob": "8ce3a8ff8456d3f8943c425146efb0cd94da3afd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 218,
    "path": "GRWTSK/Algebra/Solvable/Variantd3937a854ba933b1beda4a9c36ec6cc88086444ba5887df0a263b543e4e3ec9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5b6fc0a219168fbd67d08ce87204b1ddbbbb90c6fecd310fb52ee1ae7815a20a",
  "verification": {
    "reference": "docs/verification/Algebra/Solvable/Variantd3937a854ba933b1beda4a9c36ec6cc88086444ba5887df0a263b543e4e3ec9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f77db76f70d0f383277b9556c2a8316591c8a48a45baa9e20dcdf05ce9bd9cd6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isSolvableAdd {I J : LieIdeal R L} [hI : IsSolvable R I] [hJ : IsSolvable R J] :
    IsSolvable R (↥(I + J)) := by
  obtain ⟨k, hk⟩ := id hI; obtain ⟨l, hl⟩ := id hJ
  exact ⟨⟨k + l, LieIdeal.derivedSeries_add_eq_bot hk hl⟩⟩
#align lie_algebra.is_solvable_add LieAlgebra.isSolvableAdd

end LieAlgebra

variable {R L}

namespace Function

open LieAlgebra

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Solvable/Variantd3937a854ba933b1beda4a9c36ec6cc88086444ba5887df0a263b543e4e3ec9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Solvable/Variantd3937a854ba933b1beda4a9c36ec6cc88086444ba5887df0a263b543e4e3ec9d.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ce3a8ff8456d3f8943c425146efb0cd94da3afd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
