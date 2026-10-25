# TM2ComputableInPolyTime.toTM2ComputableInTime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7d99253624fb58aeef81dd92266dd095c7bb5106c8831ecef850f6da3af0c4c5",
  "kind": "def",
  "lexical_name": "TM2ComputableInPolyTime.toTM2ComputableInTime",
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
  "slug": "tm2computableinpolytime-totm2computableintime--7cb36b2702e44e0e30d16114",
  "source": {
    "blob": "75e0b611a992986ee8abc6a43e931c3d756138e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 233,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantd4f8578af80b41bf00528a0a7a4d226d6edc3a552338b87fe41871a28c085f3a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7cb36b2702e44e0e30d16114fbdf6a3d1686ea7349a05671fda36c8da6dbbcbf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantd4f8578af80b41bf00528a0a7a4d226d6edc3a552338b87fe41871a28c085f3a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7d99253624fb58aeef81dd92266dd095c7bb5106c8831ecef850f6da3af0c4c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def TM2ComputableInPolyTime.toTM2ComputableInTime {α β : Type} {ea : FinEncoding α}
    {eb : FinEncoding β} {f : α → β} (h : TM2ComputableInPolyTime ea eb f) :
    TM2ComputableInTime ea eb f :=
  ⟨h.toTM2ComputableAux, fun n => h.time.eval n, h.outputsFun⟩
#align turing.tm2_computable_in_poly_time.to_tm2_computable_in_time Turing.TM2ComputableInPolyTime.toTM2ComputableInTime

open Turing.TM2.Stmt

/-- A Turing machine computing the identity on α. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantd4f8578af80b41bf00528a0a7a4d226d6edc3a552338b87fe41871a28c085f3a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantd4f8578af80b41bf00528a0a7a4d226d6edc3a552338b87fe41871a28c085f3a.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75e0b611a992986ee8abc6a43e931c3d756138e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
