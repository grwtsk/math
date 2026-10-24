# comparisonAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2d4581e38c68a13a1aecbd94a6a64110fcf493d961ea2a848038c316f5180de6",
  "kind": "def",
  "lexical_name": "comparisonAt",
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
  "slug": "comparisonat--e3ecf1ac0057804639a2b7d7",
  "source": {
    "blob": "2c3dc146658b69a926e70c6b53d41d16117b477f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 122,
    "path": "GRWTSK/Algebra/GroupTheory/Comparison/Variant7ebe7bf2537378473b3680ab88821d442e16bb2d95ce06494cc19fac6b10e070.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e3ecf1ac0057804639a2b7d7d4c61fc3633a26e326048f5998746c1ca1f7cec7",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Comparison/Variant7ebe7bf2537378473b3680ab88821d442e16bb2d95ce06494cc19fac6b10e070.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2d4581e38c68a13a1aecbd94a6a64110fcf493d961ea2a848038c316f5180de6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def comparisonAt
    {Representation : Type uP}
    (F : RepresentationFamily Representation)
    (representation : Representation)
    (degree : Int) :
    Comparison.Spec (F.Source degree) (F.Target degree) :=
  (F.comparison degree).at representation

end RepresentationFamily

namespace EtaleComparisonDatum

/-- The map part of an arithmetic/etale comparison datum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Comparison/Variant7ebe7bf2537378473b3680ab88821d442e16bb2d95ce06494cc19fac6b10e070.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Comparison/Variant7ebe7bf2537378473b3680ab88821d442e16bb2d95ce06494cc19fac6b10e070.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c3dc146658b69a926e70c6b53d41d16117b477f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
