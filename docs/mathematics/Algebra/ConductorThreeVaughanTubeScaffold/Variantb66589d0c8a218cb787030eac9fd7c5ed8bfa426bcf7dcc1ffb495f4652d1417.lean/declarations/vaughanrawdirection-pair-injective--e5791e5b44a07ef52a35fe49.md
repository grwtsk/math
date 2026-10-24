# vaughanRawDirection_pair_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9a7cb4c6734927f108bb30f52450b693abe982d1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b66589d0c8a218cb787030eac9fd7c5ed8bfa426bcf7dcc1ffb495f4652d1417.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cccab118-c7a0-fc17-a497-ef8461e7df64",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bb1bc7c8-0df4-32c5-3fdf-e2a22546bf9b",
  "kind": "theorem",
  "lexical_name": "vaughanRawDirection_pair_injective",
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
  "slug": "vaughanrawdirection-pair-injective--e5791e5b44a07ef52a35fe49",
  "source": {
    "blob": "9a7cb4c6734927f108bb30f52450b693abe982d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 89,
    "path": "GRWTSK/Algebra/ConductorThreeVaughanTubeScaffold/Variantb66589d0c8a218cb787030eac9fd7c5ed8bfa426bcf7dcc1ffb495f4652d1417.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5791e5b44a07ef52a35fe49d9221e65c1a14d5c2182015abda322ef7e4f3aeb",
  "verification": {
    "reference": "docs/verification/Algebra/ConductorThreeVaughanTubeScaffold/Variantb66589d0c8a218cb787030eac9fd7c5ed8bfa426bcf7dcc1ffb495f4652d1417.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb1bc7c8-0df4-32c5-3fdf-e2a22546bf9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem vaughanRawDirection_pair_injective (N : ℕ) :
    Function.Injective
      (fun pair : ℕ × ℕ ↦ vaughanRawDirection N pair.1 pair.2) := by
  intro pair pair' hpair
  apply Prod.ext
  · have hcoord := congrArg (fun x : SpatialPoint ↦ x (0 : Fin 3)) hpair
    simp [vaughanRawDirection, vaughanDirectionU] at hcoord
    have hden : (2 * (vaughanDirectionScale N : ℝ)) ≠ 0 := by
      have hscale : (0 : ℝ) < vaughanDirectionScale N := by
        exact_mod_cast vaughanDirectionScale_pos N
      positivity
    have hdiv : (pair.1 : ℝ) / (2 * vaughanDirectionScale N) =
        (pair'.1 : ℝ) / (2 * vaughanDirectionScale N) := by
      linarith
    have hcast : (pair.1 : ℝ) = pair'.1 :=
      (div_left_inj' hden).mp hdiv
    exact_mod_cast hcast
  · have hcoord := congrArg (fun x : SpatialPoint ↦ x (1 : Fin 3)) hpair
    simp [vaughanRawDirection, vaughanDirectionV] at hcoord
    have hden : (2 * (vaughanDirectionScale N : ℝ)) ≠ 0 := by
      have hscale : (0 : ℝ) < vaughanDirectionScale N := by
        exact_mod_cast vaughanDirectionScale_pos N
      positivity
    have hdiv : (pair.2 : ℝ) / (2 * vaughanDirectionScale N) =
        (pair'.2 : ℝ) / (2 * vaughanDirectionScale N) := by
      linarith
    have hcast : (pair.2 : ℝ) = pair'.2 :=
      (div_left_inj' hden).mp hdiv
    exact_mod_cast hcast

/-- Unit direction attached to a factor pair. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ConductorThreeVaughanTubeScaffold/Variantb66589d0c8a218cb787030eac9fd7c5ed8bfa426bcf7dcc1ffb495f4652d1417.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ConductorThreeVaughanTubeScaffold/Variantb66589d0c8a218cb787030eac9fd7c5ed8bfa426bcf7dcc1ffb495f4652d1417.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a7cb4c6734927f108bb30f52450b693abe982d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
