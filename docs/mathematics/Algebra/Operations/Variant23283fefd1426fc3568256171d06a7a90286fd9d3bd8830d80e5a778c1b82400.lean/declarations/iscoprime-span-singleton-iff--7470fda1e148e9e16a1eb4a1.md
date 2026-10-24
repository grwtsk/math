# isCoprime_span_singleton_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:11b2d219-e569-1d57-5945-d35e284ee9e2",
  "kind": "theorem",
  "lexical_name": "isCoprime_span_singleton_iff",
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
  "slug": "iscoprime-span-singleton-iff--7470fda1e148e9e16a1eb4a1",
  "source": {
    "blob": "029b70b0cfa6f8db77caa7e1f285af4ede9276d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 780,
    "line": 773,
    "path": "GRWTSK/Algebra/Operations/Variant23283fefd1426fc3568256171d06a7a90286fd9d3bd8830d80e5a778c1b82400.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7470fda1e148e9e16a1eb4a1fec6ccd16a6d024d69dedf9f86c3c35ede3b5095",
  "verification": {
    "reference": "docs/verification/Algebra/Operations/Variant23283fefd1426fc3568256171d06a7a90286fd9d3bd8830d80e5a778c1b82400.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11b2d219-e569-1d57-5945-d35e284ee9e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 773–780.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCoprime_span_singleton_iff (x y : R) :
    IsCoprime (span <| singleton x) (span <| singleton y) ↔ IsCoprime x y := by
  simp_rw [isCoprime_iff_codisjoint, codisjoint_iff, eq_top_iff_one, mem_span_singleton_sup,
    mem_span_singleton]
  constructor
  · rintro ⟨a, _, ⟨b, rfl⟩, e⟩; exact ⟨a, b, mul_comm b y ▸ e⟩
  · rintro ⟨a, b, e⟩; exact ⟨a, _, ⟨b, rfl⟩, mul_comm y b ▸ e⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Operations/Variant23283fefd1426fc3568256171d06a7a90286fd9d3bd8830d80e5a778c1b82400.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Operations/Variant23283fefd1426fc3568256171d06a7a90286fd9d3bd8830d80e5a778c1b82400.lean#L773).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `029b70b0cfa6f8db77caa7e1f285af4ede9276d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
