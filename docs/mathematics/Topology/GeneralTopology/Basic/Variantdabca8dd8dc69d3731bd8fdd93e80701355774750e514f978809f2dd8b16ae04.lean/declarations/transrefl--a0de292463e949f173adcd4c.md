# transRefl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e8e66dea983a0b968f4df7c34a23c4bfaadc70c944540bc1f2a7ef16bf4acf2e",
  "kind": "def",
  "lexical_name": "transRefl",
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
  "slug": "transrefl--a0de292463e949f173adcd4c",
  "source": {
    "blob": "5c862cafeaf6055b73ba26559769ec4f40e1528c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 146,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantdabca8dd8dc69d3731bd8fdd93e80701355774750e514f978809f2dd8b16ae04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a0de292463e949f173adcd4c0c6dfd0621744437db91380db7fd19999898507c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantdabca8dd8dc69d3731bd8fdd93e80701355774750e514f978809f2dd8b16ae04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e8e66dea983a0b968f4df7c34a23c4bfaadc70c944540bc1f2a7ef16bf4acf2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def transRefl (p : Path x₀ x₁) : Homotopy (p.trans (Path.refl x₁)) p :=
  ((Homotopy.reparam p (fun t => ⟨transReflReparamAux t, transReflReparamAux_mem_I t⟩)
          (by fun_prop) (Subtype.ext transReflReparamAux_zero)
          (Subtype.ext transReflReparamAux_one)).cast
      rfl (trans_refl_reparam p).symm).symm

/-- For any path `p` from `x₀` to `x₁`, we have a homotopy from `(Path.refl x₀).trans p` to `p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantdabca8dd8dc69d3731bd8fdd93e80701355774750e514f978809f2dd8b16ae04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantdabca8dd8dc69d3731bd8fdd93e80701355774750e514f978809f2dd8b16ae04.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c862cafeaf6055b73ba26559769ec4f40e1528c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
