# mul_of'_modOf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ea17f52-cbb8-c885-a0b3-3ce342817e83",
  "kind": "theorem",
  "lexical_name": "mul_of'_modOf",
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
  "slug": "mul-of-modof--69290be037d0dcd8ae648e9f",
  "source": {
    "blob": "939ff3ce56d575eecba47bbad5f5d45d5259ebe0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 155,
    "path": "GRWTSK/Algebra/Division/Variantabfd137d96c3258441cb246937f2bfd0bbaad96e81ed3684eb104fc862fd6fc2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69290be037d0dcd8ae648e9f3da3435c907d0b5ffaaf61b05d3c18cb04bf15dc",
  "verification": {
    "reference": "docs/verification/Algebra/Division/Variantabfd137d96c3258441cb246937f2bfd0bbaad96e81ed3684eb104fc862fd6fc2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ea17f52-cbb8-c885-a0b3-3ce342817e83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_of'_modOf (x : k[G]) (g : G) : x * of' k G g %ᵒᶠ g = 0 := by
  ext g'
  rw [Finsupp.zero_apply]
  obtain ⟨d, rfl⟩ | h := em (∃ d, g' = g + d)
  · rw [modOf_apply_self_add]
  · rw [modOf_apply_of_not_exists_add _ _ _ h, of'_apply, mul_single_apply_of_not_exists_add]
    simpa only [add_comm] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Division/Variantabfd137d96c3258441cb246937f2bfd0bbaad96e81ed3684eb104fc862fd6fc2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Division/Variantabfd137d96c3258441cb246937f2bfd0bbaad96e81ed3684eb104fc862fd6fc2.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `939ff3ce56d575eecba47bbad5f5d45d5259ebe0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
