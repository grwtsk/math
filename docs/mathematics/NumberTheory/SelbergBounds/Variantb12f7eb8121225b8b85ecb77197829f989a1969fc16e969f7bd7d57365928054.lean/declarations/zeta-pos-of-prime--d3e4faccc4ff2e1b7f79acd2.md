# zeta_pos_of_prime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2dfc6524-e03c-1048-2386-4c67c230a009",
  "kind": "theorem",
  "lexical_name": "zeta_pos_of_prime",
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
  "slug": "zeta-pos-of-prime--d3e4faccc4ff2e1b7f79acd2",
  "source": {
    "blob": "08e79baa91f08a6ec633911aa9852c0096e8a252",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 60,
    "path": "GRWTSK/NumberTheory/SelbergBounds/Variantb12f7eb8121225b8b85ecb77197829f989a1969fc16e969f7bd7d57365928054.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3e4faccc4ff2e1b7f79acd2958673dfa2df9dfe7b29db197a61a391a5d698b9",
  "verification": {
    "reference": "docs/verification/NumberTheory/SelbergBounds/Variantb12f7eb8121225b8b85ecb77197829f989a1969fc16e969f7bd7d57365928054.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2dfc6524-e03c-1048-2386-4c67c230a009`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zeta_pos_of_prime : ∀ (p : ℕ), Nat.Prime p → (0:ℝ) < (↑ζ:ArithmeticFunction ℝ) p := by
  intro p hp
  rw [ArithmeticFunction.natCoe_apply, ArithmeticFunction.zeta_apply, if_neg (Nat.Prime.ne_zero hp)]
  norm_num

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/SelbergBounds/Variantb12f7eb8121225b8b85ecb77197829f989a1969fc16e969f7bd7d57365928054.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/SelbergBounds/Variantb12f7eb8121225b8b85ecb77197829f989a1969fc16e969f7bd7d57365928054.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08e79baa91f08a6ec633911aa9852c0096e8a252` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
