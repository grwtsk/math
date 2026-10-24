# compRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2089da7faae0cda37eddfd6cd6b6f17b063fdc174f99cfc0c5acd3b48e1c5159",
  "kind": "def",
  "lexical_name": "compRight",
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
  "slug": "compright--9aa8a119561a7d4dd0bc7780",
  "source": {
    "blob": "0b7449391bbab1cb50ca2bf2e15646e034ac7dc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 130,
    "path": "GRWTSK/Topology/GeneralTopology/CompactOpen/Variant066152b887cd8a830f1b7acb8bc1ecf9a3af429b76766d2a9077c01123e637ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9aa8a119561a7d4dd0bc77808f8b2fdb56c2cb40af6f6852941fb383a091ce83",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactOpen/Variant066152b887cd8a830f1b7acb8bc1ecf9a3af429b76766d2a9077c01123e637ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2089da7faae0cda37eddfd6cd6b6f17b063fdc174f99cfc0c5acd3b48e1c5159`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compRight {B : Type*} [CommGroup B] [TopologicalSpace B] [IsTopologicalGroup B]
    (f : ContinuousMonoidHom B E) :
    ContinuousMonoidHom (ContinuousMonoidHom A B) (ContinuousMonoidHom A E) where
  toFun g := f.comp g
  map_one' := ext fun _a => map_one f
  map_mul' g h := ext fun a => map_mul f (g a) (h a)
  continuous_toFun := f.continuous_comp_right

section DiscreteTopology
variable [DiscreteTopology A] [ContinuousMul B] [T2Space B]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactOpen/Variant066152b887cd8a830f1b7acb8bc1ecf9a3af429b76766d2a9077c01123e637ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactOpen/Variant066152b887cd8a830f1b7acb8bc1ecf9a3af429b76766d2a9077c01123e637ed.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b7449391bbab1cb50ca2bf2e15646e034ac7dc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
