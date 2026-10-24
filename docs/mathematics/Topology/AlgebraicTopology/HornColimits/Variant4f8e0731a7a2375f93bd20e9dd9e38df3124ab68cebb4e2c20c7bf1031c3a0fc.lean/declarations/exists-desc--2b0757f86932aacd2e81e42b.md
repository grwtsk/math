# exists_desc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:112c863f-a527-c103-e6f4-4c394a1e8136",
  "kind": "lemma",
  "lexical_name": "exists_desc",
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
  "slug": "exists-desc--2b0757f86932aacd2e81e42b",
  "source": {
    "blob": "cfbe5f4f92936ae21ffcd0ca1086f778ec14dfe3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 350,
    "line": 342,
    "path": "GRWTSK/Topology/AlgebraicTopology/HornColimits/Variant4f8e0731a7a2375f93bd20e9dd9e38df3124ab68cebb4e2c20c7bf1031c3a0fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b0757f86932aacd2e81e42b830791fcf8e0d3e22b8f4a98da6770f95c27a1a1",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/HornColimits/Variant4f8e0731a7a2375f93bd20e9dd9e38df3124ab68cebb4e2c20c7bf1031c3a0fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:112c863f-a527-c103-e6f4-4c394a1e8136`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 342–350.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_desc : ∃ (φ : (Λ[3, 1] : SSet) ⟶ X),
    ι₀ ≫ φ = f₀ ∧ ι₂ ≫ φ = f₂ ∧ ι₃ ≫ φ = f₃ :=
  ⟨desc f₀ f₂ f₃ h₁₂ h₁₃ h₂₃, by simp⟩

end horn₃₁

namespace horn₃₂

/-- The inclusion `Δ[2] ⟶ Λ[3, 2]` which avoids `0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/HornColimits/Variant4f8e0731a7a2375f93bd20e9dd9e38df3124ab68cebb4e2c20c7bf1031c3a0fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/HornColimits/Variant4f8e0731a7a2375f93bd20e9dd9e38df3124ab68cebb4e2c20c7bf1031c3a0fc.lean#L342).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cfbe5f4f92936ae21ffcd0ca1086f778ec14dfe3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
