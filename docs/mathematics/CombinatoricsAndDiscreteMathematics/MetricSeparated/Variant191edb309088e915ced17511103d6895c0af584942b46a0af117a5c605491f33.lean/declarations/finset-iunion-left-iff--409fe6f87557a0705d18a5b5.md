# finset_iUnion_left_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:08ecc8f5-8285-3fb5-80b6-479a665f3312",
  "kind": "theorem",
  "lexical_name": "finset_iUnion_left_iff",
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
  "slug": "finset-iunion-left-iff--409fe6f87557a0705d18a5b5",
  "source": {
    "blob": "1b2b510a9ef9d83186de2a4a3aaef9497fd22fcf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 182,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variant191edb309088e915ced17511103d6895c0af584942b46a0af117a5c605491f33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:409fe6f87557a0705d18a5b5e067af2976bdd97e6b72a7dfc214359d52ebe782",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variant191edb309088e915ced17511103d6895c0af584942b46a0af117a5c605491f33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08ecc8f5-8285-3fb5-80b6-479a665f3312`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finset_iUnion_left_iff {ι : Type*} {I : Finset ι} {s : ι → Set X} {t : Set X} :
    AreSeparated (⋃ i ∈ I, s i) t ↔ ∀ i ∈ I, AreSeparated (s i) t :=
  finite_iUnion_left_iff I.finite_toSet

alias ⟨_, finset_iUnion_left⟩ := finset_iUnion_left_iff

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variant191edb309088e915ced17511103d6895c0af584942b46a0af117a5c605491f33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variant191edb309088e915ced17511103d6895c0af584942b46a0af117a5c605491f33.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b2b510a9ef9d83186de2a4a3aaef9497fd22fcf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
