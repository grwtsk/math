# hasConstantSpeedOnWith_of_subsingleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b88f58fd-d796-3375-5072-0ce50c733c1e",
  "kind": "theorem",
  "lexical_name": "hasConstantSpeedOnWith_of_subsingleton",
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
  "slug": "hasconstantspeedonwith-of-subsingleton--b70fb37f8528c7e3ae11bdd0",
  "source": {
    "blob": "7c382920ebc71da29aa4dc644bbddc05c5dc2dde",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 75,
    "path": "GRWTSK/Analysis/ConstantSpeed/Variant265cbbf53b819c820df1e48f9cc16b0dd7f2d52aa78f8bd7942587203637b06a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b70fb37f8528c7e3ae11bdd0aa60d4b42166d9c5303967311b9772d951a290ce",
  "verification": {
    "reference": "docs/verification/Analysis/ConstantSpeed/Variant265cbbf53b819c820df1e48f9cc16b0dd7f2d52aa78f8bd7942587203637b06a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b88f58fd-d796-3375-5072-0ce50c733c1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasConstantSpeedOnWith_of_subsingleton (f : ℝ → E) {s : Set ℝ} (hs : s.Subsingleton)
    (l : ℝ≥0) : HasConstantSpeedOnWith f s l := by
  rintro x hx y hy; cases hs hx hy
  rw [eVariationOn.subsingleton f (fun y hy z hz => hs hy.1 hz.1 : (s ∩ Icc x x).Subsingleton)]
  simp only [sub_self, mul_zero, ENNReal.ofReal_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ConstantSpeed/Variant265cbbf53b819c820df1e48f9cc16b0dd7f2d52aa78f8bd7942587203637b06a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ConstantSpeed/Variant265cbbf53b819c820df1e48f9cc16b0dd7f2d52aa78f8bd7942587203637b06a.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c382920ebc71da29aa4dc644bbddc05c5dc2dde` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
