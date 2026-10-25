# add_le_nadd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63091ed0-15aa-713a-3d86-cd429f3c5172",
  "kind": "theorem",
  "lexical_name": "add_le_nadd",
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
  "slug": "add-le-nadd--2ef73f2092e4ca42a23a025e",
  "source": {
    "blob": "dfffb893618a15661cbc35a1893a585cb3fe9439",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 334,
    "line": 319,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/NaturalOps/Variant94f5a3b1c6567d275ebd370c862394de58c6feba29fb5efa5f85d558e097ffed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ef73f2092e4ca42a23a025ea6a93dcf3f36c27bab9ae75e0a136a8bf0a1bc77",
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

Occurrence: `result:63091ed0-15aa-713a-3d86-cd429f3c5172`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 319–334.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem add_le_nadd : a + b ≤ a ♯ b := by
  induction b using limitRecOn with
  | zero => simp
  | succ c h =>
    rwa [add_succ, nadd_succ, succ_le_succ_iff]
  | isLimit c hc H =>
    rw [(isNormal_add_right a).apply_of_isLimit hc, Ordinal.iSup_le_iff]
    rintro ⟨i, hi⟩
    exact (H i hi).trans (nadd_le_nadd_left hi.le a)

end Ordinal

namespace NatOrdinal

open Ordinal NaturalOps

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/NaturalOps/Variant94f5a3b1c6567d275ebd370c862394de58c6feba29fb5efa5f85d558e097ffed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/NaturalOps/Variant94f5a3b1c6567d275ebd370c862394de58c6feba29fb5efa5f85d558e097ffed.lean#L319).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dfffb893618a15661cbc35a1893a585cb3fe9439` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
