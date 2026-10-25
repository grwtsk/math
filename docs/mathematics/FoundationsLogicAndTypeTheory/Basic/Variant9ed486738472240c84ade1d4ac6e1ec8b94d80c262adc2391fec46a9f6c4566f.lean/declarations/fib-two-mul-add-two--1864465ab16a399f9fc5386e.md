# fib_two_mul_add_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d07dd826-b4db-0759-7207-5518a829deeb",
  "kind": "theorem",
  "lexical_name": "fib_two_mul_add_two",
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
  "slug": "fib-two-mul-add-two--1864465ab16a399f9fc5386e",
  "source": {
    "blob": "b30fb01e9f4bbf87c15ea08a1cd4e049d1647510",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 173,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variant9ed486738472240c84ade1d4ac6e1ec8b94d80c262adc2391fec46a9f6c4566f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1864465ab16a399f9fc5386e3eba2b380a69bb127b0f68fca49c3debe23c5eae",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Basic/Variant9ed486738472240c84ade1d4ac6e1ec8b94d80c262adc2391fec46a9f6c4566f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d07dd826-b4db-0759-7207-5518a829deeb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fib_two_mul_add_two (n : ℕ) :
    fib (2 * n + 2) = fib (n + 1) * (2 * fib n + fib (n + 1)) := by
  rw [fib_add_two, fib_two_mul, fib_two_mul_add_one]
  have : fib n ≤ 2 * fib (n + 1) :=
    le_trans fib_le_fib_succ (mul_comm 2 _ ▸ Nat.le_mul_of_pos_right _ two_pos)
  zify [this]
  ring

/-- Computes `(Nat.fib n, Nat.fib (n + 1))` using the binary representation of `n`.
Supports `Nat.fastFib`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Basic/Variant9ed486738472240c84ade1d4ac6e1ec8b94d80c262adc2391fec46a9f6c4566f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variant9ed486738472240c84ade1d4ac6e1ec8b94d80c262adc2391fec46a9f6c4566f.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b30fb01e9f4bbf87c15ea08a1cd4e049d1647510` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
