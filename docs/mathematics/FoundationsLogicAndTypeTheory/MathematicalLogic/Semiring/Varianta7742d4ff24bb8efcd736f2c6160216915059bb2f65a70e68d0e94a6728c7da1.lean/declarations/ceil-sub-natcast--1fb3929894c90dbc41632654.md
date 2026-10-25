# ceil_sub_natCast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:189ff61a-2f0f-ffd3-f902-3cc0407217c4",
  "kind": "lemma",
  "lexical_name": "ceil_sub_natCast",
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
  "slug": "ceil-sub-natcast--1fb3929894c90dbc41632654",
  "source": {
    "blob": "fb14cdd1b7a2f5d5ae3e9e83049adfeec2a58690",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 358,
    "line": 352,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiring/Varianta7742d4ff24bb8efcd736f2c6160216915059bb2f65a70e68d0e94a6728c7da1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1fb3929894c90dbc416326540a0be78aafeab06b7a6390e1ae42999fbe6dc78a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiring/Varianta7742d4ff24bb8efcd736f2c6160216915059bb2f65a70e68d0e94a6728c7da1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:189ff61a-2f0f-ffd3-f902-3cc0407217c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 352–358.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma ceil_sub_natCast (a : R) (n : ℕ) : ⌈a - n⌉₊ = ⌈a⌉₊ - n := by
  obtain han | hna := le_total a n
  · rwa [ceil_eq_zero.2 (tsub_nonpos_of_le han), eq_comm, tsub_eq_zero_iff_le, Nat.ceil_le]
  · refine eq_tsub_of_add_eq ?_
    rw [← ceil_add_natCast, tsub_add_cancel_of_le hna]
    exact le_tsub_of_add_le_left ((add_zero _).trans_le hna)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiring/Varianta7742d4ff24bb8efcd736f2c6160216915059bb2f65a70e68d0e94a6728c7da1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Semiring/Varianta7742d4ff24bb8efcd736f2c6160216915059bb2f65a70e68d0e94a6728c7da1.lean#L352).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb14cdd1b7a2f5d5ae3e9e83049adfeec2a58690` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
