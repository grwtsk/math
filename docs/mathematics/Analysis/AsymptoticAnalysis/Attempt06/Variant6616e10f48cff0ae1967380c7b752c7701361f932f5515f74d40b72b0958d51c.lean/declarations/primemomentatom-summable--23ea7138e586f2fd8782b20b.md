# primeMomentAtom_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb583dc9-34fb-fef1-0a2c-d1563fe3f912",
  "kind": "theorem",
  "lexical_name": "primeMomentAtom_summable",
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
  "slug": "primemomentatom-summable--23ea7138e586f2fd8782b20b",
  "source": {
    "blob": "5d1b6dcdde921d817df81804e864bfd7c2bc796f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 117,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Attempt06/Variant6616e10f48cff0ae1967380c7b752c7701361f932f5515f74d40b72b0958d51c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23ea7138e586f2fd8782b20b6ed4f77fe9cbe61025cc432549924bc076929dc4",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Attempt06/Variant6616e10f48cff0ae1967380c7b752c7701361f932f5515f74d40b72b0958d51c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb583dc9-34fb-fef1-0a2c-d1563fe3f912`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeMomentAtom_summable (r : ℕ) :
    Summable (fun pk : Nat.Primes×ℕ => primeMomentAtom r pk.1 pk.2) := by
  have hs := (prime_outerWeight_summable r).mul_of_nonneg (exponentWeight_summable r)
    (fun p => outerWeight_nonneg r p.val) (exponentWeight_nonneg r)
  apply Summable.of_nonneg_of_le (fun pk : Nat.Primes×ℕ => momentAtom_nonneg r pk.1.val pk.2)
    (fun pk : Nat.Primes×ℕ => momentAtom_le_product r pk.1.val pk.2 pk.1.property.two_le) hs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Attempt06/Variant6616e10f48cff0ae1967380c7b752c7701361f932f5515f74d40b72b0958d51c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Attempt06/Variant6616e10f48cff0ae1967380c7b752c7701361f932f5515f74d40b72b0958d51c.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d1b6dcdde921d817df81804e864bfd7c2bc796f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
