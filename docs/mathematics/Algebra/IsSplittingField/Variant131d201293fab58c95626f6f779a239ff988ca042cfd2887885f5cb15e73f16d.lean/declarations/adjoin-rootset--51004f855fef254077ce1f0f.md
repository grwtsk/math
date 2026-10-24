# adjoin_rootSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a5aa4e79-37e5-e216-4a04-651cfe5aff3d",
  "kind": "theorem",
  "lexical_name": "adjoin_rootSet",
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
  "slug": "adjoin-rootset--51004f855fef254077ce1f0f",
  "source": {
    "blob": "15bbfe75070e0631522db95e5665240bbed9b944",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 72,
    "path": "GRWTSK/Algebra/IsSplittingField/Variant131d201293fab58c95626f6f779a239ff988ca042cfd2887885f5cb15e73f16d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51004f855fef254077ce1f0f67f47a0be49d5bcfbf1c19a3971838daddab04bb",
  "verification": {
    "reference": "docs/verification/Algebra/IsSplittingField/Variant131d201293fab58c95626f6f779a239ff988ca042cfd2887885f5cb15e73f16d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5aa4e79-37e5-e216-4a04-651cfe5aff3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adjoin_rootSet (f : K[X]) [IsSplittingField K L f] :
    Algebra.adjoin K (f.rootSet L : Set L) = ⊤ :=
  adjoin_rootSet'
#align polynomial.is_splitting_field.adjoin_root_set Polynomial.IsSplittingField.adjoin_rootSet

section ScalarTower

variable [Algebra F K] [Algebra F L] [IsScalarTower F K L]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IsSplittingField/Variant131d201293fab58c95626f6f779a239ff988ca042cfd2887885f5cb15e73f16d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IsSplittingField/Variant131d201293fab58c95626f6f779a239ff988ca042cfd2887885f5cb15e73f16d.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15bbfe75070e0631522db95e5665240bbed9b944` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
