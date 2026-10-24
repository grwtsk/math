# sum_sq_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5474a044-4535-7330-44a8-5cdefc4812bb",
  "kind": "theorem",
  "lexical_name": "sum_sq_pos",
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
  "slug": "sum-sq-pos--01fc7b7fb452f6c0427f37b7",
  "source": {
    "blob": "a55c55e7d1d20d8787dbff46b1b00fc4a5bfedd4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 41,
    "path": "GRWTSK/Algebra/LinearAlgebra/CyclicPhase/Variantf4a9431d17dde11ffd77e41fb2d5c1d2d918d857feb36fd1267a4faea9043464.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01fc7b7fb452f6c0427f37b7d567565bf138833117c0211ac5950932590d2aa4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CyclicPhase/Variantf4a9431d17dde11ffd77e41fb2d5c1d2d918d857feb36fd1267a4faea9043464.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5474a044-4535-7330-44a8-5cdefc4812bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem sum_sq_pos {x : Fin 3 → ℝ} (hx : x≠0) :
    0<x 0^2+x 1^2+x 2^2 := by
  have hs : 0≤x 0^2+x 1^2+x 2^2 := by positivity
  by_contra hn
  have he : x 0^2+x 1^2+x 2^2=0 := by linarith
  have h0 : x 0=0 := by nlinarith [sq_nonneg (x 1),sq_nonneg (x 2)]
  have h1 : x 1=0 := by nlinarith [sq_nonneg (x 0),sq_nonneg (x 2)]
  have h2 : x 2=0 := by nlinarith [sq_nonneg (x 0),sq_nonneg (x 1)]
  apply hx
  ext i
  fin_cases i <;> simp [h0,h1,h2]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CyclicPhase/Variantf4a9431d17dde11ffd77e41fb2d5c1d2d918d857feb36fd1267a4faea9043464.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CyclicPhase/Variantf4a9431d17dde11ffd77e41fb2d5c1d2d918d857feb36fd1267a4faea9043464.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a55c55e7d1d20d8787dbff46b1b00fc4a5bfedd4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
