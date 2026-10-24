# zeta_mult_reflect

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5e279fcf45f11c687d78384dbea40a6ffa3f21ac",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 314,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ff/ffd9ae4718636d898462b0d31625122f0064256b5910250a3e45f7298d75db63.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:55ca6713-384c-f43d-ea62-67a0940e910d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:69e607b9-755a-403d-be94-e40cbf80cc60",
  "kind": "theorem",
  "lexical_name": "zeta_mult_reflect",
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
  "slug": "zeta-mult-reflect--b2665fbf95b9081d975aeee0",
  "source": {
    "blob": "5e279fcf45f11c687d78384dbea40a6ffa3f21ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 314,
    "path": "GRWTSK/Analysis/ComplexAnalysis/ZetaReflect/Variantffd9ae4718636d898462b0d31625122f0064256b5910250a3e45f7298d75db63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2665fbf95b9081d975aeee0b77a1f4bb9c3840aca1d3a20108042b29295b755",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/ZetaReflect/Variantffd9ae4718636d898462b0d31625122f0064256b5910250a3e45f7298d75db63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69e607b9-755a-403d-be94-e40cbf80cc60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zeta_mult_reflect : ∀ ρ, IsNontrivialZero ρ → zeroMult (reflect ρ) = zeroMult ρ := by
  rintro ρ ⟨_, h0, h1⟩
  have h1subne : (1 : ℂ) - ρ ≠ 1 := by
    intro h
    have hρ0 : ρ = 0 := by
      have := congrArg (fun z => (1 : ℂ) - z) h
      simpa using this
    rw [hρ0] at h0
    simp at h0
  have hrefl_eq : reflect ρ = conj (1 - ρ) := by
    unfold reflect
    rw [map_sub, map_one]
  unfold zeroMult
  rw [hrefl_eq, analyticOrderAt_zeta_conj h1subne, analyticOrderAt_zeta_one_sub h0 h1]

end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/ZetaReflect/Variantffd9ae4718636d898462b0d31625122f0064256b5910250a3e45f7298d75db63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/ZetaReflect/Variantffd9ae4718636d898462b0d31625122f0064256b5910250a3e45f7298d75db63.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e279fcf45f11c687d78384dbea40a6ffa3f21ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
