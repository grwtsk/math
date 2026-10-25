# nmul_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:45b4645f-31c6-8e4f-d1ff-5731022272b2",
  "kind": "theorem",
  "lexical_name": "nmul_zero",
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
  "slug": "nmul-zero--abd7bd919e4a6da43a1be5f2",
  "source": {
    "blob": "dfffb893618a15661cbc35a1893a585cb3fe9439",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 526,
    "line": 522,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/NaturalOps/Variant94f5a3b1c6567d275ebd370c862394de58c6feba29fb5efa5f85d558e097ffed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:abd7bd919e4a6da43a1be5f231a6f7f44865cec1e4f938fbf25949a9af0bd83e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/NaturalOps/Variant94f5a3b1c6567d275ebd370c862394de58c6feba29fb5efa5f85d558e097ffed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45b4645f-31c6-8e4f-d1ff-5731022272b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 522–526.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nmul_zero (a) : a ⨳ 0 = 0 := by
  rw [← Ordinal.le_zero, nmul_le_iff]
  exact fun _ _ a ha => (Ordinal.not_lt_zero a ha).elim

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/NaturalOps/Variant94f5a3b1c6567d275ebd370c862394de58c6feba29fb5efa5f85d558e097ffed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/NaturalOps/Variant94f5a3b1c6567d275ebd370c862394de58c6feba29fb5efa5f85d558e097ffed.lean#L522).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dfffb893618a15661cbc35a1893a585cb3fe9439` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
