# convs'Aux_stable_of_terminated

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f2405467d8aa7d8bf01da4ce3295040ee209dd5f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 55,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e7e430211168ff240d375691dae3fa613ba39cf852b24028d7a47fcfa0dd0bdf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:16ab602c-272e-9346-e045-4afdabc75dde",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5002256b-7dcc-5552-4efd-f8c18567f542",
  "kind": "theorem",
  "lexical_name": "convs'Aux_stable_of_terminated",
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
  "slug": "convs-aux-stable-of-terminated--ae03dc1f666117bb94e70b77",
  "source": {
    "blob": "f2405467d8aa7d8bf01da4ce3295040ee209dd5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 55,
    "path": "GRWTSK/Algebra/UniversalAlgebra/TerminatedStable/Variante7e430211168ff240d375691dae3fa613ba39cf852b24028d7a47fcfa0dd0bdf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae03dc1f666117bb94e70b7756190d1407e75a700d5d8217840b268769ecbe14",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/TerminatedStable/Variante7e430211168ff240d375691dae3fa613ba39cf852b24028d7a47fcfa0dd0bdf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5002256b-7dcc-5552-4efd-f8c18567f542`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem convs'Aux_stable_of_terminated {s : Stream'.Seq <| Pair K} (n_le_m : n ≤ m)
    (terminatedAt_n : s.TerminatedAt n) : convs'Aux s m = convs'Aux s n := by
  induction n_le_m with
  | refl => rfl
  | step n_le_m IH =>
    refine (convs'Aux_stable_step_of_terminated (?_)).trans IH
    exact s.terminated_stable n_le_m terminatedAt_n

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/TerminatedStable/Variante7e430211168ff240d375691dae3fa613ba39cf852b24028d7a47fcfa0dd0bdf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/TerminatedStable/Variante7e430211168ff240d375691dae3fa613ba39cf852b24028d7a47fcfa0dd0bdf.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2405467d8aa7d8bf01da4ce3295040ee209dd5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
