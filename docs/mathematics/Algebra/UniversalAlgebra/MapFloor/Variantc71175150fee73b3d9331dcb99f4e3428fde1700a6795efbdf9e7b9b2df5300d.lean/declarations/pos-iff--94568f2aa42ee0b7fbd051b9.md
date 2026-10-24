# pos_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3e7f8eca-b5ba-6b6c-101c-364e5df34a92",
  "kind": "theorem",
  "lexical_name": "pos_iff",
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
  "slug": "pos-iff--94568f2aa42ee0b7fbd051b9",
  "source": {
    "blob": "4a383db60fc474178f63ee8c81d557ad7ad713f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 82,
    "path": "GRWTSK/Algebra/UniversalAlgebra/MapFloor/Variantc71175150fee73b3d9331dcb99f4e3428fde1700a6795efbdf9e7b9b2df5300d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94568f2aa42ee0b7fbd051b982bed9d2e9bb08bf37db371bf7f4246624a95555",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/MapFloor/Variantc71175150fee73b3d9331dcb99f4e3428fde1700a6795efbdf9e7b9b2df5300d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e7f8eca-b5ba-6b6c-101c-364e5df34a92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pos_iff {p : ℤ[ε]} : 0 < p ↔ 0 < p.trailingCoeff := by
  rw [trailingCoeff]
  refine
    ⟨?_, fun h =>
      ⟨p.natTrailingDegree, fun m hm => (coeff_eq_zero_of_lt_natTrailingDegree hm).symm, h⟩⟩
  rintro ⟨n, hn⟩
  convert hn.2
  exact (natTrailingDegree_le_of_ne_zero hn.2.ne').antisymm
    (le_natTrailingDegree (by rintro rfl; cases hn.2.false) fun m hm => (hn.1 _ hm).symm)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/MapFloor/Variantc71175150fee73b3d9331dcb99f4e3428fde1700a6795efbdf9e7b9b2df5300d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/MapFloor/Variantc71175150fee73b3d9331dcb99f4e3428fde1700a6795efbdf9e7b9b2df5300d.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a383db60fc474178f63ee8c81d557ad7ad713f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
