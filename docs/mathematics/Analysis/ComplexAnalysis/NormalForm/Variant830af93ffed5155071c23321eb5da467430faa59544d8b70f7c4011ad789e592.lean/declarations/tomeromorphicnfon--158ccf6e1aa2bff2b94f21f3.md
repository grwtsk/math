# toMeromorphicNFOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:29715bf2b22c539675938fd692e90d2e3c82b1140c05214207f9f5fb52d8df87",
  "kind": "def",
  "lexical_name": "toMeromorphicNFOn",
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
  "slug": "tomeromorphicnfon--158ccf6e1aa2bff2b94f21f3",
  "source": {
    "blob": "6eb19e8cec95b101020b7e6f35cc4c2fea2ab545",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 557,
    "line": 545,
    "path": "GRWTSK/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:158ccf6e1aa2bff2b94f21f38b249f26412abc80b51b1d388c77162cd5f2d5a6",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:29715bf2b22c539675938fd692e90d2e3c82b1140c05214207f9f5fb52d8df87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 545–557.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def toMeromorphicNFOn :
    𝕜 → E := by
  by_cases h₁f : MeromorphicOn f U
  · intro z
    by_cases hz : z ∈ U
    · exact toMeromorphicNFAt f z z
    · exact f z
  · exact 0

/--
If `f` is not meromorphic on `U`, conversion to normal form  maps the function
to `0`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean#L545).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6eb19e8cec95b101020b7e6f35cc4c2fea2ab545` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
