# mem_divisorsAntidiag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7cfb396e-74fa-3451-ad2b-3d7112eddb4d",
  "kind": "lemma",
  "lexical_name": "mem_divisorsAntidiag",
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
  "slug": "mem-divisorsantidiag--9dd7c5a95cb872946dd4f6ed",
  "source": {
    "blob": "5d658d1571b561289403db422386848e60253424",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 668,
    "line": 631,
    "path": "GRWTSK/Topology/GeneralTopology/Divisors/Variant80dba7b780e17ef6e3c5ea3b99c59e44eba18b496f8efe4ba1c90a807ffef58e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9dd7c5a95cb872946dd4f6ed13c68c5d7ae3a1b471735b393483b3f1dcd16bd7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Divisors/Variant80dba7b780e17ef6e3c5ea3b99c59e44eba18b496f8efe4ba1c90a807ffef58e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7cfb396e-74fa-3451-ad2b-3d7112eddb4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 631–668.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_divisorsAntidiag :
    ∀ {z} {xy : ℤ × ℤ}, xy ∈ divisorsAntidiag z ↔ xy.fst * xy.snd = z ∧ z ≠ 0
  | (n : ℕ), ((x : ℕ), (y : ℕ)) => by
    simp [divisorsAntidiag]
    norm_cast
    simp +contextual [eq_comm]
  | (n : ℕ), (negSucc x, negSucc y) => by
    simp [divisorsAntidiag, negSucc_eq, -neg_add_rev]
    norm_cast
    simp +contextual [eq_comm]
  | (n : ℕ), ((x : ℕ), negSucc y) => by
    simp [divisorsAntidiag, negSucc_eq, -neg_add_rev]
    norm_cast
    aesop
  | (n : ℕ), (negSucc x, (y : ℕ)) => by
    suffices (∃ a, (n = a * y ∧ ¬n = 0) ∧ (a:ℤ) = -1 + -↑x) ↔ (n:ℤ) = (-1 + -↑x) * ↑y ∧ ¬n = 0 by
      simpa [divisorsAntidiag, eq_comm, negSucc_eq]
    simp only [← Int.neg_add, Int.add_comm 1, Int.neg_mul, Int.add_mul]
    norm_cast
    match n with
    | 0 => simp
    | n + 1 => simp
  | .negSucc n, ((x : ℕ), (y : ℕ)) => by
    simp [divisorsAntidiag]
    norm_cast
  | .negSucc n, (negSucc x, negSucc y) => by
    simp [divisorsAntidiag, negSucc_eq, -neg_add_rev]
    norm_cast
    simp +contextual [eq_comm]
  | .negSucc n, ((x : ℕ), negSucc y) => by
    simp [divisorsAntidiag, negSucc_eq, -neg_add_rev]
    norm_cast
    aesop
  | .negSucc n, (negSucc x, (y : ℕ)) => by
    simp [divisorsAntidiag, negSucc_eq, -neg_add_rev]
    norm_cast
    simp +contextual [eq_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Divisors/Variant80dba7b780e17ef6e3c5ea3b99c59e44eba18b496f8efe4ba1c90a807ffef58e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Divisors/Variant80dba7b780e17ef6e3c5ea3b99c59e44eba18b496f8efe4ba1c90a807ffef58e.lean#L631).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d658d1571b561289403db422386848e60253424` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
