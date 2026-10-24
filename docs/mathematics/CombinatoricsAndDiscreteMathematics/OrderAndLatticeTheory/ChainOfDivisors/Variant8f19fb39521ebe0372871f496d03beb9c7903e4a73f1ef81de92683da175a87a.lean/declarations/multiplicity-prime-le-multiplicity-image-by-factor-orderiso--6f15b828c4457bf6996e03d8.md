# multiplicity_prime_le_multiplicity_image_by_factor_orderIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ce0ff1cd269a361b949443ad25be5c6e6d1d8f23",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 324,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8f19fb39521ebe0372871f496d03beb9c7903e4a73f1ef81de92683da175a87a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:59063166-7198-f485-8b19-39aa765f6634",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b50c7d0b-9e43-13c4-8e25-b4e94f317879",
  "kind": "theorem",
  "lexical_name": "multiplicity_prime_le_multiplicity_image_by_factor_orderIso",
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
  "slug": "multiplicity-prime-le-multiplicity-image-by-factor-orderiso--6f15b828c4457bf6996e03d8",
  "source": {
    "blob": "ce0ff1cd269a361b949443ad25be5c6e6d1d8f23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 324,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant8f19fb39521ebe0372871f496d03beb9c7903e4a73f1ef81de92683da175a87a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f15b828c4457bf6996e03d8d9deae8e91fe2b1202e5d37f9c7f639e97c280e5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant8f19fb39521ebe0372871f496d03beb9c7903e4a73f1ef81de92683da175a87a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b50c7d0b-9e43-13c4-8e25-b4e94f317879`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 324–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem multiplicity_prime_le_multiplicity_image_by_factor_orderIso [DecidableEq (Associates M)]
    {m p : Associates M} {n : Associates N} (hp : p ∈ normalizedFactors m)
    (d : Set.Iic m ≃o Set.Iic n) :
    multiplicity p m ≤ multiplicity (↑(d ⟨p, dvd_of_mem_normalizedFactors hp⟩)) n := by
  by_cases hn : n = 0
  · simp [hn]
  by_cases hm : m = 0
  · simp [hm] at hp
  rw [←
    PartENat.natCast_get
      (finite_iff_dom.1 <| finite_prime_left (prime_of_normalized_factor p hp) hm),
    ← pow_dvd_iff_le_multiplicity]
  exact pow_image_of_prime_by_factor_orderIso_dvd hn hp d (pow_multiplicity_dvd _)
#align multiplicity_prime_le_multiplicity_image_by_factor_order_iso multiplicity_prime_le_multiplicity_image_by_factor_orderIso

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant8f19fb39521ebe0372871f496d03beb9c7903e4a73f1ef81de92683da175a87a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant8f19fb39521ebe0372871f496d03beb9c7903e4a73f1ef81de92683da175a87a.lean#L324).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce0ff1cd269a361b949443ad25be5c6e6d1d8f23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
