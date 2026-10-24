# finite_of_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af7cb0c8-4c0f-c3da-5d29-e04e92c6c542",
  "kind": "theorem",
  "lexical_name": "finite_of_injective",
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
  "slug": "finite-of-injective--efe7b834ec3bd6afc1c7ce2c",
  "source": {
    "blob": "6f6750c538e50bc8b80418211303f4b260632e22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 268,
    "path": "GRWTSK/Algebra/GroupTheory/Sylow/Varianta396821911715b1ed879ce045882eb101ec50bc9c73941bb3ef50c761a512ef5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:efe7b834ec3bd6afc1c7ce2c5f1200607dd27dd9f24c1fd54c88ec0dbe3a5a28",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Sylow/Varianta396821911715b1ed879ce045882eb101ec50bc9c73941bb3ef50c761a512ef5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af7cb0c8-4c0f-c3da-5d29-e04e92c6c542`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_of_injective {H : Type*} [Group H] {f : H →* G}
    (hf : Function.Injective f) [Finite (Sylow p G)] : Finite (Sylow p H) :=
  finite_of_ker_is_pGroup (IsPGroup.ker_isPGroup_of_injective hf)

/-- If `H` is a subgroup of `G`, then `Finite (Sylow p G)` implies `Finite (Sylow p H)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Sylow/Varianta396821911715b1ed879ce045882eb101ec50bc9c73941bb3ef50c761a512ef5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Sylow/Varianta396821911715b1ed879ce045882eb101ec50bc9c73941bb3ef50c761a512ef5.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f6750c538e50bc8b80418211303f4b260632e22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
