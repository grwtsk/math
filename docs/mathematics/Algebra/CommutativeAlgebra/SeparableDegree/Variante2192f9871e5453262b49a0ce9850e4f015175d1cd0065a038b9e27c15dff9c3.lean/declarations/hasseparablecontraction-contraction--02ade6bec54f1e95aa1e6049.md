# HasSeparableContraction.contraction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:559a4ca6ff19c43f5d54eef3adbc7d3f0197135457bad6d2f8a4d6e742ce2bc8",
  "kind": "def",
  "lexical_name": "HasSeparableContraction.contraction",
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
  "slug": "hasseparablecontraction-contraction--02ade6bec54f1e95aa1e6049",
  "source": {
    "blob": "d8a7da7c1dd44057a7eaac3dda646901a3e97a21",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 63,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/SeparableDegree/Variante2192f9871e5453262b49a0ce9850e4f015175d1cd0065a038b9e27c15dff9c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:02ade6bec54f1e95aa1e60497be9d4ac9600d4fa6ddcedd7f06ef44db55fc5fb",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/SeparableDegree/Variante2192f9871e5453262b49a0ce9850e4f015175d1cd0065a038b9e27c15dff9c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:559a4ca6ff19c43f5d54eef3adbc7d3f0197135457bad6d2f8a4d6e742ce2bc8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def HasSeparableContraction.contraction : F[X] :=
  Classical.choose hf
#align polynomial.has_separable_contraction.contraction Polynomial.HasSeparableContraction.contraction

/-- The separable degree of a polynomial is the degree of a given separable contraction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/SeparableDegree/Variante2192f9871e5453262b49a0ce9850e4f015175d1cd0065a038b9e27c15dff9c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/SeparableDegree/Variante2192f9871e5453262b49a0ce9850e4f015175d1cd0065a038b9e27c15dff9c3.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8a7da7c1dd44057a7eaac3dda646901a3e97a21` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
