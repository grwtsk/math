# apply_mul_add_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca211987-9087-59da-5add-b30c28417626",
  "kind": "theorem",
  "lexical_name": "apply_mul_add_le",
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
  "slug": "apply-mul-add-le--ffd4ff96c12df31f557f0d7a",
  "source": {
    "blob": "ba974e053708ea5147c49299accc5efe6a358fbd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 57,
    "path": "GRWTSK/Topology/GeneralTopology/Subadditive/Variant77ead4b13ea5ab471a5b90a54cfaa7725507cd94be206f3c752fd41c96ac88fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ffd4ff96c12df31f557f0d7a19ed168333c9f6d82bb516c8c4127e65ce12f8ed",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Subadditive/Variant77ead4b13ea5ab471a5b90a54cfaa7725507cd94be206f3c752fd41c96ac88fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca211987-9087-59da-5add-b30c28417626`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem apply_mul_add_le (k n r) : u (k * n + r) ≤ k * u n + u r := by
  induction k with
  | zero => simp only [Nat.cast_zero, zero_mul, zero_add]; rfl
  | succ k IH =>
    calc
      u ((k + 1) * n + r) = u (n + (k * n + r)) := by congr 1; ring
      _ ≤ u n + u (k * n + r) := h _ _
      _ ≤ u n + (k * u n + u r) := add_le_add_left IH _
      _ = (k + 1 : ℕ) * u n + u r := by simp; ring

include h in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Subadditive/Variant77ead4b13ea5ab471a5b90a54cfaa7725507cd94be206f3c752fd41c96ac88fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Subadditive/Variant77ead4b13ea5ab471a5b90a54cfaa7725507cd94be206f3c752fd41c96ac88fb.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba974e053708ea5147c49299accc5efe6a358fbd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
