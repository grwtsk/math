# _root_.GRWTSK.NumberTheory.ElementaryNumberTheory.Val.Variant9f9fa80f8f9a21c37a2b327923224c78d56d0247cb5df987709e1975c0d27186.Nat.le_div_two_iff_mul_two_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e23ee1e8-5b09-5852-a18a-4934f66144c1",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.NumberTheory.ElementaryNumberTheory.Val.Variant9f9fa80f8f9a21c37a2b327923224c78d56d0247cb5df987709e1975c0d27186.Nat.le_div_two_iff_mul_two_le",
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
  "slug": "root-grwtsk-numbertheory-elementarynumbertheory-val-variant9f9fa80f8f9a2--d780e5fc435c52c61bee0fcd",
  "source": {
    "blob": "c1d2973d2dd49d6121053b8c3457cdc768a6666c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 920,
    "line": 917,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variantb206b774ad66eedd213e02e735b4e4c581517e4bf0337faea3fd4e40c54a2e5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d780e5fc435c52c61bee0fcdb0fbc78fd4c4ed890080ea7966a47152a1586c1f",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variantb206b774ad66eedd213e02e735b4e4c581517e4bf0337faea3fd4e40c54a2e5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e23ee1e8-5b09-5852-a18a-4934f66144c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 917–920.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.NumberTheory.ElementaryNumberTheory.Val.Variant9f9fa80f8f9a21c37a2b327923224c78d56d0247cb5df987709e1975c0d27186.Nat.le_div_two_iff_mul_two_le {n m : ℕ} : m ≤ n / 2 ↔ (m : ℤ) * 2 ≤ n := by
  rw [Nat.le_div_iff_mul_le zero_lt_two, ← Int.ofNat_le, Int.ofNat_mul, Nat.cast_two]
#align nat.le_div_two_iff_mul_two_le Nat.le_div_two_iff_mul_two_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variantb206b774ad66eedd213e02e735b4e4c581517e4bf0337faea3fd4e40c54a2e5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variantb206b774ad66eedd213e02e735b4e4c581517e4bf0337faea3fd4e40c54a2e5d.lean#L917).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1d2973d2dd49d6121053b8c3457cdc768a6666c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
