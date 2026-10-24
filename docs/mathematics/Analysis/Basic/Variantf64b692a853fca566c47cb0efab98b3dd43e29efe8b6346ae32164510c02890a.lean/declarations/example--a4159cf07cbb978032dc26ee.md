# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:07573c6358525eee2c992eae89b5af01de0af19eab75b90c75d5f06afcffe33c",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--a4159cf07cbb978032dc26ee",
  "source": {
    "blob": "2060e8372f1bbdec007158f23ed3d507e6a8e8af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 125,
    "path": "GRWTSK/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a4159cf07cbb978032dc26ee0936015852e9e211be788f068338cfb314a31fcf",
  "verification": {
    "reference": "docs/verification/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:07573c6358525eee2c992eae89b5af01de0af19eab75b90c75d5f06afcffe33c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example {f : ℂ → ℂ} {z w : ℂ} {s r c e : ℝ}
      (sc : ∀ {w}, ‖w - z‖ < s → ‖f w - f z‖ < e) (wz : ‖w - z‖ < s) (wr : ‖w‖ < r)
      (h : ∀ z : ℂ, ‖z‖ < r → ‖f z‖ ≤ c * ‖z‖) :
      ‖f z‖ ≤ c * ‖w‖ + e := by
  calc ‖f z‖ = ‖f w - (f w - f z)‖ := by ring_nf
    _ ≤ ‖f w‖ + ‖f w - f z‖ := by bound
    _ ≤ c * ‖w‖+ e := by bound [h w wr, sc wz]

-- A test that requires reduction to weak head normal form to work (surfaced by `Hartogs.lean`)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2060e8372f1bbdec007158f23ed3d507e6a8e8af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
