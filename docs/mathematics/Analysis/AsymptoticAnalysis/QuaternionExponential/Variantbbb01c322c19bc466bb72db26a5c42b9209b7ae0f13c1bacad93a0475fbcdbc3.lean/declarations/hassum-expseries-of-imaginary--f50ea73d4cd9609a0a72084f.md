# hasSum_expSeries_of_imaginary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c202556f03cf720d7ea96de8aec8acfd34b8cc19",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 79,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bbb01c322c19bc466bb72db26a5c42b9209b7ae0f13c1bacad93a0475fbcdbc3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:44dad34d-fdd1-e2e3-6670-c9cae73ce0ed",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6b8e8f53-e7f3-57e4-d476-1f145d80e52f",
  "kind": "theorem",
  "lexical_name": "hasSum_expSeries_of_imaginary",
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
  "slug": "hassum-expseries-of-imaginary--f50ea73d4cd9609a0a72084f",
  "source": {
    "blob": "c202556f03cf720d7ea96de8aec8acfd34b8cc19",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 79,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/QuaternionExponential/Variantbbb01c322c19bc466bb72db26a5c42b9209b7ae0f13c1bacad93a0475fbcdbc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f50ea73d4cd9609a0a72084f1a4af2e62127ca8c1099eef35379161295f85445",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/QuaternionExponential/Variantbbb01c322c19bc466bb72db26a5c42b9209b7ae0f13c1bacad93a0475fbcdbc3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b8e8f53-e7f3-57e4-d476-1f145d80e52f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasSum_expSeries_of_imaginary {q : Quaternion ℝ} (hq : q.re = 0) {c s : ℝ}
    (hc : HasSum (fun n => (-1 : ℝ) ^ n * ‖q‖ ^ (2 * n) / (2 * n)!) c)
    (hs : HasSum (fun n => (-1 : ℝ) ^ n * ‖q‖ ^ (2 * n + 1) / (2 * n + 1)!) s) :
    HasSum (fun n => expSeries ℝ (Quaternion ℝ) n fun _ => q) (↑c + (s / ‖q‖) • q) := by
  replace hc := hasSum_coe.mpr hc
  replace hs := (hs.div_const ‖q‖).smul_const q
  refine HasSum.even_add_odd ?_ ?_
  · convert hc using 1
    ext n : 1
    rw [expSeries_even_of_imaginary hq]
  · convert hs using 1
    ext n : 1
    rw [expSeries_odd_of_imaginary hq]

/-- The closed form for the quaternion exponential on imaginary quaternions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/QuaternionExponential/Variantbbb01c322c19bc466bb72db26a5c42b9209b7ae0f13c1bacad93a0475fbcdbc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/QuaternionExponential/Variantbbb01c322c19bc466bb72db26a5c42b9209b7ae0f13c1bacad93a0475fbcdbc3.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c202556f03cf720d7ea96de8aec8acfd34b8cc19` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
