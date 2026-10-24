# selmerGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1f34b69f77513bdb6db23f204c99587834ad1129524dc9c96f37bfca85dab416",
  "kind": "def",
  "lexical_name": "selmerGroup",
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
  "slug": "selmergroup--0d1786a68712f3d20ac3b6b6",
  "source": {
    "blob": "61b8af6368c643baf541a6c8e8c9c62caba000a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 170,
    "path": "GRWTSK/Algebra/GroupTheory/SelmerGroup/Variant451727eb33444e068dd3edbecf7fe5c0f9770cc641f0bb456d17b8063afd20d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0d1786a68712f3d20ac3b6b6773b4e2dc88f14bf2c3e95c26b59e07e7c5c0c4f",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/SelmerGroup/Variant451727eb33444e068dd3edbecf7fe5c0f9770cc641f0bb456d17b8063afd20d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1f34b69f77513bdb6db23f204c99587834ad1129524dc9c96f37bfca85dab416`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def selmerGroup : Subgroup <| K/n where
  carrier := {x : K/n | ∀ (v) (_ : v ∉ S), (v : HeightOneSpectrum R).valuationOfNeZeroMod n x = 1}
  one_mem' _ _ := by rw [map_one]
  mul_mem' hx hy v hv := by rw [map_mul, hx v hv, hy v hv, one_mul]
  inv_mem' hx v hv := by rw [map_inv, hx v hv, inv_one]

-- Porting note: was `scoped[SelmerGroup]` but that does not work even using `open SelmerGroup`
local notation K "⟮" S "," n "⟯" => @selmerGroup _ _ _ K _ _ _ S n

namespace selmerGroup

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/SelmerGroup/Variant451727eb33444e068dd3edbecf7fe5c0f9770cc641f0bb456d17b8063afd20d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/SelmerGroup/Variant451727eb33444e068dd3edbecf7fe5c0f9770cc641f0bb456d17b8063afd20d4.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61b8af6368c643baf541a6c8e8c9c62caba000a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
