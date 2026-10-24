# congr_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:90ab942d-e5e1-94b9-52c4-1fd7d69c7869",
  "kind": "theorem",
  "lexical_name": "congr_right",
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
  "slug": "congr-right--2db9b711cc6df30e60d2c22e",
  "source": {
    "blob": "bb056b3eb4d9a749861b530e0d72e687c027cec9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 159,
    "path": "GRWTSK/Topology/GeneralTopology/Sym2/Variant68f636343def07ab831b883d5c072268c6cc24bbad52038d144d41198a60ae72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2db9b711cc6df30e60d2c22ead6bc175d1f32443828f4dadbaa4609ca9612e02",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sym2/Variant68f636343def07ab831b883d5c072268c6cc24bbad52038d144d41198a60ae72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90ab942d-e5e1-94b9-52c4-1fd7d69c7869`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem congr_right {a b c : α} : Eq (α := Sym2 α) ⟦(a, b)⟧ ⟦(a, c)⟧ ↔ b = c := by
  constructor <;> intro h
  · rw [Quotient.eq] at h
    cases h <;> rfl
  rw [h]
#align sym2.congr_right Sym2.congr_right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sym2/Variant68f636343def07ab831b883d5c072268c6cc24bbad52038d144d41198a60ae72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sym2/Variant68f636343def07ab831b883d5c072268c6cc24bbad52038d144d41198a60ae72.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb056b3eb4d9a749861b530e0d72e687c027cec9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
