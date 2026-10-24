# Ultrafilter.mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:256caf04fe9fa446d2543524dd54c9fd9e3ce92461b2c57e5ef7e12c18f7422a",
  "kind": "def",
  "lexical_name": "Ultrafilter.mul",
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
  "slug": "ultrafilter-mul--42a36b69a1f315310e4ec629",
  "source": {
    "blob": "98ae06fd9e57ec6ba1a45c2da36442ec32bb7c2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 62,
    "path": "GRWTSK/Topology/GeneralTopology/Hindman/Variant9c3327b9ebedd8b4d3442caf61877b9c7c25d17b572a5268c369f96b775d0370.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:42a36b69a1f315310e4ec62925f87d90568e8f6f0bc70556c6beeb443bdf7cdf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Hindman/Variant9c3327b9ebedd8b4d3442caf61877b9c7c25d17b572a5268c369f96b775d0370.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:256caf04fe9fa446d2543524dd54c9fd9e3ce92461b2c57e5ef7e12c18f7422a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Ultrafilter.mul {M} [Mul M] : Mul (Ultrafilter M) where mul U V := (· * ·) <$> U <*> V

attribute [local instance] Ultrafilter.mul Ultrafilter.add

/-- We could have taken this as the definition of `U * V`, but then we would have to prove that it
defines an ultrafilter. -/
@[to_additive /-- We could have taken this as the definition of `U + V`, but then we would have to
prove that it defines an ultrafilter. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Hindman/Variant9c3327b9ebedd8b4d3442caf61877b9c7c25d17b572a5268c369f96b775d0370.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Hindman/Variant9c3327b9ebedd8b4d3442caf61877b9c7c25d17b572a5268c369f96b775d0370.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98ae06fd9e57ec6ba1a45c2da36442ec32bb7c2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
