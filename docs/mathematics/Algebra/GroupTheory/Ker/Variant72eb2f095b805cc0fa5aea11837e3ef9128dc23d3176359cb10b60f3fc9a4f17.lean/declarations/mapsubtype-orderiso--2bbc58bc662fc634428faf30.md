# MapSubtype.orderIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:be96179df0c68b04eeb2ee1dc9bd955619dd982ec8ab14b3de57d5ebf413959c",
  "kind": "def",
  "lexical_name": "MapSubtype.orderIso",
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
  "slug": "mapsubtype-orderiso--2bbc58bc662fc634428faf30",
  "source": {
    "blob": "38b2a6e4490e28926948c0188cac9d0921097c9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 545,
    "line": 538,
    "path": "GRWTSK/Algebra/GroupTheory/Ker/Variant72eb2f095b805cc0fa5aea11837e3ef9128dc23d3176359cb10b60f3fc9a4f17.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2bbc58bc662fc634428faf302750fbc46b920e51a04e99c41b9a3da69e0ba751",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Ker/Variant72eb2f095b805cc0fa5aea11837e3ef9128dc23d3176359cb10b60f3fc9a4f17.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:be96179df0c68b04eeb2ee1dc9bd955619dd982ec8ab14b3de57d5ebf413959c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 538–545.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MapSubtype.orderIso (H : Subgroup G) : Subgroup ↥H ≃o { H' : Subgroup G // H' ≤ H } where
  toFun H' := ⟨H'.map H.subtype, map_subtype_le H'⟩
  invFun sH' := sH'.1.subgroupOf H
  left_inv H' := comap_map_eq_self_of_injective H.subtype_injective H'
  right_inv sH' := Subtype.ext (map_subgroupOf_eq_of_le sH'.2)
  map_rel_iff' := by simp

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Ker/Variant72eb2f095b805cc0fa5aea11837e3ef9128dc23d3176359cb10b60f3fc9a4f17.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Ker/Variant72eb2f095b805cc0fa5aea11837e3ef9128dc23d3176359cb10b60f3fc9a4f17.lean#L538).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38b2a6e4490e28926948c0188cac9d0921097c9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
