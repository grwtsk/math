# isoOfHomeo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:890ea21771611bf6c27e8227dec23a5a23d053fb66e35b16ae517cf72656fb6d",
  "kind": "def",
  "lexical_name": "isoOfHomeo",
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
  "slug": "isoofhomeo--92e0411e89ea47bcdb887665",
  "source": {
    "blob": "68a34d108f92978e9d5ea6c12fbe42dc3b5b5b05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 78,
    "path": "GRWTSK/Topology/GeneralTopology/Sequential/Variante1d1cad88b31dc8ca6643fea02cd2235b120d176508d1adc2877f41ca9a6bb0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:92e0411e89ea47bcdb887665d523faa9e96f051f664971b4911c7a52d217f136",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sequential/Variante1d1cad88b31dc8ca6643fea02cd2235b120d176508d1adc2877f41ca9a6bb0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:890ea21771611bf6c27e8227dec23a5a23d053fb66e35b16ae517cf72656fb6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isoOfHomeo {X Y : Sequential.{u}} (f : X ≃ₜ Y) : X ≅ Y where
  hom := TopCat.ofHom ⟨f, f.continuous⟩
  inv := TopCat.ofHom ⟨f.symm, f.symm.continuous⟩
  hom_inv_id := by
    ext x
    exact f.symm_apply_apply x
  inv_hom_id := by
    ext x
    exact f.apply_symm_apply x

/-- Construct a homeomorphism from an isomorphism. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sequential/Variante1d1cad88b31dc8ca6643fea02cd2235b120d176508d1adc2877f41ca9a6bb0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sequential/Variante1d1cad88b31dc8ca6643fea02cd2235b120d176508d1adc2877f41ca9a6bb0e.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68a34d108f92978e9d5ea6c12fbe42dc3b5b5b05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
