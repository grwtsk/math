# add_to_nat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9404182f-d9eb-034b-bad7-5b230ed463ff",
  "kind": "theorem",
  "lexical_name": "add_to_nat",
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
  "slug": "add-to-nat--48e5b4ac95c68fba759d8ad7",
  "source": {
    "blob": "22c07f1361660c7c8cba5a397cd9c24c63c3210b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 81,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Lemmas/Variantf5d2775572bd083b56cda9d7e612f342078d14681565cd874105e12e332db297.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48e5b4ac95c68fba759d8ad7abfec4a3c4dc08a945cceee4e9dfcdc5a0720401",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Lemmas/Variantf5d2775572bd083b56cda9d7e612f342078d14681565cd874105e12e332db297.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9404182f-d9eb-034b-bad7-5b230ed463ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem add_to_nat : ∀ m n, ((m + n : PosNum) : ℕ) = m + n
  | 1, b => by rw [one_add b, succ_to_nat, add_comm, cast_one]
  | a, 1 => by rw [add_one a, succ_to_nat, cast_one]
  | bit0 a, bit0 b => (congr_arg (fun n ↦ n + n) (add_to_nat a b)).trans <| add_add_add_comm _ _ _ _
  | bit0 a, bit1 b =>
    (congr_arg (fun n ↦ (n + n) + 1) (add_to_nat a b)).trans <|
      show (a + b + (a + b) + 1 : ℕ) = a + a + (b + b + 1) by simp [add_left_comm]
  | bit1 a, bit0 b =>
    (congr_arg (fun n ↦ (n + n) + 1) (add_to_nat a b)).trans <|
      show (a + b + (a + b) + 1 : ℕ) = a + a + 1 + (b + b) by simp [add_comm, add_left_comm]
  | bit1 a, bit1 b =>
    show (succ (a + b) + succ (a + b) : ℕ) = a + a + 1 + (b + b + 1) by
      rw [succ_to_nat, add_to_nat a b]; simp [add_left_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Lemmas/Variantf5d2775572bd083b56cda9d7e612f342078d14681565cd874105e12e332db297.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Lemmas/Variantf5d2775572bd083b56cda9d7e612f342078d14681565cd874105e12e332db297.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22c07f1361660c7c8cba5a397cd9c24c63c3210b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
