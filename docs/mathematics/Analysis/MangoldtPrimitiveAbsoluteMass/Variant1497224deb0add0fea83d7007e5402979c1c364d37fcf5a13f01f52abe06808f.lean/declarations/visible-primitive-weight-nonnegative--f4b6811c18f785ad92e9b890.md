# visible_primitive_weight_nonnegative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e957ef7c-39da-4fdc-107b-9e643b9a91db",
  "kind": "theorem",
  "lexical_name": "visible_primitive_weight_nonnegative",
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
  "slug": "visible-primitive-weight-nonnegative--f4b6811c18f785ad92e9b890",
  "source": {
    "blob": "0d9215002a8c434ab2a0174941c7b42e2b0934a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 30,
    "path": "GRWTSK/Analysis/MangoldtPrimitiveAbsoluteMass/Variant1497224deb0add0fea83d7007e5402979c1c364d37fcf5a13f01f52abe06808f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4b6811c18f785ad92e9b890e621b0115b2ceb49f83c2b737fc9a85c217c962b",
  "verification": {
    "reference": "docs/verification/Analysis/MangoldtPrimitiveAbsoluteMass/Variant1497224deb0add0fea83d7007e5402979c1c364d37fcf5a13f01f52abe06808f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e957ef7c-39da-4fdc-107b-9e643b9a91db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem visible_primitive_weight_nonnegative {x : ℝ} {n : ℕ} (hn : 1 ≤ n)
    (hnx : (n : ℝ) ≤ x) : 0 ≤ primitiveWeight x n := by
  have hnp : 0 < (n : ℝ) := by exact_mod_cast (by omega : 0 < n)
  have hi : 1 / Real.sqrt x ≤ 1 / Real.sqrt n :=
    one_div_le_one_div_of_le (Real.sqrt_pos.mpr hnp) (Real.sqrt_le_sqrt hnx)
  unfold primitiveWeight
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/MangoldtPrimitiveAbsoluteMass/Variant1497224deb0add0fea83d7007e5402979c1c364d37fcf5a13f01f52abe06808f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MangoldtPrimitiveAbsoluteMass/Variant1497224deb0add0fea83d7007e5402979c1c364d37fcf5a13f01f52abe06808f.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d9215002a8c434ab2a0174941c7b42e2b0934a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
