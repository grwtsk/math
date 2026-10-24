# map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4b722c48bfe2de562578284a7ba8a30fdd61318a4233e9fd5e2ba40bfc19c2ac",
  "kind": "def",
  "lexical_name": "map",
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
  "slug": "map--eedcddd74c3bb746f8ce0135",
  "source": {
    "blob": "cef26cdc017c8c63805d5b39a0d985b521d336c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 730,
    "line": 726,
    "path": "GRWTSK/Algebra/FractionalIdeal/Variant3503c7ee7a7a573e51a090283a698fabe34f5b4d8a40d35147dac2ab848e78dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eedcddd74c3bb746f8ce013592623f5a33df9bfa4ff72a6b1e5b17fc8672dae5",
  "verification": {
    "reference": "docs/verification/Algebra/FractionalIdeal/Variant3503c7ee7a7a573e51a090283a698fabe34f5b4d8a40d35147dac2ab848e78dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4b722c48bfe2de562578284a7ba8a30fdd61318a4233e9fd5e2ba40bfc19c2ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 726–730.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def map (g : P →ₐ[R] P') : FractionalIdeal S P → FractionalIdeal S P' := fun I =>
  ⟨Submodule.map g.toLinearMap I, I.isFractional.map g⟩
#align fractional_ideal.map FractionalIdeal.map

@[simp, norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FractionalIdeal/Variant3503c7ee7a7a573e51a090283a698fabe34f5b4d8a40d35147dac2ab848e78dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FractionalIdeal/Variant3503c7ee7a7a573e51a090283a698fabe34f5b4d8a40d35147dac2ab848e78dc.lean#L726).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cef26cdc017c8c63805d5b39a0d985b521d336c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
