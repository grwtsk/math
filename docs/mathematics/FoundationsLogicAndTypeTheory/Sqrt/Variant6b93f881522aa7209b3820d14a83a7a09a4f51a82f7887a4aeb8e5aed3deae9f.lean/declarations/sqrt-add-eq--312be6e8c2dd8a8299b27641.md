# sqrt_add_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:deb51b93-41f2-375d-bd77-9c5456540de9",
  "kind": "theorem",
  "lexical_name": "sqrt_add_eq",
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
  "slug": "sqrt-add-eq--312be6e8c2dd8a8299b27641",
  "source": {
    "blob": "c0b22ccb3bb293061a55e98ef20b07ed2728a5b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 147,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Sqrt/Variant6b93f881522aa7209b3820d14a83a7a09a4f51a82f7887a4aeb8e5aed3deae9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:312be6e8c2dd8a8299b27641cdfa3e14c894ac5afacb10b3278b2cdfd3911ea4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Sqrt/Variant6b93f881522aa7209b3820d14a83a7a09a4f51a82f7887a4aeb8e5aed3deae9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:deb51b93-41f2-375d-bd77-9c5456540de9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sqrt_add_eq (n : ℕ) {a : ℕ} (h : a ≤ n + n) : sqrt (n * n + a) = n :=
  le_antisymm
    (le_of_lt_succ <|
      sqrt_lt.2 <| by
        rw [succ_mul, mul_succ, add_succ, add_assoc];
          exact lt_succ_of_le (Nat.add_le_add_left h _))
    (le_sqrt.2 <| Nat.le_add_right _ _)
#align nat.sqrt_add_eq Nat.sqrt_add_eq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Sqrt/Variant6b93f881522aa7209b3820d14a83a7a09a4f51a82f7887a4aeb8e5aed3deae9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Sqrt/Variant6b93f881522aa7209b3820d14a83a7a09a4f51a82f7887a4aeb8e5aed3deae9f.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0b22ccb3bb293061a55e98ef20b07ed2728a5b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
