# egauge_add_add_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "854354f1971924c8feb2cf05c4434ced8d899263",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 228,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/01fc2633d3253139fcff8e9ee15a4b4096e40f33d536e8be9ac99a87d4e34d1c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2999d7f7-97c5-1f81-b8ce-f20bcf1eef5b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b0248701-5e5b-7f41-077f-f4af06629ba8",
  "kind": "theorem",
  "lexical_name": "egauge_add_add_le",
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
  "slug": "egauge-add-add-le--2a5503dd4ab932cd03b65659",
  "source": {
    "blob": "854354f1971924c8feb2cf05c4434ced8d899263",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 228,
    "path": "GRWTSK/Algebra/LinearAlgebra/EGauge/Variant01fc2633d3253139fcff8e9ee15a4b4096e40f33d536e8be9ac99a87d4e34d1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a5503dd4ab932cd03b656594a370981f7ec903b2d8034dfc732c699466f5827",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/EGauge/Variant01fc2633d3253139fcff8e9ee15a4b4096e40f33d536e8be9ac99a87d4e34d1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0248701-5e5b-7f41-077f-f4af06629ba8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem egauge_add_add_le {U V : Set E} (hU : Balanced 𝕜 U) (hV : Balanced 𝕜 V) (a b : E) :
    egauge 𝕜 (U + V) (a + b) ≤ max (egauge 𝕜 U a) (egauge 𝕜 V b) := by
  rw [← egauge_prod_mk hU hV a b, ← add_image_prod]
  exact MapsTo.egauge_le 𝕜 (LinearMap.fst 𝕜 E E + LinearMap.snd 𝕜 E E) (mapsTo_image _ _) (a, b)

end NormedDivisionRing

section Pi

variable {𝕜 : Type*} {ι : Type*} {E : ι → Type*}
variable [NormedDivisionRing 𝕜] [∀ i, AddCommGroup (E i)] [∀ i, Module 𝕜 (E i)]

/-- The extended gauge of a point `x` in an indexed product
with respect to a product of finitely many balanced sets `U i`, `i ∈ I`,
(and the whole spaces for the other indices)
is the supremum of the extended gauges of the components of `x`
with respect to the corresponding balanced set.

This version assumes the following technical condition:
- either `I` is the universal set;
- or one of `x i`, `i ∈ I`, is nonzero;
- or `𝕜` is nontrivially normed.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/EGauge/Variant01fc2633d3253139fcff8e9ee15a4b4096e40f33d536e8be9ac99a87d4e34d1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/EGauge/Variant01fc2633d3253139fcff8e9ee15a4b4096e40f33d536e8be9ac99a87d4e34d1c.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `854354f1971924c8feb2cf05c4434ced8d899263` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
