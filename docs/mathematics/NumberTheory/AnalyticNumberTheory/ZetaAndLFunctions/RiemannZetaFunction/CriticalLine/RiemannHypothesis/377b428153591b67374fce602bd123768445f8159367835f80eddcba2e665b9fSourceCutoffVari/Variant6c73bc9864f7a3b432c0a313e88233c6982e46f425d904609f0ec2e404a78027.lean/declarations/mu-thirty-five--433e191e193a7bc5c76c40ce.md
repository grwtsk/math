# mu_thirty_five

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8756a862-ba06-1f8d-f06f-55e3f7e70fbc",
  "kind": "theorem",
  "lexical_name": "mu_thirty_five",
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
  "slug": "mu-thirty-five--433e191e193a7bc5c76c40ce",
  "source": {
    "blob": "d733458ee4fd3aabddfe275f5f99dc91b270f7f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 98,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/377b428153591b67374fce602bd123768445f8159367835f80eddcba2e665b9fSourceCutoffVari/Variant6c73bc9864f7a3b432c0a313e88233c6982e46f425d904609f0ec2e404a78027.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:433e191e193a7bc5c76c40ce0a0a005dc5a3809027395a7f74618b9982557d6b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/377b428153591b67374fce602bd123768445f8159367835f80eddcba2e665b9fSourceCutoffVari/Variant6c73bc9864f7a3b432c0a313e88233c6982e46f425d904609f0ec2e404a78027.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8756a862-ba06-1f8d-f06f-55e3f7e70fbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem mu_thirty_five : moebius 35 = 1 := by
  rw [show (35 : ℕ) = 5 * 7 by rfl,
    isMultiplicative_moebius.map_mul_of_coprime (show (5 : ℕ).gcd 7 = 1 by decide)]
  norm_num [moebius_apply_prime (by norm_num : Nat.Prime 5),
    moebius_apply_prime (by norm_num : Nat.Prime 7)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/377b428153591b67374fce602bd123768445f8159367835f80eddcba2e665b9fSourceCutoffVari/Variant6c73bc9864f7a3b432c0a313e88233c6982e46f425d904609f0ec2e404a78027.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/377b428153591b67374fce602bd123768445f8159367835f80eddcba2e665b9fSourceCutoffVari/Variant6c73bc9864f7a3b432c0a313e88233c6982e46f425d904609f0ec2e404a78027.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d733458ee4fd3aabddfe275f5f99dc91b270f7f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
