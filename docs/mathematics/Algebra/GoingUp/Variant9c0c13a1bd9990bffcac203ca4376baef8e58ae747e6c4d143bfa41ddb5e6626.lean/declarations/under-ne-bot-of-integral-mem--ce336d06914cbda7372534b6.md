# under_ne_bot_of_integral_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4242ecf4-e9c1-c30f-7319-a009290d1a67",
  "kind": "theorem",
  "lexical_name": "under_ne_bot_of_integral_mem",
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
  "slug": "under-ne-bot-of-integral-mem--ce336d06914cbda7372534b6",
  "source": {
    "blob": "9c5efd24c06b66490ab5fe0925e39f8795ebcd84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 210,
    "path": "GRWTSK/Algebra/GoingUp/Variant9c0c13a1bd9990bffcac203ca4376baef8e58ae747e6c4d143bfa41ddb5e6626.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce336d06914cbda7372534b672db4af786744d0e58cf3f00f778a7b7444b93b7",
  "verification": {
    "reference": "docs/verification/Algebra/GoingUp/Variant9c0c13a1bd9990bffcac203ca4376baef8e58ae747e6c4d143bfa41ddb5e6626.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4242ecf4-e9c1-c30f-7319-a009290d1a67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem under_ne_bot_of_integral_mem [Nontrivial R] [IsDomain S] {x : S} (x_ne_zero : x ≠ 0)
    (x_mem : x ∈ I) (hx : IsIntegral R x) : I.under R ≠ ⊥ :=
  under_ne_bot_of_algebraic_mem x_ne_zero x_mem hx.isAlgebraic

@[deprecated (since := "2026-09-03")] alias comap_ne_bot_of_integral_mem :=
  under_ne_bot_of_integral_mem

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GoingUp/Variant9c0c13a1bd9990bffcac203ca4376baef8e58ae747e6c4d143bfa41ddb5e6626.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GoingUp/Variant9c0c13a1bd9990bffcac203ca4376baef8e58ae747e6c4d143bfa41ddb5e6626.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c5efd24c06b66490ab5fe0925e39f8795ebcd84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
