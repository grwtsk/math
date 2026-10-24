# MeromorphicOn.circleIntegrable_log_norm_of_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3dc4176c-f18e-8e3e-9ed6-44e8d59b28c7",
  "kind": "theorem",
  "lexical_name": "MeromorphicOn.circleIntegrable_log_norm_of_nonneg",
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
  "slug": "meromorphicon-circleintegrable-log-norm-of-nonneg--a62e5dde7f0b6349d2883d5f",
  "source": {
    "blob": "fafe191204e54d6cb1317536e05416b2747721b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 182,
    "path": "GRWTSK/Analysis/LogMeromorphic/Variant4212ddac3147f6a20a8ddd9a0edaf300d93c9a8eadad207ca51bc04bddd57b4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a62e5dde7f0b6349d2883d5f00cff697a54e882eb8b12e87778e2f7ebf47e412",
  "verification": {
    "reference": "docs/verification/Analysis/LogMeromorphic/Variant4212ddac3147f6a20a8ddd9a0edaf300d93c9a8eadad207ca51bc04bddd57b4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3dc4176c-f18e-8e3e-9ed6-44e8d59b28c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MeromorphicOn.circleIntegrable_log_norm_of_nonneg (hf : MeromorphicOn f (sphere c R))
    (hR : 0 ≤ R) :
    CircleIntegrable (log ‖f ·‖) c R := by
  rw [← abs_of_nonneg hR] at hf
  exact hf.circleIntegrable_log_norm

@[deprecated (since := "2026-03-28")]
alias circleIntegrable_log_norm_meromorphicOn_of_nonneg :=
    MeromorphicOn.circleIntegrable_log_norm_of_nonneg

/--
Variant of `MeromorphicOn.circleIntegrable_log_norm` for factorized rational functions.
-/
@[fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/LogMeromorphic/Variant4212ddac3147f6a20a8ddd9a0edaf300d93c9a8eadad207ca51bc04bddd57b4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/LogMeromorphic/Variant4212ddac3147f6a20a8ddd9a0edaf300d93c9a8eadad207ca51bc04bddd57b4a.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fafe191204e54d6cb1317536e05416b2747721b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
