# hasSum_full_centered_taylor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ceb816d6-386e-0569-3fe5-2ce47720b983",
  "kind": "theorem",
  "lexical_name": "hasSum_full_centered_taylor",
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
  "slug": "hassum-full-centered-taylor--261ce79b0c2bc9a2e020bc7f",
  "source": {
    "blob": "4831fdc3947eb8752c9b84c31cc345e5a4599d6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 125,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/XiTaylorTransport/Variantcc344e3cc7036f14db5c8940f284951b7c090481b037d055ffb90008ecb3446c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:261ce79b0c2bc9a2e020bc7ff2e00dfba4dfcbcbe72e7f4fbdc1199a0d05fa50",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/XiTaylorTransport/Variantcc344e3cc7036f14db5c8940f284951b7c090481b037d055ffb90008ecb3446c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ceb816d6-386e-0569-3fe5-2ce47720b983`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasSum_full_centered_taylor (u : ℂ) :
    HasSum (fun n : ℕ => iteratedDeriv n xi (1 / 2) / (n.factorial : ℂ) * u ^ n)
      (xi (1 / 2 + u)) := by
  have h := Complex.hasSum_taylorSeries_of_entire differentiable_xi
    (1 / 2) (1 / 2 + u)
  apply h.congr_fun
  intro n
  simp only [add_sub_cancel_left, smul_eq_mul, div_eq_mul_inv]
  ring

/-- The even-index embedding, whose complement consists exactly of zero Taylor terms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/XiTaylorTransport/Variantcc344e3cc7036f14db5c8940f284951b7c090481b037d055ffb90008ecb3446c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/XiTaylorTransport/Variantcc344e3cc7036f14db5c8940f284951b7c090481b037d055ffb90008ecb3446c.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4831fdc3947eb8752c9b84c31cc345e5a4599d6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
