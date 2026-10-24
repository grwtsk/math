# reflTrans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c2a4c6c97d6ad44f70f76b9051e763812188b07ae75be21e4c3270cacd5b0443",
  "kind": "def",
  "lexical_name": "reflTrans",
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
  "slug": "refltrans--c8410febdb9d19f40e7aa7f3",
  "source": {
    "blob": "5c862cafeaf6055b73ba26559769ec4f40e1528c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 153,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantdabca8dd8dc69d3731bd8fdd93e80701355774750e514f978809f2dd8b16ae04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c8410febdb9d19f40e7aa7f35f18d9f732b3d3fee43e399c56d386e2af3de5f8",
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

Occurrence: `declaration:c2a4c6c97d6ad44f70f76b9051e763812188b07ae75be21e4c3270cacd5b0443`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def reflTrans (p : Path x₀ x₁) : Homotopy ((Path.refl x₀).trans p) p :=
  (transRefl p.symm).symm₂.cast (by simp) (by simp)

end TransRefl

section Assoc

/-- Auxiliary function for `trans_assoc_reparam`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantdabca8dd8dc69d3731bd8fdd93e80701355774750e514f978809f2dd8b16ae04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantdabca8dd8dc69d3731bd8fdd93e80701355774750e514f978809f2dd8b16ae04.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c862cafeaf6055b73ba26559769ec4f40e1528c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
