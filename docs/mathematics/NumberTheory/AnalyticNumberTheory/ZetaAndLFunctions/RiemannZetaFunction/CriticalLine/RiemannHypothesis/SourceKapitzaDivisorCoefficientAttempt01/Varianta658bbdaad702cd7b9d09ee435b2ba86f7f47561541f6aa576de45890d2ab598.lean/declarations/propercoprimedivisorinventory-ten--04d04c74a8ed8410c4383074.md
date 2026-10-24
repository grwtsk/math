# properCoprimeDivisorInventory_ten

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc3262d5-94e5-ed7b-8c4b-fdba8869be58",
  "kind": "theorem",
  "lexical_name": "properCoprimeDivisorInventory_ten",
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
  "slug": "propercoprimedivisorinventory-ten--04d04c74a8ed8410c4383074",
  "source": {
    "blob": "50d71bf37ad352bf2e00cfdf32e9c3274f10998e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 106,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficientAttempt01/Varianta658bbdaad702cd7b9d09ee435b2ba86f7f47561541f6aa576de45890d2ab598.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04d04c74a8ed8410c43830748da6d6d0d26ef6816e50b8da3c5fe95f9524dedd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficientAttempt01/Varianta658bbdaad702cd7b9d09ee435b2ba86f7f47561541f6aa576de45890d2ab598.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc3262d5-94e5-ed7b-8c4b-fdba8869be58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem properCoprimeDivisorInventory_ten :
    properCoprimeDivisorInventory 10 = {2} := by
  ext d
  constructor
  · intro hd
    rcases mem_properCoprimeDivisorInventory.mp hd with ⟨hdiv, hd2, hm2, hcop⟩
    have hm5 := proper_coprime_six_ge_five hm2 hcop
    have hd5 : d * 5 ≤ 10 := by
      calc
        d * 5 ≤ d * (10 / d) := Nat.mul_le_mul_left d hm5
        _ = 10 := Nat.mul_div_cancel' (Nat.dvd_of_mem_divisors hdiv)
    have hd_eq : d = 2 := by omega
    simpa only [hd_eq, Finset.mem_singleton]
  · intro hd
    have hd_eq : d = 2 := Finset.mem_singleton.mp hd
    subst d
    norm_num [properCoprimeDivisorInventory, Nat.mem_divisors, Nat.Coprime]

/-- The closed first product contributes log two, with no missing multiplicity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficientAttempt01/Varianta658bbdaad702cd7b9d09ee435b2ba86f7f47561541f6aa576de45890d2ab598.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficientAttempt01/Varianta658bbdaad702cd7b9d09ee435b2ba86f7f47561541f6aa576de45890d2ab598.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50d71bf37ad352bf2e00cfdf32e9c3274f10998e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
