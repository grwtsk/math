# shell_card_le_divisor_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3174d1a5f49ee07575adc1ccef84e6e1d411b013",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 117,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/078b53d001638021a2bec4b1ff055071ddb446e30e874d0100b68a07057170cb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c6cf35a0-8386-6224-eb92-a9453353cffd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c0a5a515-6edb-6f79-cd9a-2bea3f79631c",
  "kind": "theorem",
  "lexical_name": "shell_card_le_divisor_real",
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
  "slug": "shell-card-le-divisor-real--40bedfd2daa697adf6f50414",
  "source": {
    "blob": "3174d1a5f49ee07575adc1ccef84e6e1d411b013",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 117,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Transport/Variant078b53d001638021a2bec4b1ff055071ddb446e30e874d0100b68a07057170cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40bedfd2daa697adf6f50414ea6aba1e9c606c4a76c4872b6b050dfb45109724",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Transport/Variant078b53d001638021a2bec4b1ff055071ddb446e30e874d0100b68a07057170cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0a5a515-6edb-6f79-cd9a-2bea3f79631c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shell_card_le_divisor_real (n : ℕ) :
    (Nat.card (ZeroShell n) : ℝ) ≤
      ((∑ᶠ z, divisor cleared (closedBall (0 : ℂ) ((n : ℝ)+2)) z : ℤ) : ℝ) := by
  exact_mod_cast shell_card_le_divisor n

#print axioms cleared_order
#print axioms shell_mem_closedBall
#print axioms cleared_divisor_at_point
#print axioms shell_card_le_divisor
#print axioms shell_card_le_divisor_real
end
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ShellCountTransport
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Transport/Variant078b53d001638021a2bec4b1ff055071ddb446e30e874d0100b68a07057170cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Transport/Variant078b53d001638021a2bec4b1ff055071ddb446e30e874d0100b68a07057170cb.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3174d1a5f49ee07575adc1ccef84e6e1d411b013` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
