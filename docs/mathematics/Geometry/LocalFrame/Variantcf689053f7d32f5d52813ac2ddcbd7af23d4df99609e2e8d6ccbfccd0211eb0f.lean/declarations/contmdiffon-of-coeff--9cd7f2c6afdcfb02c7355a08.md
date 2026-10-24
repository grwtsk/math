# contMDiffOn_of_coeff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:40c17706-c4d0-a742-3186-443f853eac66",
  "kind": "lemma",
  "lexical_name": "contMDiffOn_of_coeff",
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
  "slug": "contmdiffon-of-coeff--9cd7f2c6afdcfb02c7355a08",
  "source": {
    "blob": "249a23c9c37f4b144266620bcd7ea9f8eb27b350",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 259,
    "path": "GRWTSK/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9cd7f2c6afdcfb02c7355a08885ad8c263762c7baac10264a61fcea1f158767a",
  "verification": {
    "reference": "docs/verification/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40c17706-c4d0-a742-3186-443f853eac66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma contMDiffOn_of_coeff [FiniteDimensional 𝕜 F]
    (h : ∀ i, CMDiff[u] n ((LinearMap.piApply (hs.coeff i)) t)) :
    CMDiff[u] n (T% t) := by
  rcases u.eq_empty_or_nonempty with rfl | ⟨x, hx⟩; · simp
  have := fintypeOfFiniteDimensional hs hx
  have this (i) : CMDiff[u] n (T% ((LinearMap.piApply (hs.coeff i)) t • s i)) :=
    (h i).smul_section (hs.contMDiffOn i)
  have almost : CMDiff[u] n (T% (fun x ↦ ∑ i, ((LinearMap.piApply (hs.coeff i)) t) x • s i x)) :=
    .sum_section fun i _ ↦ this i
  apply almost.congr
  intro y hy
  simpa using congrArg (TotalSpace.mk' F y) (hs.coeff_sum_eq t hy)

/-- Given a local frame `s i` on a neighbourhood `u` of `x`,
if a section `t` has `C^k` coefficients at `x` w.r.t. `s i`, then `t` is `C^n` at `x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `249a23c9c37f4b144266620bcd7ea9f8eb27b350` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
