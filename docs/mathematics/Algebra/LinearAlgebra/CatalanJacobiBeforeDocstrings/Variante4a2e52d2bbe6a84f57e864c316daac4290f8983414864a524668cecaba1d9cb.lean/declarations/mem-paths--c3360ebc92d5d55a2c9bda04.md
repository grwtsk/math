# mem_paths

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f07d93e7-fd13-e3a4-2675-246f7d97831a",
  "kind": "lemma",
  "lexical_name": "mem_paths",
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
  "slug": "mem-paths--c3360ebc92d5d55a2c9bda04",
  "source": {
    "blob": "53272ffee16bf806552418c27a0d1bae7f86f7db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 81,
    "path": "GRWTSK/Algebra/LinearAlgebra/CatalanJacobiBeforeDocstrings/Variante4a2e52d2bbe6a84f57e864c316daac4290f8983414864a524668cecaba1d9cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3360ebc92d5d55a2c9bda048ca589d0ab6a692c48a4f77a0d8cef7a9418ad05",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CatalanJacobiBeforeDocstrings/Variante4a2e52d2bbe6a84f57e864c316daac4290f8983414864a524668cecaba1d9cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f07d93e7-fd13-e3a4-2675-246f7d97831a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_paths (n h : ℕ) (l : List DyckStep) :
    l ∈ paths n h ↔ l.length = n ∧ l.count D = h + l.count U ∧ Nonnegative h l := by
  induction n generalizing h l with
  | zero =>
    cases l with
    | nil => by_cases H : h = 0 <;> simp [paths, Nonnegative, H, eq_comm]
    | cons s l => by_cases H : h = 0 <;> simp [paths, H]
  | succ n ih =>
    cases h with
    | zero =>
      cases l with
      | nil => simp [paths]
      | cons s l =>
        cases s with
        | U => simpa [paths,  nonnegative_cons_U, Nat.add_comm] using ih 1 l
        | D => simp [paths,  not_nonnegative_cons_D_zero]
    | succ h =>
      cases l with
      | nil => simp [paths]
      | cons s l =>
        cases s with
        | U =>
          simp [paths,  ih, nonnegative_cons_U, Nat.add_comm, Nat.add_left_comm]
        | D =>
          simp [paths, ih, nonnegative_cons_D, Nat.add_comm, Nat.add_left_comm]
          omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CatalanJacobiBeforeDocstrings/Variante4a2e52d2bbe6a84f57e864c316daac4290f8983414864a524668cecaba1d9cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CatalanJacobiBeforeDocstrings/Variante4a2e52d2bbe6a84f57e864c316daac4290f8983414864a524668cecaba1d9cb.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53272ffee16bf806552418c27a0d1bae7f86f7db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
