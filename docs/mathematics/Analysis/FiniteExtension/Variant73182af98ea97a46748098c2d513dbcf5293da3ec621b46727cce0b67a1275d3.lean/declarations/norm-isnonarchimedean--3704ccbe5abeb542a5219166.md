# norm_isNonarchimedean

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "62c52f026c18320842b1828323dee3ef21c4b691",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 90,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/73/73182af98ea97a46748098c2d513dbcf5293da3ec621b46727cce0b67a1275d3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ff8f8738-51fa-51d2-1c85-c4d24eed081b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:95dc877a-141e-3245-7e1c-31e00d1c3448",
  "kind": "theorem",
  "lexical_name": "norm_isNonarchimedean",
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
  "slug": "norm-isnonarchimedean--3704ccbe5abeb542a5219166",
  "source": {
    "blob": "62c52f026c18320842b1828323dee3ef21c4b691",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 90,
    "path": "GRWTSK/Analysis/FiniteExtension/Variant73182af98ea97a46748098c2d513dbcf5293da3ec621b46727cce0b67a1275d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3704ccbe5abeb542a5219166e3c02e5f8e86ec5625e4a4ac39fd61ca1d5cc0e1",
  "verification": {
    "reference": "docs/verification/Analysis/FiniteExtension/Variant73182af98ea97a46748098c2d513dbcf5293da3ec621b46727cce0b67a1275d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95dc877a-141e-3245-7e1c-31e00d1c3448`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_isNonarchimedean (hna : IsNonarchimedean (Norm.norm : K → ℝ)) :
    IsNonarchimedean B.norm := fun x y ↦ by
  obtain ⟨ixy, _, hixy⟩ := exists_mem_eq_sup' univ_nonempty (fun i ↦ ‖(B.repr (x + y)) i‖)
  have hxy : ‖B.repr (x + y) ixy‖ ≤ max ‖B.repr x ixy‖ ‖B.repr y ixy‖ := by
    rw [map_add, Finsupp.coe_add, Pi.add_apply]; exact hna _ _
  rw [Basis.norm, hixy]
  rcases le_max_iff.mp hxy with (hx | hy)
  · exact le_max_of_le_left (le_trans hx (norm_repr_le_norm B ixy))
  · exact le_max_of_le_right (le_trans hy (norm_repr_le_norm B ixy))

/-- For any `K`-basis of `L`, `B.norm` is bounded with respect to multiplication. That is,
  `∃ (c : ℝ), c > 0` such that ` ∀ (x y : L), B.norm (x * y) ≤ c * B.norm x * B.norm y`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/FiniteExtension/Variant73182af98ea97a46748098c2d513dbcf5293da3ec621b46727cce0b67a1275d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FiniteExtension/Variant73182af98ea97a46748098c2d513dbcf5293da3ec621b46727cce0b67a1275d3.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62c52f026c18320842b1828323dee3ef21c4b691` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
