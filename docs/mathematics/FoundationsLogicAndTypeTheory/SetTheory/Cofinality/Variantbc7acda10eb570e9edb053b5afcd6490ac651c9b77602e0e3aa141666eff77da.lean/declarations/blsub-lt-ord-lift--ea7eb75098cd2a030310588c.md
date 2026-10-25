# blsub_lt_ord_lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:22a84dee-06b4-ba55-7af0-0ad23f9dbdf4",
  "kind": "theorem",
  "lexical_name": "blsub_lt_ord_lift",
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
  "slug": "blsub-lt-ord-lift--ea7eb75098cd2a030310588c",
  "source": {
    "blob": "91dc1cb0e2e93f5c35363983ae9ddf88f9b5ddf3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 453,
    "line": 448,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cofinality/Variantbc7acda10eb570e9edb053b5afcd6490ac651c9b77602e0e3aa141666eff77da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea7eb75098cd2a030310588c6f61722dd0fbb28657e80c64165bb43dee6a2f5a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Cofinality/Variantbc7acda10eb570e9edb053b5afcd6490ac651c9b77602e0e3aa141666eff77da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22a84dee-06b4-ba55-7af0-0ad23f9dbdf4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 448–453.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem blsub_lt_ord_lift {o : Ordinal.{u}} {f : ∀ a < o, Ordinal} {c : Ordinal}
    (ho : Cardinal.lift.{v, u} o.card < c.cof) (hf : ∀ i hi, f i hi < c) : blsub.{u, v} o f < c :=
  lt_of_le_of_ne (blsub_le hf) fun h =>
    ho.not_le (by simpa [← iSup_ord, hf, h] using cof_blsub_le_lift.{u, v} f)
#align ordinal.blsub_lt_ord_lift Ordinal.blsub_lt_ord_lift

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Cofinality/Variantbc7acda10eb570e9edb053b5afcd6490ac651c9b77602e0e3aa141666eff77da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cofinality/Variantbc7acda10eb570e9edb053b5afcd6490ac651c9b77602e0e3aa141666eff77da.lean#L448).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91dc1cb0e2e93f5c35363983ae9ddf88f9b5ddf3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
