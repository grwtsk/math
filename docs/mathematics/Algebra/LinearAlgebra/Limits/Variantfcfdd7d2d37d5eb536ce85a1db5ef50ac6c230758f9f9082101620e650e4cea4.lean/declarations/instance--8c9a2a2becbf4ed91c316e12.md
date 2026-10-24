# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cd2e87d15036b9f1c2d5502b88941ed08fa62c77dd7601dd2f305ae0c8b3fedd",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--8c9a2a2becbf4ed91c316e12",
  "source": {
    "blob": "578cb9de3bbf8af05056639a3f6edc7a6713b1fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 60,
    "path": "GRWTSK/Algebra/LinearAlgebra/Limits/Variantfcfdd7d2d37d5eb536ce85a1db5ef50ac6c230758f9f9082101620e650e4cea4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8c9a2a2becbf4ed91c316e128b76bcd5be03f34b7ecaa9f79fe5c8af785265fe",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Limits/Variantfcfdd7d2d37d5eb536ce85a1db5ef50ac6c230758f9f9082101620e650e4cea4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cd2e87d15036b9f1c2d5502b88941ed08fa62c77dd7601dd2f305ae0c8b3fedd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : Small.{w} (sectionsSubmodule F) :=
  inferInstanceAs <| Small.{w} (Functor.sections (F ⋙ forget (ModuleCat R)))

-- Adding the following instance speeds up `limitModule` noticeably,
-- by preventing a bad unfold of `limitAddCommGroup`.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Limits/Variantfcfdd7d2d37d5eb536ce85a1db5ef50ac6c230758f9f9082101620e650e4cea4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Limits/Variantfcfdd7d2d37d5eb536ce85a1db5ef50ac6c230758f9f9082101620e650e4cea4.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `578cb9de3bbf8af05056639a3f6edc7a6713b1fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
