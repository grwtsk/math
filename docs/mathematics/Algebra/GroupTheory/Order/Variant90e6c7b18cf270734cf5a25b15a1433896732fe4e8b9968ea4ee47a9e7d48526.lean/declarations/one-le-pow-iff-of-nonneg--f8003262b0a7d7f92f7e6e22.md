# one_le_pow_iff_of_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:62880647-5f13-d053-2d72-84ace249ec58",
  "kind": "theorem",
  "lexical_name": "one_le_pow_iff_of_nonneg",
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
  "slug": "one-le-pow-iff-of-nonneg--f8003262b0a7d7f92f7e6e22",
  "source": {
    "blob": "d86c9d4946f41bed779d13e1990d9f6dfcadc197",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 580,
    "line": 575,
    "path": "GRWTSK/Algebra/GroupTheory/Order/Variant90e6c7b18cf270734cf5a25b15a1433896732fe4e8b9968ea4ee47a9e7d48526.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8003262b0a7d7f92f7e6e226d9f2db9a2afa4a7f795b78b3058ef32f517441a",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Order/Variant90e6c7b18cf270734cf5a25b15a1433896732fe4e8b9968ea4ee47a9e7d48526.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62880647-5f13-d053-2d72-84ace249ec58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 575–580.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem one_le_pow_iff_of_nonneg {a : R} (ha : 0 ≤ a) {n : ℕ} (hn : n ≠ 0) : 1 ≤ a ^ n ↔ 1 ≤ a := by
  refine' ⟨_, fun h => one_le_pow_of_one_le h n⟩
  rw [← not_lt, ← not_lt]
  exact mt fun h => pow_lt_one ha h hn
#align one_le_pow_iff_of_nonneg one_le_pow_iff_of_nonneg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Order/Variant90e6c7b18cf270734cf5a25b15a1433896732fe4e8b9968ea4ee47a9e7d48526.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Order/Variant90e6c7b18cf270734cf5a25b15a1433896732fe4e8b9968ea4ee47a9e7d48526.lean#L575).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d86c9d4946f41bed779d13e1990d9f6dfcadc197` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
