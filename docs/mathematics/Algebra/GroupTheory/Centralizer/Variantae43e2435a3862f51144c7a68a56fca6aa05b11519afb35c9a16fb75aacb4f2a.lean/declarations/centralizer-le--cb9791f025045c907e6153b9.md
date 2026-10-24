# centralizer_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f2d968b3-7fa5-2b4a-ee0e-917461632ea4",
  "kind": "theorem",
  "lexical_name": "centralizer_le",
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
  "slug": "centralizer-le--cb9791f025045c907e6153b9",
  "source": {
    "blob": "5c93781c3a874fa951213bc204c8f0d6c4b1a61b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 71,
    "path": "GRWTSK/Algebra/GroupTheory/Centralizer/Variantae43e2435a3862f51144c7a68a56fca6aa05b11519afb35c9a16fb75aacb4f2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb9791f025045c907e6153b9ce0867f8bbd97c6543817244b35599289ec44334",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Centralizer/Variantae43e2435a3862f51144c7a68a56fca6aa05b11519afb35c9a16fb75aacb4f2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2d968b3-7fa5-2b4a-ee0e-917461632ea4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centralizer_le (h : S ⊆ T) : centralizer T ≤ centralizer S :=
  Set.centralizer_subset h

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Centralizer/Variantae43e2435a3862f51144c7a68a56fca6aa05b11519afb35c9a16fb75aacb4f2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Centralizer/Variantae43e2435a3862f51144c7a68a56fca6aa05b11519afb35c9a16fb75aacb4f2a.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c93781c3a874fa951213bc204c8f0d6c4b1a61b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
