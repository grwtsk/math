# count_prime_83_le_22

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dfbe3860-2680-1971-be1b-df1b1bd6eb5f",
  "kind": "theorem",
  "lexical_name": "count_prime_83_le_22",
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
  "slug": "count-prime-83-le-22--d1ccc05812033be2925cc1f8",
  "source": {
    "blob": "ee4f3f12029edb8244fe77be4224e23aa79911ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 71,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeTables/Variant290effb9bab5d8ef48dec8cf6452cb38af898e8b9e9cc528f512395ed6c12ee2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1ccc05812033be2925cc1f845f2ddbaa67f26b3c198e6ebfa9e3850807ad25d",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/PrimeTables/Variant290effb9bab5d8ef48dec8cf6452cb38af898e8b9e9cc528f512395ed6c12ee2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dfbe3860-2680-1971-be1b-df1b1bd6eb5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem count_prime_83_le_22 : Nat.count Nat.Prime 83 ≤ 22 := by simp only [count_ofNat]; norm_num
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/PrimeTables/Variant290effb9bab5d8ef48dec8cf6452cb38af898e8b9e9cc528f512395ed6c12ee2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeTables/Variant290effb9bab5d8ef48dec8cf6452cb38af898e8b9e9cc528f512395ed6c12ee2.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee4f3f12029edb8244fe77be4224e23aa79911ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
