# fixed_of_fixed1_aux2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d393558-4ae2-4505-7581-a1d78e81c09b",
  "kind": "theorem",
  "lexical_name": "fixed_of_fixed1_aux2",
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
  "slug": "fixed-of-fixed1-aux2--ea56068823f33c626b82f6b8",
  "source": {
    "blob": "8f581c1970d2dd79598cb0c745d054f68d868126",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 256,
    "path": "GRWTSK/Algebra/Basic/Variant8ef51cd802ee54f13334ec12c995d5009cc2c9b2aa78c3663c52c03d3643bf64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea56068823f33c626b82f6b8752a2d6868ea95c82a46c3edec27dae59364d320",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant8ef51cd802ee54f13334ec12c995d5009cc2c9b2aa78c3663c52c03d3643bf64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d393558-4ae2-4505-7581-a1d78e81c09b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem fixed_of_fixed1_aux2 (b₀ : B)
    (hx : ∀ g : G, g • Q = Q → algebraMap B (B ⧸ Q) (g • b₀) = algebraMap B (B ⧸ Q) b₀) :
    ∃ a b : B, (∀ g : G, g • a = a) ∧ a ∉ Q ∧
    (∀ g : G, algebraMap B (B ⧸ Q) (g • b) =
      algebraMap B (B ⧸ Q) (if g • Q = Q then a * b₀ else 0)) := by
  obtain ⟨a, b, ha1, ha2, hb⟩ := fixed_of_fixed1_aux1 G Q
  refine ⟨a, b * b₀, ha1, ha2, fun g ↦ ?_⟩
  rw [smul_mul', map_mul, hb]
  specialize hb g
  split_ifs with hg
  · rw [map_mul, hx g hg]
  · rw [map_zero, zero_mul]

/-- A technical lemma for `fixed_of_fixed1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant8ef51cd802ee54f13334ec12c995d5009cc2c9b2aa78c3663c52c03d3643bf64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant8ef51cd802ee54f13334ec12c995d5009cc2c9b2aa78c3663c52c03d3643bf64.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f581c1970d2dd79598cb0c745d054f68d868126` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
