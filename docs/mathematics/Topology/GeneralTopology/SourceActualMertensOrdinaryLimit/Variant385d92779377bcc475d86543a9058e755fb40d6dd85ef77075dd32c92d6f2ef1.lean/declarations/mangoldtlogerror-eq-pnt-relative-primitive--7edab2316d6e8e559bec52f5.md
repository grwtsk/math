# mangoldtLogError_eq_pnt_relative_primitive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:14d59a09-819a-9386-8f1f-2ac874036428",
  "kind": "theorem",
  "lexical_name": "mangoldtLogError_eq_pnt_relative_primitive",
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
  "slug": "mangoldtlogerror-eq-pnt-relative-primitive--7edab2316d6e8e559bec52f5",
  "source": {
    "blob": "c437547c7b01ca48a36fa098d46351ad747e5e96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 33,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualMertensOrdinaryLimit/Variant385d92779377bcc475d86543a9058e755fb40d6dd85ef77075dd32c92d6f2ef1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7edab2316d6e8e559bec52f5a90523f670768f8e0762ee931a9e33080877954f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualMertensOrdinaryLimit/Variant385d92779377bcc475d86543a9058e755fb40d6dd85ef77075dd32c92d6f2ef1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14d59a09-819a-9386-8f1f-2ac874036428`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mangoldtLogError_eq_pnt_relative_primitive {t : ℝ} (ht : 0 ≤ t) :
    mangoldtLogError t = 1 + SourceActualPsiPntTimeDecay.actualRelativePsiTimeError t +
      ∫ r in 0..t, SourceActualPsiPntTimeDecay.actualRelativePsiTimeError r := by
  rw [SourceActualPsiErrorTimeNormalization.mangoldtLogError_eq_relative_primitive ht]
  simp only [actualRelativePsiTimeError_eq_pnt_error]

/-- Full actual positive-time L1 gives a genuine ordinary primitive limit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualMertensOrdinaryLimit/Variant385d92779377bcc475d86543a9058e755fb40d6dd85ef77075dd32c92d6f2ef1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualMertensOrdinaryLimit/Variant385d92779377bcc475d86543a9058e755fb40d6dd85ef77075dd32c92d6f2ef1.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c437547c7b01ca48a36fa098d46351ad747e5e96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
