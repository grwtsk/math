# finite_certified_resolver_total

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9af4be10-ab2e-4efe-11ac-5537f3acffc1",
  "kind": "theorem",
  "lexical_name": "finite_certified_resolver_total",
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
  "slug": "finite-certified-resolver-total--dd32b57776eebdf1d927850d",
  "source": {
    "blob": "a1dcba4762e5c34c4f6ae0811abc0c58ebb8050e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 67,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Resolver/Variant91ade31dc4906242d42fe0e8f5caf45f9ddb8b9a00c62686ec885314d05822fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd32b57776eebdf1d927850d70234eafb2333a048da363bf8565d0180f73dbb7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Resolver/Variant91ade31dc4906242d42fe0e8f5caf45f9ddb8b9a00c62686ec885314d05822fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9af4be10-ab2e-4efe-11ac-5537f3acffc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_certified_resolver_total
    {Coordinate Leaf Obstruction Unknown Rejection : Type}
    [Fintype Coordinate]
    [DecidableEq Coordinate]
    (input :
      FiniteCertifiedResolverInput
        Coordinate Leaf Obstruction Unknown Rejection) :
    ∃ result,
      resolveFiniteCertified input = result :=
  ⟨resolveFiniteCertified input, rfl⟩

end Mathematics.BinaryFrontier
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Resolver/Variant91ade31dc4906242d42fe0e8f5caf45f9ddb8b9a00c62686ec885314d05822fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Resolver/Variant91ade31dc4906242d42fe0e8f5caf45f9ddb8b9a00c62686ec885314d05822fb.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1dcba4762e5c34c4f6ae0811abc0c58ebb8050e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
