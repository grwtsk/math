# add_tsub_tsub_cancel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8360203d-d986-a30c-d054-3b667eaaa83d",
  "kind": "theorem",
  "lexical_name": "add_tsub_tsub_cancel",
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
  "slug": "add-tsub-tsub-cancel--f9b96e3d6c3a7d3bbb467567",
  "source": {
    "blob": "c3adcef18088bc9179bd47c28c51dee8772f4322",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 190,
    "path": "GRWTSK/Algebra/GroupTheory/Canonical/Varianta8b25be65d0c797393057996682096928efe06dbb652550384db4c9b46fea567.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9b96e3d6c3a7d3bbb467567a6a9108b420090fbc8e52ed6d0f6181a8cf2109a",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Canonical/Varianta8b25be65d0c797393057996682096928efe06dbb652550384db4c9b46fea567.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8360203d-d986-a30c-d054-3b667eaaa83d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem add_tsub_tsub_cancel (hac : AddLECancellable (a - c)) (h : c ≤ a) :
    a + b - (a - c) = b + c :=
  hac.tsub_eq_of_eq_add <| by rw [add_assoc, add_tsub_cancel_of_le h, add_comm]
#align add_le_cancellable.add_tsub_tsub_cancel AddLECancellable.add_tsub_tsub_cancel

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Canonical/Varianta8b25be65d0c797393057996682096928efe06dbb652550384db4c9b46fea567.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Canonical/Varianta8b25be65d0c797393057996682096928efe06dbb652550384db4c9b46fea567.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3adcef18088bc9179bd47c28c51dee8772f4322` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
