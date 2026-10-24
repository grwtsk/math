# embDomain.addMonoidHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9000205a0dc20eccf714ec7867bea94043d9282e8f65332c7252144dd22e1c6c",
  "kind": "def",
  "lexical_name": "embDomain.addMonoidHom",
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
  "slug": "embdomain-addmonoidhom--da62577f0a2df74142573ba6",
  "source": {
    "blob": "5c0672afa34c34dab46e38a528f557082cbde665",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 95,
    "path": "GRWTSK/Algebra/GroupTheory/Finsupp/Variantad34516efcef8b3805f6e3c767fd076330b4b9a2fe3c7db48760c1d9a6f4ae72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:da62577f0a2df74142573ba6d1956ca3e11e902327fadd92e5618fab5cfc73ad",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Finsupp/Variantad34516efcef8b3805f6e3c767fd076330b4b9a2fe3c7db48760c1d9a6f4ae72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9000205a0dc20eccf714ec7867bea94043d9282e8f65332c7252144dd22e1c6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def embDomain.addMonoidHom (f : ι ↪ F) : (ι →₀ M) →+ F →₀ M where
  toFun v := embDomain f v
  map_zero' := by simp
  map_add' v w := by
    ext b
    by_cases h : b ∈ Set.range f
    · rcases h with ⟨a, rfl⟩
      simp
    · simp only [Set.mem_range, not_exists, coe_add, Pi.add_apply,
        embDomain_notin_range _ _ _ h, add_zero]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Finsupp/Variantad34516efcef8b3805f6e3c767fd076330b4b9a2fe3c7db48760c1d9a6f4ae72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Finsupp/Variantad34516efcef8b3805f6e3c767fd076330b4b9a2fe3c7db48760c1d9a6f4ae72.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c0672afa34c34dab46e38a528f557082cbde665` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
