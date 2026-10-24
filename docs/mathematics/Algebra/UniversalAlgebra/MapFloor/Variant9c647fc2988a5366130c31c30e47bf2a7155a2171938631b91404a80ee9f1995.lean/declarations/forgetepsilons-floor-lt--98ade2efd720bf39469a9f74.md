# forgetEpsilons_floor_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c5d7be09de4acdbdc278277ff512aaf560befb86",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 127,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9c/9c647fc2988a5366130c31c30e47bf2a7155a2171938631b91404a80ee9f1995.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7596e9bd-7a82-c647-5fd6-da59152b2261",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9c3bf89e-b9eb-2d26-b168-a8afc678e18c",
  "kind": "theorem",
  "lexical_name": "forgetEpsilons_floor_lt",
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
  "slug": "forgetepsilons-floor-lt--98ade2efd720bf39469a9f74",
  "source": {
    "blob": "c5d7be09de4acdbdc278277ff512aaf560befb86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 127,
    "path": "GRWTSK/Algebra/UniversalAlgebra/MapFloor/Variant9c647fc2988a5366130c31c30e47bf2a7155a2171938631b91404a80ee9f1995.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98ade2efd720bf39469a9f7423bf4e7d3a2532c00bbdfa91d4afdd2c39673dbd",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/MapFloor/Variant9c647fc2988a5366130c31c30e47bf2a7155a2171938631b91404a80ee9f1995.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c3bf89e-b9eb-2d26-b168-a8afc678e18c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem forgetEpsilons_floor_lt (n : ℤ) :
    forgetEpsilons ⌊(n - ↑ε : ℤ[ε])⌋ < ⌊forgetEpsilons (n - ↑ε)⌋ := by
  suffices ⌊(n - ↑ε : ℤ[ε])⌋ = n - 1 by simp [map_sub, this]
  have : (0 : ℤ[ε]) < ε := ⟨1, by simp⟩
  exact (if_neg <| by rw [coeff_sub, intCast_coeff_zero]; simp [this]).trans (by
    rw [coeff_sub, intCast_coeff_zero]; simp)

/-- The ceil of `n + ε` is `n + 1` but its image under `forgetEpsilons` is `n`, whose ceil is
itself. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/MapFloor/Variant9c647fc2988a5366130c31c30e47bf2a7155a2171938631b91404a80ee9f1995.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/MapFloor/Variant9c647fc2988a5366130c31c30e47bf2a7155a2171938631b91404a80ee9f1995.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5d7be09de4acdbdc278277ff512aaf560befb86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
