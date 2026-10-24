# _root_.GRWTSK.Algebra.IsFractional.Variant3503c7ee7a7a573e51a090283a698fabe34f5b4d8a40d35147dac2ab848e78dc.IsFractional.map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ba92eb4-97c2-e7b7-3638-1a911f45c876",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.IsFractional.Variant3503c7ee7a7a573e51a090283a698fabe34f5b4d8a40d35147dac2ab848e78dc.IsFractional.map",
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
  "slug": "root-grwtsk-algebra-isfractional-variant3503c7ee7a7a573e51a090283a698fab--03e96d3b9d0f836939f26b6e",
  "source": {
    "blob": "50b3a22fa0e57c277d4e768d232ef017d5bae041",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 733,
    "line": 723,
    "path": "GRWTSK/Algebra/FractionalIdeal/Variant8a1ad775c932829fd1a37869306824f32c6e3ee1a4ec24edbda75046376b87f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03e96d3b9d0f836939f26b6e1698dd557b86a0e5a9e90a5068eeb2488a8584d5",
  "verification": {
    "reference": "docs/verification/Algebra/FractionalIdeal/Variant8a1ad775c932829fd1a37869306824f32c6e3ee1a4ec24edbda75046376b87f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ba92eb4-97c2-e7b7-3638-1a911f45c876`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 723–733.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.IsFractional.Variant3503c7ee7a7a573e51a090283a698fabe34f5b4d8a40d35147dac2ab848e78dc.IsFractional.map (g : P →ₐ[R] P') {I : Submodule R P} :
    IsFractional S I → IsFractional S (Submodule.map g.toLinearMap I)
  | ⟨a, a_nonzero, hI⟩ =>
    ⟨a, a_nonzero, fun b hb => by
      obtain ⟨b', b'_mem, hb'⟩ := Submodule.mem_map.mp hb
      obtain ⟨x, hx⟩ := hI b' b'_mem
      use x
      erw [← g.commutes, hx, g.map_smul, hb']⟩
#align is_fractional.map IsFractional.map

/-- `I.map g` is the pushforward of the fractional ideal `I` along the algebra morphism `g` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FractionalIdeal/Variant8a1ad775c932829fd1a37869306824f32c6e3ee1a4ec24edbda75046376b87f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FractionalIdeal/Variant8a1ad775c932829fd1a37869306824f32c6e3ee1a4ec24edbda75046376b87f0.lean#L723).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50b3a22fa0e57c277d4e768d232ef017d5bae041` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
