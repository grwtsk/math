# monoidHomOfForallMemZpowers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5d2687838b1288b3170ed2eed3becb6dad68285b2117035f771f1611f396d34f",
  "kind": "def",
  "lexical_name": "monoidHomOfForallMemZpowers",
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
  "slug": "monoidhomofforallmemzpowers--f441702527a1e14fea44f163",
  "source": {
    "blob": "ecf625e54b46b367425daf33ac8da34d2308bc83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 796,
    "line": 785,
    "path": "GRWTSK/Algebra/GroupTheory/Cyclic/Variant9cafb2941c1c48fec9b28e4fcec489be3cb504484129154d272a10770a4970ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f441702527a1e14fea44f163bb9468bd85d7e9a6bde834eeb64750b3c14bfd10",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Cyclic/Variant9cafb2941c1c48fec9b28e4fcec489be3cb504484129154d272a10770a4970ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5d2687838b1288b3170ed2eed3becb6dad68285b2117035f771f1611f396d34f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 785–796.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def monoidHomOfForallMemZpowers : G →* G' where
  toFun x := g' ^ (Classical.choose <| mem_zpowers_iff.mp <| hg x)
  map_one' := orderOf_dvd_iff_zpow_eq_one.mp <|
                (Int.natCast_dvd_natCast.mpr hg').trans <| orderOf_dvd_iff_zpow_eq_one.mpr <|
                Classical.choose_spec <| mem_zpowers_iff.mp <| hg 1
  map_mul' x y := by
    simp only [← zpow_add, zpow_eq_zpow_iff_modEq]
    apply Int.ModEq.of_dvd (Int.natCast_dvd_natCast.mpr hg')
    rw [← zpow_eq_zpow_iff_modEq, zpow_add]
    simp only [fun x ↦ Classical.choose_spec <| mem_zpowers_iff.mp <| hg x]

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Cyclic/Variant9cafb2941c1c48fec9b28e4fcec489be3cb504484129154d272a10770a4970ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Cyclic/Variant9cafb2941c1c48fec9b28e4fcec489be3cb504484129154d272a10770a4970ff.lean#L785).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecf625e54b46b367425daf33ac8da34d2308bc83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
