# componentwise_trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:62d8622a-e31e-6bde-31fd-c7c6cf4f8b58",
  "kind": "theorem",
  "lexical_name": "componentwise_trans",
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
  "slug": "componentwise-trans--9e1885d242d038304800e5e4",
  "source": {
    "blob": "b6b31029b46832871e2e11944ceef5bc6f9c27f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 89,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Resources/Variant8fb528e3bd8098d4366edf16ba4b0e57a39593568320bb84c5c09e4f2119983d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e1885d242d038304800e5e440b77c8f8f37eaeea44edcdc52f1c6dc493f139d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Resources/Variant8fb528e3bd8098d4366edf16ba4b0e57a39593568320bb84c5c09e4f2119983d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62d8622a-e31e-6bde-31fd-c7c6cf4f8b58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem componentwise_trans {Index : Type*} {first second third : Vector Index}
    (h₁ : ComponentwiseLE first second) (h₂ : ComponentwiseLE second third) :
    ComponentwiseLE first third :=
  fun coordinate ↦ (h₁ coordinate).trans (h₂ coordinate)

/-- Mutual componentwise dominance identifies every measured coordinate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Resources/Variant8fb528e3bd8098d4366edf16ba4b0e57a39593568320bb84c5c09e4f2119983d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Resources/Variant8fb528e3bd8098d4366edf16ba4b0e57a39593568320bb84c5c09e4f2119983d.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6b31029b46832871e2e11944ceef5bc6f9c27f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
