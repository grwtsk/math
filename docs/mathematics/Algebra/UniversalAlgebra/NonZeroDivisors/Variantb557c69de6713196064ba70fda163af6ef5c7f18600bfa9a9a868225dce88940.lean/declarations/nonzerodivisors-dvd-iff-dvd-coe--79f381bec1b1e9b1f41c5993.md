# nonZeroDivisors_dvd_iff_dvd_coe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "30a0b41b5e2f0b9b830b986b96af3425179f3638",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 331,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b5/b557c69de6713196064ba70fda163af6ef5c7f18600bfa9a9a868225dce88940.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ed7e38a6-b4df-6eeb-263c-11b1acbff329",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1bb082d8-da35-53d7-235f-72ebf27d963a",
  "kind": "theorem",
  "lexical_name": "nonZeroDivisors_dvd_iff_dvd_coe",
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
  "slug": "nonzerodivisors-dvd-iff-dvd-coe--79f381bec1b1e9b1f41c5993",
  "source": {
    "blob": "30a0b41b5e2f0b9b830b986b96af3425179f3638",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 336,
    "line": 331,
    "path": "GRWTSK/Algebra/UniversalAlgebra/NonZeroDivisors/Variantb557c69de6713196064ba70fda163af6ef5c7f18600bfa9a9a868225dce88940.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79f381bec1b1e9b1f41c599353d4211cf6364c2dcc5c69275be47ac7d2659606",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/NonZeroDivisors/Variantb557c69de6713196064ba70fda163af6ef5c7f18600bfa9a9a868225dce88940.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1bb082d8-da35-53d7-235f-72ebf27d963a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–336.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonZeroDivisors_dvd_iff_dvd_coe {a b : M₀⁰} :
    a ∣ b ↔ (a : M₀) ∣ (b : M₀) :=
  ⟨fun ⟨c, hc⟩ ↦ by simp_rw [hc, Submonoid.coe_mul, dvd_mul_right],
  fun ⟨c, hc⟩ ↦ ⟨⟨c, (mul_mem_nonZeroDivisors.mp (hc ▸ b.prop)).2⟩,
    by simp_rw [Subtype.ext_iff, Submonoid.coe_mul, hc]⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/NonZeroDivisors/Variantb557c69de6713196064ba70fda163af6ef5c7f18600bfa9a9a868225dce88940.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/NonZeroDivisors/Variantb557c69de6713196064ba70fda163af6ef5c7f18600bfa9a9a868225dce88940.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30a0b41b5e2f0b9b830b986b96af3425179f3638` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
