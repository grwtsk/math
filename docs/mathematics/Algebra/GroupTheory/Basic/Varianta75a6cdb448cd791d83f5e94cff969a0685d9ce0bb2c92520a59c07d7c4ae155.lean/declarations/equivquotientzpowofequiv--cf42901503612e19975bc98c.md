# equivQuotientZPowOfEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a37c36ab4d6cf47b25b3600537e3e1ac3f7432dba32ec5dde8a8576d714d66bb",
  "kind": "def",
  "lexical_name": "equivQuotientZPowOfEquiv",
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
  "slug": "equivquotientzpowofequiv--cf42901503612e19975bc98c",
  "source": {
    "blob": "bf3ed094216776c59b4119e8380017f3b48e5066",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 229,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Varianta75a6cdb448cd791d83f5e94cff969a0685d9ce0bb2c92520a59c07d7c4ae155.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf42901503612e19975bc98cb5b1bf5bd957fd9099670e3613bb2a415155523c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Varianta75a6cdb448cd791d83f5e94cff969a0685d9ce0bb2c92520a59c07d7c4ae155.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a37c36ab4d6cf47b25b3600537e3e1ac3f7432dba32ec5dde8a8576d714d66bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivQuotientZPowOfEquiv :
    A ⧸ (zpowGroupHom n : A →* A).range ≃* B ⧸ (zpowGroupHom n : B →* B).range :=
  MonoidHom.toMulEquiv _ _
    (homQuotientZPowOfHom_comp_of_rightInverse (e.symm : B →* A) (e : A →* B) n e.left_inv)
    (homQuotientZPowOfHom_comp_of_rightInverse (e : A →* B) (e.symm : B →* A) n e.right_inv)
    -- Porting note: had to explicitly coerce the `MulEquiv`s to `MonoidHom`s

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Varianta75a6cdb448cd791d83f5e94cff969a0685d9ce0bb2c92520a59c07d7c4ae155.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Varianta75a6cdb448cd791d83f5e94cff969a0685d9ce0bb2c92520a59c07d7c4ae155.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf3ed094216776c59b4119e8380017f3b48e5066` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
