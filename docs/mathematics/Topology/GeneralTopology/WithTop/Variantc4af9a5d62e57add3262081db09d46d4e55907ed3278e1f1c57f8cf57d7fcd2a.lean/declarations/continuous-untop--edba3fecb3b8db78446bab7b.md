# continuous_untop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ced80c68-39f5-f4cd-f5df-6bf12c5248a1",
  "kind": "lemma",
  "lexical_name": "continuous_untop",
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
  "slug": "continuous-untop--edba3fecb3b8db78446bab7b",
  "source": {
    "blob": "9c0d607bd6e09c1bef06613328ac69db8cb8bc6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 246,
    "path": "GRWTSK/Topology/GeneralTopology/WithTop/Variantc4af9a5d62e57add3262081db09d46d4e55907ed3278e1f1c57f8cf57d7fcd2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:edba3fecb3b8db78446bab7b1ae392de0bac8af3cf6a489dc6ae4c2dcd5db2ff",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/WithTop/Variantc4af9a5d62e57add3262081db09d46d4e55907ed3278e1f1c57f8cf57d7fcd2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ced80c68-39f5-f4cd-f5df-6bf12c5248a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma continuous_untop : Continuous (fun x : {a : WithTop ι | a ≠ ⊤} ↦ untop x.1 x.2) :=
  continuous_iff_continuousAt.mpr tendsto_untop

end ContinuousUnTop

variable (ι) in
/-- Homeomorphism between the non-top elements of `WithTop ι` and `ι`. -/
@[to_dual /-- Homeomorphism between the non-bot elements of `WithBot ι` and `ι`. -/]
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/WithTop/Variantc4af9a5d62e57add3262081db09d46d4e55907ed3278e1f1c57f8cf57d7fcd2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/WithTop/Variantc4af9a5d62e57add3262081db09d46d4e55907ed3278e1f1c57f8cf57d7fcd2a.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c0d607bd6e09c1bef06613328ac69db8cb8bc6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
