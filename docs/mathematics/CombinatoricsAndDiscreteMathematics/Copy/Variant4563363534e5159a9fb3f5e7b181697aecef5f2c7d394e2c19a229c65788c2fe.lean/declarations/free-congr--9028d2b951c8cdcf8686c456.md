# free_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9ca0e48dce318e670326b6dcb49a58451fa78411",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 377,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/4563363534e5159a9fb3f5e7b181697aecef5f2c7d394e2c19a229c65788c2fe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ceede38a-5d32-ce98-8197-c06f8d165172",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c5e88561-a9cd-9935-9f70-1543387785d1",
  "kind": "theorem",
  "lexical_name": "free_congr",
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
  "slug": "free-congr--9028d2b951c8cdcf8686c456",
  "source": {
    "blob": "9ca0e48dce318e670326b6dcb49a58451fa78411",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 380,
    "line": 377,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Copy/Variant4563363534e5159a9fb3f5e7b181697aecef5f2c7d394e2c19a229c65788c2fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9028d2b951c8cdcf8686c4566caf4b6d893d19bbe5bd698f491623bf6866ed11",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Copy/Variant4563363534e5159a9fb3f5e7b181697aecef5f2c7d394e2c19a229c65788c2fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5e88561-a9cd-9935-9f70-1543387785d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 377–380.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem free_congr {V' W' : Type*} {G' : SimpleGraph V'} {H' : SimpleGraph W'}
    (e₁ : H ≃g H') (e₂ : G ≃g G') : H.Free G ↔ H'.Free G' :=
  (isContained_congr e₁ e₂).not

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Copy/Variant4563363534e5159a9fb3f5e7b181697aecef5f2c7d394e2c19a229c65788c2fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Copy/Variant4563363534e5159a9fb3f5e7b181697aecef5f2c7d394e2c19a229c65788c2fe.lean#L377).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ca0e48dce318e670326b6dcb49a58451fa78411` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
