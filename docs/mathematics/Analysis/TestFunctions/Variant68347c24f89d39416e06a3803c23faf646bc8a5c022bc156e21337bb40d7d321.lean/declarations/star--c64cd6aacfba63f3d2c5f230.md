# star

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7def711c3da1741e5eca856524ff736665af4d59ebc28a6a9c35d17bf8de7125",
  "kind": "def",
  "lexical_name": "star",
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
  "slug": "star--c64cd6aacfba63f3d2c5f230",
  "source": {
    "blob": "1bb940703b56fcadeb174e7fb412eae6f23513fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 80,
    "path": "GRWTSK/Analysis/TestFunction/Variant68347c24f89d39416e06a3803c23faf646bc8a5c022bc156e21337bb40d7d321.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c64cd6aacfba63f3d2c5f2304df83b6eb4651b8f53eb47a4b05af0642202d168",
  "verification": {
    "reference": "docs/verification/Analysis/TestFunctions/Variant68347c24f89d39416e06a3803c23faf646bc8a5c022bc156e21337bb40d7d321.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7def711c3da1741e5eca856524ff736665af4d59ebc28a6a9c35d17bf8de7125`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def star (g : PrimitiveWeilTestFunction) : PrimitiveWeilTestFunction where
  toFun := fun x ↦ conj (g (-x))
  smooth := by
    exact Complex.conjCLE.contDiff.comp
      (g.smooth.comp (contDiff_neg contDiff_id))
  supportRadius := g.supportRadius
  supportRadius_nonneg := g.supportRadius_nonneg
  support_subset := by
    intro x hx
    have hneg : g (-x) ≠ 0 := by
      intro hzero
      exact hx (by simp [hzero])
    have hbounds := g.support_subset hneg
    constructor <;> linarith

@[surface_adapter, simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/TestFunctions/Variant68347c24f89d39416e06a3803c23faf646bc8a5c022bc156e21337bb40d7d321.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/TestFunction/Variant68347c24f89d39416e06a3803c23faf646bc8a5c022bc156e21337bb40d7d321.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bb940703b56fcadeb174e7fb412eae6f23513fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
