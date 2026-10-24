# isCentralScalar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:93ce30dcc31754d9cb3228a4e395bea1a8c204c965397a46bcecab0ca2ad2e2a",
  "kind": "instance",
  "lexical_name": "isCentralScalar",
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
  "slug": "iscentralscalar--3fa01f4fd63330dd0b02dbfa",
  "source": {
    "blob": "fda4f378edba50c35e4f82e1186764443b8650e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 276,
    "path": "GRWTSK/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3fa01f4fd63330dd0b02dbfaae448901a72b6d9f6192f53839290b07ab25a543",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:93ce30dcc31754d9cb3228a4e395bea1a8c204c965397a46bcecab0ca2ad2e2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isCentralScalar [SMul Sᵐᵒᵖ R] [SMul Sᵐᵒᵖ M] [IsScalarTower Sᵐᵒᵖ R M]
    [IsCentralScalar S M] :
    IsCentralScalar S p where
  op_smul_eq_smul r x := Subtype.ext <| op_smul_eq_smul r (x : M)

end

section

variable [Monoid S] [SMul S R] [MulAction S M] [IsScalarTower S R M]

variable (p : SubMulAction R M)

/-- If the scalar product forms a `MulAction`, then the subset inherits this action -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fda4f378edba50c35e4f82e1186764443b8650e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
