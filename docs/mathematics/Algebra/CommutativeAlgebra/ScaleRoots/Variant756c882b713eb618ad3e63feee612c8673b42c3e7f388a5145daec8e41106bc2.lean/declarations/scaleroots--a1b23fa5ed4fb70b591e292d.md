# scaleRoots

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8f0cb03c519c1556d61120515f6e07a02034ceea7e83413467a385b74021ac62",
  "kind": "def",
  "lexical_name": "scaleRoots",
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
  "slug": "scaleroots--a1b23fa5ed4fb70b591e292d",
  "source": {
    "blob": "b7a6e20349925544244c98518470ba4e279a64ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 30,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ScaleRoots/Variant756c882b713eb618ad3e63feee612c8673b42c3e7f388a5145daec8e41106bc2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a1b23fa5ed4fb70b591e292d4a516d73b03b590ec66bcfdf51f935bcf36cf525",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ScaleRoots/Variant756c882b713eb618ad3e63feee612c8673b42c3e7f388a5145daec8e41106bc2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8f0cb03c519c1556d61120515f6e07a02034ceea7e83413467a385b74021ac62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def scaleRoots (p : R[X]) (s : R) : R[X] :=
  ∑ i in p.support, monomial i (p.coeff i * s ^ (p.natDegree - i))
#align polynomial.scale_roots Polynomial.scaleRoots

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ScaleRoots/Variant756c882b713eb618ad3e63feee612c8673b42c3e7f388a5145daec8e41106bc2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ScaleRoots/Variant756c882b713eb618ad3e63feee612c8673b42c3e7f388a5145daec8e41106bc2.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7a6e20349925544244c98518470ba4e279a64ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
