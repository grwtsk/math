# prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c7be18946dc7a001f97f0bb9020cf9a6ce9138e69434677a34264e3acabaf7fd",
  "kind": "def",
  "lexical_name": "prod",
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
  "slug": "prod--65bf6e355a4a3e4c1cf0e72c",
  "source": {
    "blob": "507a5c1ebcb4220f2b4ee0721a4b55d6db3dcd0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 262,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant2549ec8931e750fd9bea43484761b739f67267609e4f299309dcdce9647f39c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:65bf6e355a4a3e4c1cf0e72c1b22096364def3084d4154cbc3e7b3ce028cf4ca",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Basic/Variant2549ec8931e750fd9bea43484761b739f67267609e4f299309dcdce9647f39c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c7be18946dc7a001f97f0bb9020cf9a6ce9138e69434677a34264e3acabaf7fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def prod (f : M [⋀^ι]→L[R] N) (g : M [⋀^ι]→L[R] N') : M [⋀^ι]→L[R] (N × N') :=
  ⟨f.1.prod g.1, (f.toAlternatingMap.prod g.toAlternatingMap).map_eq_zero_of_eq⟩

/-- Combine a family of continuous alternating maps with the same domain and codomains `M' i` into a
continuous alternating map taking values in the space of functions `Π i, M' i`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Basic/Variant2549ec8931e750fd9bea43484761b739f67267609e4f299309dcdce9647f39c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant2549ec8931e750fd9bea43484761b739f67267609e4f299309dcdce9647f39c2.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `507a5c1ebcb4220f2b4ee0721a4b55d6db3dcd0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
