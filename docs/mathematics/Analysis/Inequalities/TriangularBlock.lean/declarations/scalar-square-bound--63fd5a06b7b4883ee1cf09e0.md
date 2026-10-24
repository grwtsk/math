# scalar_square_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e67aa422-4757-c6e5-ce74-fc57a20a95db",
  "kind": "theorem",
  "lexical_name": "scalar_square_bound",
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
  "slug": "scalar-square-bound--63fd5a06b7b4883ee1cf09e0",
  "source": {
    "blob": "98d1ea63e5c7f4dfae99c8fe386b7f6bd77296c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 26,
    "path": "GRWTSK/Analysis/Inequalities/TriangularBlock.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63fd5a06b7b4883ee1cf09e08b4525be9a293cdcb8b47ffba926d0903100e565",
  "verification": {
    "reference": "docs/verification/Analysis/Inequalities/TriangularBlock.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e67aa422-4757-c6e5-ce74-fc57a20a95db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scalar_square_bound {a b k : ℝ} (hb : 0 ≤ b) (hk : 0 < k)
    (hroot : k^2 = b*k+a^2) (x y : ℝ) :
    (a*x)^2+(b*x+a*y)^2 ≤ k^2*(x^2+y^2) := by
  have hid :
      k*(k^2*(x^2+y^2)-((a*x)^2+(b*x+a*y)^2)) - b*(a*x-k*y)^2 =
        (k^2-b*k-a^2)*((k+b)*x^2+k*y^2) := by ring
  have hz : k^2-b*k-a^2 = 0 := by linarith
  rw [hz, zero_mul] at hid
  have hnon := mul_nonneg hb (sq_nonneg (a*x-k*y))
  have hp : 0 ≤ k*(k^2*(x^2+y^2)-((a*x)^2+(b*x+a*y)^2)) := by linarith
  have hd := nonneg_of_mul_nonneg_left hp hk
  linarith

/-- This includes a=0 and b=0, rather than dividing by a zero diagonal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Inequalities/TriangularBlock.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Inequalities/TriangularBlock.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98d1ea63e5c7f4dfae99c8fe386b7f6bd77296c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
